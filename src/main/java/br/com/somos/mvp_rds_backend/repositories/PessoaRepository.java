package br.com.somos.mvp_rds_backend.repositories;

import br.com.somos.mvp_rds_backend.models.rds.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PessoaRepository extends JpaRepository<Pessoa, Integer> {
}
