package br.com.somos.mvp_rds_backend.exceptions;

import jakarta.validation.ConstraintViolation;
import lombok.Getter;

import java.util.Collections;
import java.util.Set;

@Getter
public class NegocioException extends RuntimeException {
    private final Codigo codigo;
    private final Set<? extends ConstraintViolation> violacoes;

    public NegocioException(String message, Codigo codigo) {
        super(message);
        this.codigo = codigo;
        this.violacoes = Collections.emptySet();
    }


    public NegocioException(Codigo codigo, Set<? extends ConstraintViolation> violacoes) {
        this.codigo = codigo;
        this.violacoes = Collections.unmodifiableSet(violacoes);
    }

    public interface Codigo {
        String getValor();

        String getDescricao();
    }
}
