package br.com.somos.mvp_rds_backend.mappers;

import br.com.somos.mvp_rds_backend.dto.UsuarioDTO;
import br.com.somos.mvp_rds_backend.models.rds.Usuario;
import org.apache.commons.lang3.StringUtils;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.WARN, imports = { StringUtils.class })
public interface UsuarioMapper {

    UsuarioDTO toUsuarioDto(Usuario usuario);

    List<UsuarioDTO> toUsuariosDto(List<Usuario> usuarios);

    Usuario toUsuario(UsuarioDTO usuarioDto);

    List<Usuario> toUsuarios(List<UsuarioDTO> usuariosDto);


}