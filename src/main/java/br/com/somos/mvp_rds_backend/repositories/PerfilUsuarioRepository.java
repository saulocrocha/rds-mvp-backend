package br.com.somos.mvp_rds_backend.repositories;

import br.com.somos.mvp_rds_backend.models.rds.PerfilUsuario;
import br.com.somos.mvp_rds_backend.models.rds.ids.PerfilUsuarioId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PerfilUsuarioRepository extends JpaRepository<PerfilUsuario,PerfilUsuarioId> {
}
