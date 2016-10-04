package modelo;

public class Contador {
	public Contador() {
		super();
		contador = 0;
		// TODO Auto-generated constructor stub
	}
	public void incrementarContador(){
		contador++;
	}
	public Contador (int valor){
		this.contador = valor;
	}

	@Override
	public String toString() {
		return "Contador [contador=" + contador + "]";
	}

	private int contador;

	public int getContador() {
		return contador;
	}

	public void setContador(int contador) {
		this.contador = contador;
	}
}
