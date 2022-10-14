package com.generation.loja_games.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.generation.loja_games.model.Jogos;

@Repository
public interface JogosRepository extends JpaRepository<Jogos, Long> {
	
	public List<Jogos> findAllByNomeContainingIgnoreCase(@Param("nome") String nome);
	public List<Jogos> findByValorBetween(@Param("inicio") Double inicio, @Param("fim") Double fim); // parametro para pesquisar entre valores

}
