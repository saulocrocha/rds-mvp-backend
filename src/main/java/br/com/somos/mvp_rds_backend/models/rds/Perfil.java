package br.com.somos.mvp_rds_backend.models.rds;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;

@Entity
@Table(schema = "rds", name = "tb_perfil")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Perfil implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CD_PERFIL")
    private Integer cdPerfil;

    @Column(name = "DS_PERFIL")
    private String dsPerfil;

}
