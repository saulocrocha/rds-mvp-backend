package br.com.somos.mvp_rds_backend.models.rds;

import br.com.somos.mvp_rds_backend.enums.SimNaoEnum;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(schema = "rds",name = "tb_usuario")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Usuario implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CD_USUARIO")
    private Integer cdUsuario;

    @Column(name = "DS_LOGIN")
    private String dsLogin;

    @Column(name = "DS_SENHA")
    private String dsSenha;

    @Column(name = "SN_ATIVO")
    private SimNaoEnum snAtivo;

    @Column(name = "DT_CRIACAO")
    private LocalDateTime dtCriacao;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CD_PLANO", referencedColumnName = "CD_PLANO")
    private Plano plano;

}
