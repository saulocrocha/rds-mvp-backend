package br.com.somos.mvp_rds_backend.repositories;

import br.com.somos.mvp_rds_backend.models.rds.Plano;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlanoRepository extends JpaRepository<Plano,Integer> {
}
