package br.com.somos.mvp_rds_backend.models.grl;

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
@Table(schema = "grl", name = "tb_orgao_emissor")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Nacionalidade implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "CD_NACIONALIDADE")
    private Integer cdNacionalidade;

    @Column(name = "DS_NACIONALIDADE")
    private String dsNacionalidade;

}
