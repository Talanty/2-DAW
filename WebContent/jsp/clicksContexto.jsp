<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelo.Click, java.util.ArrayList, modelo.ClickContexto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style>
	.sesion{
		background-color: yellow;
	}
	
	</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>Clicks contexto y sesión <b> <%= session.getId() %> </b> </center>
<table border="1">
<%  
	ArrayList<Click> clicksSesion = (ArrayList<Click>)session.getAttribute("clicks");
    ArrayList<ClickContexto> clicksContexto = (ArrayList<ClickContexto>)application.getAttribute("clicks");
   
    for (int i=0 ; i< clicksContexto.size() ; i++) {
    	String s_contador, s_fecha;
    	if(i < clicksSesion.size()){
        	s_contador = clicksSesion.get(i).getContador().toString();
        	s_fecha    = clicksSesion.get(i).getFechaHora().toString();
    	}
    	else{
    		s_contador="";
    		s_fecha="";
    	}
        String idSesion   = clicksContexto.get(i).getIdSesion();
        int    c_contador = clicksContexto.get(i).getClick().getContador().getContador();
        String c_fecha    = clicksContexto.get(i).getClick().getFechaHora().toString();
    %>	
    	<tr>
    		<td><%=s_contador %></td>
    		<td><%=s_fecha %></td>
    		<% if (session.getId().equals(idSesion)){
    				
    		%>
    		<td class="sesion"><%=idSesion %></td>
    		<td class="sesion"><%=c_contador %></td>
    		<td class="sesion"><%=c_fecha %></td>
    		<% 
    		} else { %>
    			<td><%=idSesion %></td>
        		<td><%=c_contador %></td>
        		<td><%=c_fecha %></td>
    		<% } %>
    	</tr>
	 <% } %>
</table>
</body>
</html>