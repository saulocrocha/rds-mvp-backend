package br.com.somos.mvp_rds_backend.models.grl;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;

@Entity
@Table(schema = "grl", name = "tb_cidades")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cidades implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "CD_IBGE")
    private Integer cdIbge;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_UF", referencedColumnName = "CD_UF")
    private Uf uf;

    @Column(name = "DS_NOME_CIDADE")
    private String dsNomeCidade;

}
