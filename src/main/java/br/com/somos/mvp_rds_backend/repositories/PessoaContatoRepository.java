package br.com.somos.mvp_rds_backend.repositories;

import br.com.somos.mvp_rds_backend.models.rds.PessoaContato;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PessoaContatoRepository extends JpaRepository<PessoaContato, Integer> {
}
