package br.com.projeto.web.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Reserva extends AbstractEntity {

	@Temporal(value = TemporalType.DATE)
	@Column(nullable = false)
	private Date dataInicial;

	@Temporal(value = TemporalType.DATE)
	@Column(nullable = false)
	private Date dataFinal;

	@Temporal(value = TemporalType.DATE)
	@Column(nullable = false)
	private Date dataCheckIn;

	@Temporal(value = TemporalType.DATE)
	@Column(nullable = false)
	private Date dataCheckOut;

	@Column(nullable = false)
	private Boolean pago;

	private Integer formaPagamento;

	@Column(nullable = false)
	private String status;

	@Column(nullable = false)
	private Double valorPago;
	
	@ManyToOne
	private Hospede hospede;
	
	@OneToMany(mappedBy="reserva")
	private List<Funcionario> funcionario;
	
	@ManyToOne
	private Quarto quarto;
	
	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(Long id) {
		this.id = id;
	}

	public Date getDataInicial() {
		return dataInicial;
	}

	public void setDataInicial(Date dataInicial) {
		this.dataInicial = dataInicial;
	}

	public Date getDataFinal() {
		return dataFinal;
	}

	public void setDataFinal(Date dataFinal) {
		this.dataFinal = dataFinal;
	}

	public Date getDataCheckIn() {
		return dataCheckIn;
	}

	public void setDataCheckIn(Date dataCheckIn) {
		this.dataCheckIn = dataCheckIn;
	}

	public Date getDataCheckOut() {
		return dataCheckOut;
	}

	public void setDataCheckOut(Date dataCheckOut) {
		this.dataCheckOut = dataCheckOut;
	}

	public Boolean getPago() {
		return pago;
	}

	public void setPago(Boolean pago) {
		this.pago = pago;
	}

	public Integer getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(Integer formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Double getValorPago() {
		return valorPago;
	}

	public void setValorPago(Double valorPago) {
		this.valorPago = valorPago;
	}

	public Hospede getHospede() {
		return hospede;
	}
	
	public void setHospede(Hospede hospede) {
		this.hospede = hospede;
	}
	
	public List<Funcionario> getFuncionario() {
		return funcionario;
	}
	
	public void setFuncionario(List<Funcionario> funcionario) {
		this.funcionario = funcionario;
	}
	
	public Quarto getQuarto() {
		return quarto;
	}
	
	public void setQuarto(Quarto quarto) {
		this.quarto = quarto;
	}
	
}
