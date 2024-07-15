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
@Table(schema = "grl", name = "tb_especialidade")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Especialidade implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "CD_ESPECIALIDADE")
    private Integer cdEspecialidade;

    @Column(name = "DS_ESPECIALIDADE")
    private String dsEspecialidade;

}
