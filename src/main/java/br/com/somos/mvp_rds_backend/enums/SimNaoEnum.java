package br.com.somos.mvp_rds_backend.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum SimNaoEnum {

    SIM("S","Sim"),
    NAO("N","Não");

    private final String sigla;
    private final String descricao;

    public static SimNaoEnum obterSimNaoPorSigla(String sigla) {
        return Arrays.stream(SimNaoEnum.values()).filter(simNao -> simNao.getSigla().equalsIgnoreCase(sigla))
                .findFirst().orElse(null);
    }

    public static SimNaoEnum obterSimNaoPorDescricao(String descricao) {
        return Arrays.stream(SimNaoEnum.values())
                .filter(simNao -> simNao.getDescricao().equalsIgnoreCase(descricao)).findFirst().orElse(null);
    }

}
