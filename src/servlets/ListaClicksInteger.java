package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Click;
import modelo.ClickInteger;

@WebServlet("/ListaClicksInteger")
public class ListaClicksInteger extends HttpServlet {
	public ListaClicksInteger() {
		super();
		// TODO Auto-generated constructor stub
	}



	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		Integer contador = (Integer) sesion.getAttribute("contador");
		ArrayList<ClickInteger> clicks = (ArrayList<ClickInteger>) sesion.getAttribute("clicks");
	
		if (contador == null) { // primera vez
			contador = 0;
			clicks = new ArrayList<ClickInteger>();
		}
		contador++;
		ClickInteger click = new ClickInteger(contador);
		clicks.add(click);
		
		sesion.setAttribute("contador", contador);
		sesion.setAttribute("clicks", clicks);
	
		PrintWriter salida = response.getWriter();
		salida.write("<html><body><p> id Sesion = " + sesion.getId());
		for (ClickInteger click1 : clicks) {
			salida.write("<p> contador = " + click1.getContador() + "( " + click1.getFecha() + " )");
		}
		salida.write("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
