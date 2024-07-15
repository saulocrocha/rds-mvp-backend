package br.com.somos.mvp_rds_backend.services;

import br.com.somos.mvp_rds_backend.dto.PlanoDTO;
import br.com.somos.mvp_rds_backend.mappers.PlanoMapper;
import br.com.somos.mvp_rds_backend.repositories.PlanoRepository;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PlanoService {

    private final PlanoRepository repository;
    private final PlanoMapper mapper;
    public PlanoDTO salvarPlano(@Valid PlanoDTO planoDTO){


        var plano = mapper.toPlano(planoDTO);

        return mapper.toPlanoDto(repository.save(plano));


    }

    @Transactional
    public void deletarPlano(Integer cdPlano){

        repository.deleteById(cdPlano);

    }

    public List<PlanoDTO> listarPlanos(){

        return mapper.toPlanosDto(repository.findAll());

    }

}
