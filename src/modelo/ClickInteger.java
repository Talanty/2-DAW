package modelo;

import java.util.Date;

public class ClickInteger {
	private Date fecha;
	private Integer contador;
	
	public ClickInteger(Integer contador) {
		super();
		this.fecha = new Date();
		this.contador = contador;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public Integer getContador() {
		return contador;
	}
	public void setContador(Integer contador) {
		this.contador = contador;
	}
	
}
