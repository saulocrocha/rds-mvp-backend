package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.enums.TipoPlanoEnum;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;

@Entity
@Table(schema = "rds", name = "tb_plano")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Plano implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "CD_PLANO")
    private Integer cdPlano;

    @Column(name = "DS_PLANO")
    private String dsPlano;

    @Column(name = "VL_PRECO")
    private Double vlPreco;

    @Column(name = "TP_PLANO")
    private TipoPlanoEnum tpPlano;

}
