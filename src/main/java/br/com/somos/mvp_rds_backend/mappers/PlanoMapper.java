package br.com.somos.mvp_rds_backend.mappers;

import br.com.somos.mvp_rds_backend.dto.PlanoDTO;
import br.com.somos.mvp_rds_backend.models.rds.Plano;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.WARN, imports = { StringUtils.class })
public interface PlanoMapper {

    PlanoDTO toPlanoDto(Plano plano);

    List<PlanoDTO> toPlanosDto(List<Plano> planos);

    Plano toPlano(PlanoDTO plano);

    List<Plano> toPlanos(List<PlanoDTO> planos);


}