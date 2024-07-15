package br.com.somos.mvp_rds_backend.dto;

import br.com.somos.mvp_rds_backend.enums.SimNaoEnum;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UsuarioDTO {

    private Integer cdUsuario;

    private String dsLogin;

    private String dsSenha;

    private SimNaoEnum snAtivo;

    private LocalDateTime dtCriacao;

    private Integer cdPlano;

}
