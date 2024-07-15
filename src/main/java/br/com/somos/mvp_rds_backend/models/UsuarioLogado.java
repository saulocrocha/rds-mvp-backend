package br.com.somos.mvp_rds_backend.models;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class UsuarioLogado {
    private final String nomeCompleto;
    private final String primeiroNome;
    private final String ultimoNome;
    private final String login;
    private final List<String> perfils;

}
