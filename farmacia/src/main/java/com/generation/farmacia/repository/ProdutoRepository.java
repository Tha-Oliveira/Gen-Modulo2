package com.generation.farmacia.repository;

import org.springframework.stereotype.Repository;
import com.generation.farmacia.model.Produto;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long> {

	public List<Produto> findAllByNomeContainingIgnoreCase(@Param("nome") String nome);

	public List<Produto> findByValor(@Param("valor") Double valor);

}
