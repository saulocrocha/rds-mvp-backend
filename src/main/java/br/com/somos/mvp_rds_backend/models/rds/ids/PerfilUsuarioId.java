package br.com.somos.mvp_rds_backend.models.rds.ids;

import br.com.somos.mvp_rds_backend.models.rds.Perfil;
import br.com.somos.mvp_rds_backend.models.rds.Usuario;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PerfilUsuarioId {

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_USUARIO", referencedColumnName = "CD_USUARIO")
    private Usuario usuario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_PERFIL", referencedColumnName = "CD_PERFIL")
    private Perfil perfil;

}
