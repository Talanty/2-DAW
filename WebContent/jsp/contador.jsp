<%@page import="modelo.Contador"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
// código Java...
if (session.getAttribute("contador") == null) {
			session.setAttribute("contador", new Contador());
			System.out.println("Creando variable de sesión contador");
}
else {
	System.out.println("Creada variable de sesión contador");

}
Contador contador = (Contador) session.getAttribute("contador");
contador.setContador(contador.getContador() + 1);

//out.write("<html><body><p> id Sesion = " + session.getId() + "</p><p>contador = " + contador.getContador() + "</p></body></html>" );
String cadena = "<p> id Sesion = " + session.getId() + "</p><p>contador = " + contador.getContador() + "</p>" ;
%>
<%=cadena %>
</body>
</html>