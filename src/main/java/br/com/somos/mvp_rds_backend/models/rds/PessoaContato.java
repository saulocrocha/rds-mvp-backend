package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.enums.SimNaoEnum;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;

@Entity
@Table(schema = "rds", name = "tb_pessoa_contato")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PessoaContato implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CD_CONTATO")
    private Integer cdContato;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_PESSOA", referencedColumnName = "CD_PESSOA")
    private Pessoa pessoa;

    @Column(name = "TP_CONTATO")
    private Integer tpContato;

    @Column(name = "DS_DESCRICAO")
    private String dsDescricao;

    @Column(name = "DS_EMAIL")
    private String dsEmail;

    @Column(name = "NR_TELEFONE")
    private String nrTelefone;

    @Column(name = "CD_PAIS")
    private String cdPais;

    @Column(name = "CD_IDD")
    private String cdIdd;

    @Column(name = "SN_WHATSAPP")
    private SimNaoEnum snWhatsapp;

}
