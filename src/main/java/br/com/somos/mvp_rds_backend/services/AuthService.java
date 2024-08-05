package br.com.somos.mvp_rds_backend.services;

import br.com.somos.mvp_rds_backend.dto.LoginDTO;
import br.com.somos.mvp_rds_backend.dto.UsuarioAutenticadoDTO;
import br.com.somos.mvp_rds_backend.models.rds.Usuario;
import br.com.somos.mvp_rds_backend.repositories.UsuarioRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nimbusds.jwt.SignedJWT;
import jakarta.annotation.Nullable;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.text.ParseException;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;

import static org.springframework.http.MediaType.APPLICATION_FORM_URLENCODED_VALUE;

@Slf4j
@Service
@RequiredArgsConstructor
public class AuthService {

    private static final String CONTENT_TYPE = "Content-Type";
    private static final String ACCESS_TOKEN = "access_token";
    private static final String REFRESH_TOKEN = "refresh_token";
    private static final String NAME = "name";
    private static final String PREFERRED_USERNAME = "preferred_username";
    private static final String EMAIL = "email";

    private final UsuarioRepository repository;

    @Value("${keycloak.clientId}")
    private String clientId;

    @Value("${keycloak.clientSecret}")
    private String clientSecret;

    @Value("${keycloak.realm}")
    private String realm;

    @Value("${keycloak.url}")
    private String urlKeycloak;

    public UsuarioAutenticadoDTO obterUsuarioAutenticadoDTO(LoginDTO dto) {

        OkHttpClient client = new OkHttpClient();

        Optional<Usuario> usuario = repository.findUsuarioByDsLoginOrDsEmailOrCdCpf(dto.getUser());

        String loginDB = null;
        String senhaCriptografada = null;

        if (usuario.isPresent()){

            loginDB = usuario.get().getDsLogin();

            if (BCrypt.checkpw(dto.getPassword(), usuario.get().getDsSenha())){

                senhaCriptografada = usuario.get().getDsSenha();

            }

        }

        MediaType mediaType = MediaType.parse(APPLICATION_FORM_URLENCODED_VALUE);
        String payload = String.format(
                "client_id=%s&username=%s&password=%s&grant_type=password",
                this.clientId,
                loginDB != null ? loginDB : dto.getUser(),
                senhaCriptografada != null ? senhaCriptografada : dto.getPassword());
        return montarBody(client, mediaType, payload);
    }

    @Nullable
    private UsuarioAutenticadoDTO montarBody(OkHttpClient client, MediaType mediaType, String payload) {
        RequestBody body = RequestBody.create(payload, mediaType);
        String urlKeycloak = String.format("%s/realms/%s/protocol/openid-connect/token", this.urlKeycloak, this.realm);

        final Request request = new Request.Builder()
                .url(urlKeycloak)
                .post(body)
                .addHeader(CONTENT_TYPE, APPLICATION_FORM_URLENCODED_VALUE)
                .build();

        try (Response response = client.newCall(request).execute()) {
            if (response.code() >= 200 && response.code() < 299 && response.body() != null) {
                String json = response.body().string();
                ObjectMapper mapper = new ObjectMapper();
                var map = mapper.readValue(json, Map.class);
                String token = (String) map.get(ACCESS_TOKEN);
                String refreshToken = (String) map.get(REFRESH_TOKEN);

                var decodedJWT = SignedJWT.parse(token);

                var mapUser = mapper.readValue(decodedJWT.getPayload().toString(), Map.class);
                String nomeUsuario = (String) mapUser.get(NAME);
                String login = (String) mapUser.get(PREFERRED_USERNAME);
                String email = (String) mapUser.get(EMAIL);

                return UsuarioAutenticadoDTO.builder()
                        .token(token)
                        .refreshToken(refreshToken)
                        .login(login)
                        .email(email)
                        .nome(nomeUsuario)
                        .build();
            }
            String serverMessage = "";
            ResponseBody bodied = response.body();
            if (bodied != null) {
                serverMessage = bodied.string();
            }
            log.warn("Não foi possível autenticar. Url: {} Code: {} Msg: {}",
                    urlKeycloak,
                    response.code(),
                    serverMessage);
            return null;
        } catch (IOException e) {
            log.error("Não foi possível autenticar.", e);
            return null;
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    public UsuarioAutenticadoDTO atualizarToken(String refreshTokenUsuarioLogado) {

        if (Objects.nonNull(refreshTokenUsuarioLogado) && !refreshTokenUsuarioLogado.isEmpty()
                && !refreshTokenUsuarioLogado.isBlank()) {

            OkHttpClient client = new OkHttpClient();

            MediaType mediaType = MediaType.parse(APPLICATION_FORM_URLENCODED_VALUE);
            String payload = String.format("client_id=%s&grant_type=refresh_token&refresh_token=%s&client_secret=%s",
                    this.clientId, refreshTokenUsuarioLogado, this.clientSecret);
            return montarBody(client, mediaType, payload);
        }
        return null;
    }

}