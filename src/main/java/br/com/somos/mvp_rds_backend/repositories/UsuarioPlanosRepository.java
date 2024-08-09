package br.com.somos.mvp_rds_backend.repositories;

import br.com.somos.mvp_rds_backend.models.rds.UsuarioPlanos;
import br.com.somos.mvp_rds_backend.models.rds.ids.UsuarioPlanosId;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioPlanosRepository extends JpaRepository<UsuarioPlanos,UsuarioPlanosId> {
}
