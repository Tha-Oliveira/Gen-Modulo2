package com.generation.loja_games.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.generation.loja_games.model.Categoria;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
	
	public List <Categoria> findAllByGeneroContainingIgnoreCase(@Param("genero") String genero);
	public List <Categoria> findAllByClassificacaoContainingIgnoreCase(@Param("classificacao") String classificacao);

}
