package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.models.grl.Uf;
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
public class PessoEndereco implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CD_ENDERECO")
    private Integer cdEndereco;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_PESSOA", referencedColumnName = "CD_PESSOA")
    private Pessoa pessoa;

    @Column(name = "TP_ENDERECO")
    private Integer tpEndereco;

    @Column(name = "CD_CEP")
    private String cdCep;

    @Column(name = "DS_LOGRADOURO")
    private String dsLogradouro;

    @Column(name = "NR_NUMERO")
    private String nrNumero;

    @Column(name = "DS_COMPLEMENTO")
    private String dsComplemento;

    @Column(name = "DS_BAIRRO")
    private String dsBairro;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_UF")
    private Uf uf;

    @Column(name = "CD_CIDADE")
    private String cdCidade;

    @Column(name = "NM_PAIS")
    private String nmPais;

    @Column(name = "CD_PAIS")
    private String cdPais;

    @Column(name = "DS_REGIAO")
    private String dsRegiao;

    @Column(name = "CD_POSTAL")
    private String cdPostal;

    //CRIAR ENUM
    @Column(name = "TP_LOCALIZACAO")
    private String tpLocalizacao;

}
