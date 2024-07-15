package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.models.grl.*;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(schema = "rds", name = "tb_pessoa")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pessoa implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "CD_PESSOA")
    private Integer cdPessoa;

    @Column(name = "NM_PESSOA")
    private String nmPessoa;

    @Column(name = "NM_SOCIAL")
    private String nmSocial;

    @Column(name = "NM_MAE")
    private String nmMae;

    @Column(name = "NM_PAI")
    private String nmPai;

    @Column(name = "NM_APELIDO")
    private String nmApelido;

    @Column(name = "NM_CONJUGE")
    private String nmConjuge;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_SEXO", referencedColumnName = "CD_SEXO")
    private Sexo sexo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_RACA", referencedColumnName = "CD_RACA")
    private Raca raca;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_GENERO", referencedColumnName = "CD_GENERO")
    private Genero genero;

    @Column(name = "TP_ESTADO_CIVIL")
    private Integer tpEstadoCivil;

    @Column(name = "DT_NASCIMENTO")
    private LocalDate dtNascimento;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_NACIONALIDADE", referencedColumnName = "CD_NACIONALIDADE")
    private Nacionalidade nacionalidade;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_GRAU_INSTRUCAO", referencedColumnName = "CD_GRAU_INSTRUCAO")
    private GrauInstrucao grauInstrucao;

    @Column(name = "NR_RG")
    private Integer nrRg;

    @Column(name = "DS_ORGAO_EMISSOR")
    private String dsOrgaoEmissor;

    @Column(name = "CD_UF")
    private String cdUf;

    @Column(name = "DT_EMISSAO")
    private LocalDate dtEmissao;

    @Column(name = "NR_CPF")
    private String nrCpf;

    @Column(name = "CD_CNS")
    private String cdCns;

    @Column(name = "CD_PRONTUARIO")
    private Integer cdProntuario;

    @Column(name = "TP_SANGUINEO")
    private String tpSanguineo;

    @Column(name = "CD_RELIGIAO")
    private Integer cdReligiao;

    @Column(name = "DT_CADASTRO")
    private LocalDateTime dtCadastro;

    @Column(name = "CD_CONJUGE")
    private Integer cdConjuge;

    @Column(name = "CD_RESPONSAVEL")
    private Integer cdResponsavel;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_USUARIO", referencedColumnName = "CD_USUARIO")
    private Usuario usuario;

}