package modelo;

import java.util.Date;

public class Click {
	private Contador contador;
	private Date fechaHora;
	public Click() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contador getContador() {
		return contador;
	}
	public void setContador(Contador contador) {
		this.contador = contador;
	}
	public Date getFechaHora() {
		return fechaHora;
	}
	public void setFechaHora(Date fechaHora) {
		this.fechaHora = fechaHora;
	}
}
