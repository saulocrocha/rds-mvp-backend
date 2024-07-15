package br.com.somos.mvp_rds_backend.controllers;

import br.com.somos.mvp_rds_backend.dto.LoginDTO;
import br.com.somos.mvp_rds_backend.dto.UsuarioAutenticadoDTO;
import br.com.somos.mvp_rds_backend.services.AuthService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Objects;

@RestController
@RequestMapping(value = "api/auth", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
@Tag(name = "Autenticação")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService service;

    @PostMapping
    @ApiResponses(value = { @ApiResponse(responseCode = "200", description = "Sucesso", content = {
            @Content(mediaType = MediaType.APPLICATION_JSON_VALUE, array = @ArraySchema(schema = @Schema(implementation = UsuarioAutenticadoDTO.class))) }),
            @ApiResponse(responseCode = "401", description = "Não autorizado") })
    @Operation(summary = "Serviço responsável por autenticar o usuário")
    public ResponseEntity<UsuarioAutenticadoDTO> autenticar(@RequestBody LoginDTO login) {
        UsuarioAutenticadoDTO usuarioAutenticadoDTO = this.service.obterUsuarioAutenticadoDTO(login);
        if (Objects.nonNull(usuarioAutenticadoDTO)) {
            return new ResponseEntity<>(usuarioAutenticadoDTO, HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
    }

    @PostMapping(value = "/refreshToken")
    @ApiResponses(value = { @ApiResponse(responseCode = "200", description = "Sucesso", content = {
            @Content(mediaType = MediaType.APPLICATION_JSON_VALUE, array = @ArraySchema(schema = @Schema(implementation = UsuarioAutenticadoDTO.class))) }),
            @ApiResponse(responseCode = "401", description = "Não autorizado") })
    @Operation(summary = "Serviço responsável por atualizar token do usuário logado")
    public ResponseEntity<UsuarioAutenticadoDTO> refreshToken(@RequestBody UsuarioAutenticadoDTO dto) {
        if (Objects.nonNull(dto)) {
            UsuarioAutenticadoDTO usuarioAutenticadoDTO = this.service.atualizarToken(dto.getRefreshToken());
            if (Objects.nonNull(usuarioAutenticadoDTO)) {
                return new ResponseEntity<>(usuarioAutenticadoDTO, HttpStatus.OK);
            }
        }
        return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
    }

}
