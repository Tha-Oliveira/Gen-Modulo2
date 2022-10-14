package com.generation.farmacia.model;

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
@Table (name = "tb_categorias")
public class Categoria {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private String indicacao; //infantil ou adulto
	
	@NotNull
	private String uso; // recomendações de uso
	
	@OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL)
	@JsonIgnoreProperties("categoria")
	private List <Produto> produtos;
	

	public Long getId() 
	{
		return id;
	}

	public void setId(Long id) 
	{
		this.id = id;
	}

	public String getIndicacao() 
	{
		return indicacao;
	}

	public void setIndicacao(String indicacao) 
	{
		this.indicacao = indicacao;
	}

	public String getUso() 
	{
		return uso;
	}

	public void setUso(String uso) 
	{
		this.uso = uso;
	}

	public List<Produto> getProdutos() 
	{
		return produtos;
	}

	public void setProdutos(List<Produto> produtos) 
	{
		this.produtos = produtos;
	}
	
	

}