<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   Date fecha = new Date(); 
   Random rnd = new Random();
   Integer numero = rnd.nextInt(6);
   String salida = session.getId() + " <p>" + fecha +  " <p>" + numero;
  // out.write(salida);
%>
Mi salida es .... <p>
<%=salida %>

<p> <a href="">Recargar</a>
<form>
    <input type="submit" value="Recargar" />
</form>
</body>
</html>