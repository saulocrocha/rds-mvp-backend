package br.com.somos.mvp_rds_backend.models.rds;

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

    @Column(name = "DT_CRIACAO")
    private LocalDateTime dtCriacao;

    @Column(name = "CD_CPF")
    private String cdCpf;

    @Column(name = "DS_EMAIL")
    private String dsEmail;

    @Column(name = "DT_INICIO")
    private LocalDateTime dtInicio;

    @Column(name = "DT_FIM")
    private LocalDateTime dtFim;

    @Column(name = "CD_KEYCLOAK")
    private String cdKeycloak;

}
