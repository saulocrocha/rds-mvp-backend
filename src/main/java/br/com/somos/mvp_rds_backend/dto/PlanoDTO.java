package br.com.somos.mvp_rds_backend.dto;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class PlanoDTO {

    private Integer cdPlano;

    private String dsPlano;

    private Double vlPreco;

    private String tpPlano;

}
