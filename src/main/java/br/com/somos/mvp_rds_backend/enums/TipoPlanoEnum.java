package br.com.somos.mvp_rds_backend.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;
@Getter
@AllArgsConstructor
public enum TipoPlanoEnum {

    PESSOAL("P","Pessoal"),
    PROFISSIONAL("R","Profissional"),
    TUTOR("T","Tutor");

    private final String sigla;
    private final String descricao;

    public static TipoPlanoEnum obterTipoPlanoPorSigla(String sigla) {
        return Arrays.stream(TipoPlanoEnum.values()).filter(tipoPlano -> tipoPlano.getSigla().equalsIgnoreCase(sigla))
                .findFirst().orElse(null);
    }

    public static TipoPlanoEnum obterTipoPlanoPorDescricao(String descricao) {
        return Arrays.stream(TipoPlanoEnum.values())
                .filter(tipoPlano -> tipoPlano.getDescricao().equalsIgnoreCase(descricao)).findFirst().orElse(null);
    }

}
