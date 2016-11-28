package br.com.projeto.web.models;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Produto extends AbstractEntity {
	
	@Column(nullable = false)
	private String nome;
	
	@Column(nullable = false)
	private Double preco;
	
	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Double getPreco() {
		return preco;
	}

	public void setPreco(Double preco) {
		this.preco = preco;
	}

}
