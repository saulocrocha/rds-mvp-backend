package br.com.somos.mvp_rds_backend.controllers;

import br.com.somos.mvp_rds_backend.dto.PlanoDTO;
import br.com.somos.mvp_rds_backend.services.PlanoService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/planos")
@Tag(name = "Planos", description = "Serviços disponíveis para gerenciamento de planos no sistema")
@RequiredArgsConstructor
@Log4j2
public class PlanosController {

    private final PlanoService service;

    @Operation(summary = "Salva o request de um plano recebido com sucesso.")
    @PostMapping(produces = "application/json")
    @ResponseStatus(code = HttpStatus.CREATED)
    @Parameter(hidden = true)
    public ResponseEntity salvar(@Valid @RequestBody
                                 @io.swagger.v3.oas.annotations.parameters.RequestBody(description = "Criar Plano.\n\n"
                                         ,required = true, content = @Content(schema = @Schema(implementation = PlanoDTO.class)))
                                 PlanoDTO planoDTO)  {

        try {

            return ResponseEntity.created(null).body(service.salvarPlano(planoDTO));

        }catch (Exception e){

            log.error("Erro ao salvar plano.", e);
            return ResponseEntity.badRequest().body(e.getMessage());
        }

    }

    @Operation(summary = "Atualiza o request de um plano recebido com sucesso.")
    @PutMapping(produces = "application/json")
    @ResponseStatus(code = HttpStatus.OK)
    @Parameter(hidden = true)
    public ResponseEntity atualizar(@Valid @RequestBody
                                 @io.swagger.v3.oas.annotations.parameters.RequestBody(description = "Criar Plano.\n\n"
                                         ,required = true, content = @Content(schema = @Schema(implementation = PlanoDTO.class)))
                                    PlanoDTO planoDTO)  {

        try {

            return ResponseEntity.ok(service.salvarPlano(planoDTO));

        }catch (Exception e){

            log.error("Erro ao atualizar plano.", e);
            return ResponseEntity.badRequest().body(e.getMessage());
        }

    }

    @Operation(summary = "Deleta o plano.")
    @DeleteMapping(value = "/{cdPlano}",produces = "application/json")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    @Parameter(hidden = true)
    public ResponseEntity deletar(@PathVariable(value = "cdPlano") Integer cdPlano)  {

        try {

            service.deletarPlano(cdPlano);

            return ResponseEntity.noContent().build();

        }catch (Exception e){

            log.error("Erro ao deletar plano.", e);
            return ResponseEntity.badRequest().body(e.getMessage());
        }

    }

    @Operation(summary = "Lista os planos cadastrados no banco de dados.")
    @GetMapping(produces = "application/json")
    @ResponseStatus(code = HttpStatus.OK)
    public ResponseEntity listar()  {

        try {

            return ResponseEntity.ok(service.listarPlanos());

        }catch (Exception e){

            log.error("Erro ao listar planos.", e);
            return ResponseEntity.badRequest().body(e.getMessage());
        }

    }

}
