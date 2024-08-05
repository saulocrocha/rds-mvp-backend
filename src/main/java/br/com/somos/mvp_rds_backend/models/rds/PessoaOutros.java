package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.models.grl.Cbo;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity
@Table(schema = "rds", name = "tb_pessoa_outros")
@Data
@NoArgsConstructor
public class PessoaOutros implements Serializable {

    @Id
    @OneToOne
    @JoinColumn(name = "CD_PESSOA", referencedColumnName = "CD_PESSOA")
    private Pessoa pessoa;

    @Column(name = "TP_RESIDE_COM")
    private String tpResideCom;

    @Column(name = "DS_RESIDE_COM_INFORME")
    private String dsResideComInforme;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_CBO", referencedColumnName = "CD_CBO")
    private Cbo cbo;

    @Column(name = "SN_RESPONSAVEL_TRAB_FORA_CASA")
    private String snResponsavelTrabForaCasa;

    @Column(name = "TP_EMERGENCIA_RESPONSAVEL")
    private String tpEmergenciaResponsavel;

    @Column(name = "NM_EMERGENCIA_LIGAR_PARA")
    private String nmEmergenciaLigarPara;

    @Column(name = "NR_EMERGENCIA_DDD")
    private String nrEmergenciaDdd;

    @Column(name = "NR_EMERGENCIA_TELEFONE")
    private String nrEmergenciaTelefone;

    @Column(name = "NM_ACOMPANHADO_POR")
    private String nmAcompanhadoPor;

    @Column(name = "TP_LOCAL_ACOMPANHAMENTO")
    private String tpLocalAcompanhamento;

    @Column(name = "DS_LOCAL_ACOMPANHAMENTO")
    private String dsLocalAcompanhamento;

    @Column(name = "NM_SERVICO_SOCIAL_SAUDE")
    private String nmServicoSocialSaude;

    @Column(name = "NM_UNIDADE_EDUCACIONAL")
    private String nmUnidadeEducacional;

    @Column(name = "NM_CENTRO_REFERENCIA_ASSISTENCIA_SOCIAL")
    private String nmCentroReferenciaAssistenciaSocial;

    @Column(name = "DS_ANOTACOES_ASSISTENCIA_SOCIAL")
    private String dsAnotacoesAssistenciaSocial;

    @Column(name = "DS_ANOTACOES_EDUCACAOVIDA_ESCOLAR")
    private String dsAnotacoesEducacaoVidaEscolar;

}
