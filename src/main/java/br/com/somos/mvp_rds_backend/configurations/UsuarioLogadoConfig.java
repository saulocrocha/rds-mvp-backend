package br.com.somos.mvp_rds_backend.configurations;

import br.com.somos.mvp_rds_backend.models.UsuarioLogado;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.context.annotation.RequestScope;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Configuration
public class UsuarioLogadoConfig {

    public static final String COMPLETE_NAME = "name";
    public static final String FIRST_NAME = "given_name";
    public static final String LAST_NAME = "family_name";
    public static final String LOGIN = "preferred_username";
    public static final String REALM_ACCESS = "realm_access";
    public static final String ROLES = "roles";

    @Bean
    @RequestScope
    public UsuarioLogado usuarioLogado() {
        var user = SecurityContextHolder.getContext().getAuthentication();
        var principal = (Jwt) user.getPrincipal();
        String nomeCompleto = principal.getClaim(COMPLETE_NAME);
        String primeiroNome = principal.getClaim(FIRST_NAME);
        String ultimoNome = principal.getClaim(LAST_NAME);
        String login = principal.getClaim(LOGIN);
        Map<String, Object> clim = (Map<String, Object>) principal.getClaim(REALM_ACCESS);
        if (clim != null) {
            List<String> perfils = (ArrayList<String>) clim.get(ROLES);
            return new UsuarioLogado(nomeCompleto, primeiroNome, ultimoNome, login, perfils);
        }
        return new UsuarioLogado(nomeCompleto, primeiroNome, ultimoNome, login, null);
    }
}
