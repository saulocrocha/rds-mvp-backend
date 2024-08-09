package br.com.somos.mvp_rds_backend.configurations;

import br.com.somos.mvp_rds_backend.security.JwtAuthConverter;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@RequiredArgsConstructor
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfiguration {

    private static final String SWAGGER = "/swagger-ui/**";
    private static final String SWAGGER_API_DOCS = "/v3/api-docs/**";
    private static final String AUTH = "/auth";
    private static final String REFRESH_TOKEN = "/refreshToken";
    private static final String API = "/api";

    private static final String USER_REGISTRATION = "/usuarios";

    private final JwtAuthConverter jwtAuthConverter;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

        http.cors().and().csrf().disable()
                .authorizeHttpRequests(authz -> authz.requestMatchers(SWAGGER).permitAll()
                        .requestMatchers(SWAGGER_API_DOCS).permitAll()
                        .requestMatchers(API + AUTH).permitAll()
                        .requestMatchers(API + USER_REGISTRATION).permitAll()
                        .requestMatchers(API + AUTH + REFRESH_TOKEN).permitAll()
                        .anyRequest().authenticated());

        http. oauth2ResourceServer().jwt().jwtAuthenticationConverter(jwtAuthConverter);
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        return http.build();
    }
}
