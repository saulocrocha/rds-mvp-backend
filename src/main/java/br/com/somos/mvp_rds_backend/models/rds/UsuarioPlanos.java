package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.models.rds.ids.UsuarioPlanosId;
import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Table(schema = "rds", name = "tb_usuario_planos")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UsuarioPlanos implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @EmbeddedId
    private UsuarioPlanosId id;

    @Column(name = "CD_PESSOA_DEPENDENTE")
    private Integer cdPessoDependente;

    @Column(name = "DT_FIM")
    private LocalDate dtFim;

}
