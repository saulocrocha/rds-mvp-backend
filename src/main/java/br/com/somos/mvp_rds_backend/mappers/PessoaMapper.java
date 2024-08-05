package br.com.somos.mvp_rds_backend.mappers;

import org.apache.commons.lang3.StringUtils;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.WARN, imports = { StringUtils.class })
public interface PessoaMapper {
//
//    @Mapping(target = "cdPlano", source = "plano.cdPlano")
//    PessoaDTO toPessoaDto(Pessoa pessoa);
//
//    @Mapping(target = "cdPlano", source = "plano.cdPlano")
//    List<PessoaDTO> toPessoasDto(List<Pessoa> pessoas);
//
//    @Mapping(target = "plano.cdPlano", source = "cdPlano")
//    Pessoa toPessoa(PessoaDTO pessoaDto);
//
//    @Mapping(target = "plano.cdPlano", source = "cdPlano")
//    List<Pessoa> toPessoas(List<PessoaDTO> pessoasDto);


}