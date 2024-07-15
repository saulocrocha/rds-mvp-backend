package br.com.somos.mvp_rds_backend.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PlanoDTO {

    @NotNull
    private Integer cdPlano;

    @NotBlank
    private String dsPlano;

    @NotNull
    private Double vlPreco;

}
