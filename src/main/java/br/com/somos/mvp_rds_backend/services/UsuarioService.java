package br.com.somos.mvp_rds_backend.services;

import br.com.somos.mvp_rds_backend.configurations.HttpClientBuilderFactory;
import br.com.somos.mvp_rds_backend.dto.PerfisDTO;
import br.com.somos.mvp_rds_backend.dto.UsuarioDTO;
import br.com.somos.mvp_rds_backend.exceptions.CodigosErrosNegociais;
import br.com.somos.mvp_rds_backend.exceptions.NegocioException;
import br.com.somos.mvp_rds_backend.mappers.UsuarioMapper;
import br.com.somos.mvp_rds_backend.models.rds.Perfil;
import br.com.somos.mvp_rds_backend.models.rds.PerfilUsuario;
import br.com.somos.mvp_rds_backend.models.rds.Pessoa;
import br.com.somos.mvp_rds_backend.models.rds.Usuario;
import br.com.somos.mvp_rds_backend.models.rds.ids.PerfilUsuarioId;
import br.com.somos.mvp_rds_backend.repositories.PerfilRepository;
import br.com.somos.mvp_rds_backend.repositories.PerfilUsuarioRepository;
import br.com.somos.mvp_rds_backend.repositories.PessoaRepository;
import br.com.somos.mvp_rds_backend.repositories.UsuarioRepository;
import br.com.somos.mvp_rds_backend.utils.Utils;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.swagger.v3.core.util.Json;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import okhttp3.*;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.keycloak.representations.idm.CredentialRepresentation;
import org.keycloak.representations.idm.UserRepresentation;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.*;

import static org.springframework.http.MediaType.APPLICATION_FORM_URLENCODED_VALUE;
import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;

@Service
@Log4j2
@RequiredArgsConstructor
public class UsuarioService {

    private static final String GRANT_TYPE = "grant_type";
    private static final String CLIENT_ID = "client_id";
    private static final String CLIENT_SECRET = "client_secret";
    private static final String CLIENT_CREDENTIALS = "client_credentials";
    private static final String CONTENT_TYPE = "Content-Type";
    private static final String ACCESS_TOKEN = "access_token";
    private static final String AUTHORIZATION = "Authorization";
    private static final String POST = "POST";
    private static final String PUT = "PUT";
    private static final String GET = "GET";
    private static final String DELETE = "DELETE";
    private static final String ADMIN_USERS = "/admin/realms/%s/users/";
    private static final String ADMIN = "/admin/realms/%s/";
    private static final int SUCCESS = 200;
    private static final int CREATE = 201;
    private static final int NO_CONTENT = 204;
    private static final String CHARACTERS = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789";
    private static final int PASSWORD_LENGTH = 8;
    private static final String REDEFINIR_SENHA = "Redefinir Senha";

    private final UsuarioRepository repository;
    private final UsuarioMapper mapper;

    private final PessoaRepository pessoaRepository;
    private final PerfilRepository perfilRepository;
    private final PerfilUsuarioRepository perfilUsuarioRepository;

    private final HttpClientBuilderFactory factory;

    @Value("${keycloak.clientIdAdmin}")
    private String clientId;

    @Value("${keycloak.clientSecretAdmin}")
    private String clientSecret;

    @Value("${keycloak.realm}")
    private String realm;

    @Value("${keycloak.url}")
    private String urlKeycloak;


    @Transactional
    public UsuarioDTO gravar(UsuarioDTO dto) {
        Usuario usuario = this.mapper.toUsuario(dto);

        try {
            Optional<Usuario> usuarioOptional = this.repository.findUsuarioByDsLogin(dto.getDsLogin());

            Pessoa pessoa = new Pessoa();
            pessoa.setNrCpf(dto.getCdCpf());
            pessoa.setNmPessoa(dto.getDsNomeCompleto());
            pessoa.setDtNascimento(dto.getDtNascimento());

            if (usuarioOptional.isEmpty()) {

                String hashedSenha = BCrypt.hashpw(dto.getDsSenha(), BCrypt.gensalt());

                usuario.setDsLogin(dto.getDsLogin());
                usuario.setDsSenha(hashedSenha);
                usuario.setDtCriacao(LocalDateTime.now());
                usuario.setCdCpf(pessoa.getNrCpf());
                usuario.setDtInicio(LocalDateTime.now());

                log.info("===========> Iniciando salvar pessoa, {}", pessoa.getNmPessoa());
                pessoaRepository.save(pessoa);

                log.info("===========> Iniciando salvar usuário, {}", usuario.getDsLogin());
                var usuarioSalvo = this.repository.save(usuario);

                log.info("===========> Iniciando salvar perfis vinculados ao usuário ");
                log.info("===========> perfis = {} ", dto.getPerfis().stream().map(PerfisDTO::dsPerfil).toList());
                cadastrarPerfisUsuario(dto, usuarioSalvo);
                log.info("===========> Fim salvar perfis vinculados ao usuário ");

                log.info("===========> Iniciando salvar usuário no KEYCLOAK");
                String codigoKeycloak = cadastrarUsuarioKeycloak(dto, null, pessoa, usuarioSalvo.getDsSenha());
                log.info("===========> FIM salvar usuário no KEYCLOAK");

                log.info("===========> Iniciando atualização do ID KEYCLOAK no usuário ");
                usuarioSalvo.setCdKeycloak(codigoKeycloak);
                usuarioSalvo = this.repository.save(usuarioSalvo);
                log.info("===========> Fim atualização do ID KEYCLOAK no usuário ");

                log.info("===========> Fim salvar usuário, {}", usuarioSalvo.getDsLogin());

                return this.mapper.toUsuarioDto(usuarioSalvo);
            }
            throw new NegocioException("O login %s, já está vinculado a outro usuário".formatted(dto.getDsLogin()),
                    CodigosErrosNegociais.USR001);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Falha ao criar o usuário", e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private String cadastrarUsuarioKeycloak(UsuarioDTO dto, String codigoKeycloak, Pessoa pessoa, String senha)
            throws IOException {

        log.info("===========> Gerar TOKEN KEYCLOAK");

        OkHttpClient client = this.factory.okHttpClient().build();
        Response response = retornarTokenAdmin();
        Request request;

        if (response.code() == 200 && Objects.nonNull(response.body())) {

            log.info("TOKEN obtido com sucesso.");

            String token = extrairToken(response);

            var url = this.urlKeycloak + String.format(ADMIN_USERS, this.realm);

            UserRepresentation user = getUserRepresentation(dto, codigoKeycloak, pessoa, senha);
            log.info("URL: {}", url);
            var pretty = Json.pretty(user);
            var body = RequestBody.create(okhttp3.MediaType.parse("application/json"), pretty);

            request = new Request.Builder()
                    .url(url)
                    .method(POST, body)
                    .addHeader(CONTENT_TYPE, APPLICATION_JSON_VALUE)
                    .addHeader(AUTHORIZATION, String.format("Bearer %s", token))
                    .build();
            response = client.newCall(request).execute();
            if (response.code() != CREATE) {
                log.error("code={}, body={}", response.code(), response.body());
                throw new NegocioException("Falha ao salvar o usuário no KEYCLOAK", CodigosErrosNegociais.KEY001);
            }
            log.info("Usuário cadastro com sucesso no KEYCLOAK");
            return response.header("Location").substring(response.header("Location").lastIndexOf("/") + 1);
        }
        log.error("Falha ao obter o TOKEN. code={}, body={}", response.code(), response.body().string().toString());
        throw new NegocioException("Falha ao salvar o usuário no KEYCLOAK", CodigosErrosNegociais.KEY001);
    }

    private String extrairToken(Response response) throws IOException {
        var retorno = response.body().string();
        ObjectMapper mapper = new ObjectMapper();
        var map = mapper.readValue(retorno, Map.class);
        return (String) map.get(ACCESS_TOKEN);
    }


    private UserRepresentation getUserRepresentation(UsuarioDTO dto, String codigoKeycloak, Pessoa pessoa,
                                                     String senha) {
        UserRepresentation userRepresentation = new UserRepresentation();
        userRepresentation.setId(StringUtils.isBlank(codigoKeycloak) ? null : codigoKeycloak);
        userRepresentation.setUsername(dto.getDsLogin());
        userRepresentation.setFirstName(Utils.primeiroNome(pessoa.getNmPessoa()));
        userRepresentation.setLastName(Utils.ultimoNome(pessoa.getNmPessoa()));
        userRepresentation.setEmail(dto.getDsEmail());
        userRepresentation.setCredentials(Collections.singletonList(createPasswordCredentials(senha)));
        userRepresentation.setGroups(montarPerfis(dto));
        userRepresentation.setEnabled(true);
        return userRepresentation;
    }

    private UserRepresentation getUserRepresentation(UsuarioDTO dto, String codigoKeycloak, Pessoa pessoa) {
        UserRepresentation userRepresentation = new UserRepresentation();
        userRepresentation.setId(StringUtils.isBlank(codigoKeycloak) ? null : codigoKeycloak);
        userRepresentation.setUsername(dto.getDsLogin());
        userRepresentation.setFirstName(Utils.primeiroNome(pessoa.getNmPessoa()));
        userRepresentation.setLastName(Utils.ultimoNome(pessoa.getNmPessoa()));
        userRepresentation.setEmail(dto.getDsEmail());
        // userRepresentation.setCredentials(Collections.singletonList(createPasswordCredentials(criarSenhaTemporaria())));
        userRepresentation.setGroups(montarPerfis(dto));
        userRepresentation.setEnabled(true);
        return userRepresentation;
    }

    private UserRepresentation getUserRepresentation(Usuario usuario, Pessoa pessoa, String senha) {
        UserRepresentation userRepresentation = new UserRepresentation();
        userRepresentation.setId(usuario.getCdKeycloak());
        userRepresentation.setEmail(usuario.getDsEmail());
        userRepresentation.setCredentials(Collections.singletonList(createPasswordCredentials(senha)));
        return userRepresentation;
    }

    public CredentialRepresentation createPasswordCredentials(String password) {
        CredentialRepresentation passwordCredentials = new CredentialRepresentation();
        passwordCredentials.setTemporary(false);
        passwordCredentials.setType(CredentialRepresentation.PASSWORD);
        passwordCredentials.setValue(password);
        return passwordCredentials;
    }

    @NotNull
    private List<String> montarPerfis(UsuarioDTO dto) {
        return dto.getPerfis().stream().map(PerfisDTO::cdPerfil)
                .map(this.perfilRepository::findById)
                .map(Optional::orElseThrow)
                .map(Perfil::getDsPerfil)
                .toList();
    }

    private void cadastrarPerfisUsuario(UsuarioDTO dto, Usuario usuarioSalvo) {
        dto.getPerfis().forEach(perfisDTO -> {
            var perfil = this.perfilRepository.findById(perfisDTO.cdPerfil())
                    .orElseThrow(() -> new NegocioException("Perfil não localizado", CodigosErrosNegociais.PRF001));
            perfilUsuarioRepository.save(new PerfilUsuario(new PerfilUsuarioId(usuarioSalvo, perfil)));
        });
    }

    @NotNull
    private Response retornarTokenAdmin() throws IOException {
        OkHttpClient client = this.factory.okHttpClient().build();

        Map<String, String> json = new HashMap<>();

        json.put(GRANT_TYPE, CLIENT_CREDENTIALS);
        json.put(CLIENT_ID, this.clientId);
        json.put(CLIENT_SECRET, this.clientSecret);

        FormBody.Builder builder = montarRequest(json);

        RequestBody form = builder.build();

        var request = new Request.Builder()
                .url(this.urlKeycloak + "/realms/" + this.realm + "/protocol/openid-connect/token")
                .addHeader(CONTENT_TYPE, APPLICATION_FORM_URLENCODED_VALUE)
                .post(form).build();

        Response response = client.newCall(request).execute();
        return response;
    }

    public FormBody.Builder montarRequest(Map<String, String> valores) {
        FormBody.Builder builder = new FormBody.Builder();
        valores.forEach(builder::add);
        return builder;
    }

}
