package br.com.projeto.web.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Categoria extends AbstractEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(nullable = false)
	private String nome;
	
	@Column(nullable = false)
	private Integer capacidade;
	
	@Column(nullable = false)
	private Double valor;

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

	public Integer getCapacidade() {
		return capacidade;
	}

	public void setCapacidade(Integer capacidade) {
		this.capacidade = capacidade;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}
	
}
