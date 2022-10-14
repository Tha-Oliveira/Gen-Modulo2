package com.generation.loja_games.model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table (name = "tb_categoria")
public class Categoria {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private String genero;
	
	@NotNull
	private String classificacao;
	
	@OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("categoria")
	private List<Jogos> jogos;
	

	public Long getId()
	{
		return id;
	}

	public void setId(Long id) 
	{
		this.id = id;
	}

	public String getGenero() 
	{
		return genero;
	}

	public void setGenero(String genero) 
	{
		this.genero = genero;
	}

	public String getClassificacao()
	{
		return classificacao;
	}

	public void setClassificacao(String classificacao) 
	{
		this.classificacao = classificacao;
	}

	public List<Jogos> getJogos() 
	{
		return jogos;
	}

	public void setJogos(List<Jogos> jogos) 
	{
		this.jogos = jogos;
	}
	

	

}
