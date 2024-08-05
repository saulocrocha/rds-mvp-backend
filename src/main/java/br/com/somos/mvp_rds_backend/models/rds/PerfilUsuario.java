package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.models.rds.ids.PerfilUsuarioId;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;

@Entity
@Table(schema = "rds", name = "tb_perfil_usuario")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PerfilUsuario implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @EmbeddedId
    private PerfilUsuarioId id;

}
