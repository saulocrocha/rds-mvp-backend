package br.com.somos.mvp_rds_backend.models.rds.ids;

import br.com.somos.mvp_rds_backend.models.rds.Plano;
import br.com.somos.mvp_rds_backend.models.rds.Usuario;
import jakarta.persistence.Column;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UsuarioPlanosId {

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_USUARIO", referencedColumnName = "CD_USUARIO")
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_PLANO", referencedColumnName = "CD_PLANO")
    private Plano plano;

    @Column(name = "DT_INICIO")
    private LocalDate dtInicio;

}
