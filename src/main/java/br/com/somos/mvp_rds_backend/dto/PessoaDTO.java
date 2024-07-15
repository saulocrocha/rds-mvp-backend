package br.com.somos.mvp_rds_backend.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PessoaDTO {

    private Integer cdPessoa;

    private String nmPessoa;

    private String nmSocial;

    private String nmMae;

    private String nmPai;

    private String nmApelido;

    private String nmConjuge;

    private Integer cdSexo;

    private Integer cdRaca;

    private Integer cdGenero;

    private Integer tpEstadoCivil;

    private LocalDate dtNascimento;

    private Integer cdNacionalidade;

    private Integer cdGrauInstrucao;

    private Integer nrRg;

    private String dsOrgaoEmissor;

    private String cdUf;

    private LocalDate dtEmissao;

    private String nrCpf;

    private String cdCns;

    private Integer cdProntuario;

    private String tpSanguineo;

    private Integer cdReligiao;

    private LocalDateTime dtCadastro;

    private Integer cdConjuge;

    private Integer cdResponsavel;

    private Integer cdUsuario;

}
