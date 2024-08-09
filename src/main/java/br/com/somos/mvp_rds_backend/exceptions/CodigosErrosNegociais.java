package br.com.somos.mvp_rds_backend.exceptions;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum CodigosErrosNegociais implements NegocioException.Codigo {

    FDN001("Usuário sem autorização."),

    PES001("CPF já está cadastrado para outra pessoa."),
    PES002("CNS já está cadastrado para outra pessoa."),
    PAC001("CPF já está cadastrado para outro paciente, favor realizar consulta e optar por alteração ou exclusão!"),
    PAC002("CNS já está cadastrado para outro paciente, favor realizar consulta e optar por alteração ou exclusão!"),
    PAC003("Este paciente está registrado de forma identificada e não será possível realizar atualizações."),


    END001("Dados obrigatórios do Endereço da pessoa não informado"),

    CON001("Dados obrigatórios do Contato da Pessoa não foram informados"),
    CON002("Dados obrigatórios do Contato da Unidade não foram informados"),

    KEY001("Falha ao cadastrar usuário no KEYCLOAK"),
    KEY002("Falha ao recuperar perfis do usuário no KEYCLOAK"),
    KEY003("Falha ao deletar perfil do usuário no KEYCLOAK"),
    KEY004("Falha ao recuperar perfil no KEYCLOAK"),
    KEY005("Falha ao atualizar o perfil no KEYCLOAK"),
    KEY006("Falha ao atualizar o email no KEYCLOAK"),
    KEY007("Falha ao atualizar o senha no KEYCLOAK"),

    USR001("Usuário vinculado a outra pessoa"),
    USR002("Login já utilizado"),
    USR003("Email cadastrado para outro usuário"),

    GM001("Registro não encontrado."),
    GM002("Registro já cadastrado."),
    GM003("Informação obrigatória."),
    GM004("Informação inconsistente."),
    GM005("Ações pendentes."),
    GM006("Registro em modo leitura."),

    PRF001("Perfil não localizado"),

    PLA001("Plano não localizado"),

    EMAIL001("Falha ao enviar o email de primeiro acesso");

    private final String descricao;

    @Override
    public String getValor() {
        return name();
    }
}