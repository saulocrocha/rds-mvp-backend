package br.com.somos.mvp_rds_backend.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UsuarioAutenticadoDTO {

    private String nome;
    private String login;
    private String email;
    private String token;
    private String refreshToken;

}