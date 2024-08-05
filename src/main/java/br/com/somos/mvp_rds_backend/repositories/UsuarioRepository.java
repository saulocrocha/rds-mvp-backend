package br.com.somos.mvp_rds_backend.repositories;

import br.com.somos.mvp_rds_backend.models.rds.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

    Optional<Usuario> findUsuarioByDsLogin(String dsLogin);

    @Query(nativeQuery = true, value =
            """
            SELECT *
                FROM RDS.TB_USUARIO
               WHERE DS_LOGIN = :param
                  OR DS_EMAIL = :param
                  OR CD_CPF = :param
            """)
    Optional<Usuario> findUsuarioByDsLoginOrDsEmailOrCdCpf(String param);

}
