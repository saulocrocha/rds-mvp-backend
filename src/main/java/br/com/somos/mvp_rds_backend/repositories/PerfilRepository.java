package br.com.somos.mvp_rds_backend.repositories;

import br.com.somos.mvp_rds_backend.models.rds.Perfil;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PerfilRepository extends JpaRepository<Perfil,Integer> {
}
