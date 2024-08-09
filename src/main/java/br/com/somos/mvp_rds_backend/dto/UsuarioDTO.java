package br.com.somos.mvp_rds_backend.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UsuarioDTO {

    private Integer cdUsuario;

    private String dsLogin;

    private String dsSenha;

    private LocalDateTime dtCriacao;

    private String cdCpf;

    private String dsEmail;

    private LocalDateTime dtInicio;

    private LocalDateTime dtFim;

    private String dsNomeCompleto;

    private LocalDate dtNascimento;

    private String nrTelefone;

    private List<PerfisDTO> perfis;

    private List<PlanoDTO> planos;

    private String cdConseslhoProfissional;

    private String cdUfProfissional;

    private String nmGuerraProfissional;

    private Integer cdOeProfissional;

}
