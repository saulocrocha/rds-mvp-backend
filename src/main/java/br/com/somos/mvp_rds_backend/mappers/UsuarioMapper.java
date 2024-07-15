package br.com.somos.mvp_rds_backend.mappers;

import br.com.somos.mvp_rds_backend.dto.UsuarioDTO;
import br.com.somos.mvp_rds_backend.models.rds.Usuario;
import org.apache.commons.lang3.StringUtils;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.WARN, imports = { StringUtils.class })
public interface UsuarioMapper {

    @Mapping(target = "cdPlano", source = "plano.cdPlano")
    UsuarioDTO toUsuarioDto(Usuario usuario);

    @Mapping(target = "cdPlano", source = "plano.cdPlano")
    List<UsuarioDTO> toUsuariosDto(List<Usuario> usuarios);

    @Mapping(target = "plano.cdPlano", source = "cdPlano")
    Usuario toUsuario(UsuarioDTO usuarioDto);

    @Mapping(target = "plano.cdPlano", source = "cdPlano")
    List<Usuario> toUsuarios(List<UsuarioDTO> usuariosDto);


}