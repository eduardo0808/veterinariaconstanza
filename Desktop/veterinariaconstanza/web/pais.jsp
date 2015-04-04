<%-- 
    Document   : pais
    Created on : 01/04/2015, 11:01:19 PM
    Author     : EDUARDO
--%>

<%@page import="org.cfg.uapa.java.veterinaria.entidades.Pais"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPais"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    List<Pais> paises = ServicioPais.getInstancia().getListadoPais();
   
%>
<h2 class="sub-header">Ciudades</h2>
<table class="table table-striped">
    <tr><th>#</th><th>Nombre</th><th>País</th></tr>    
            <c:forEach items="<%=paises%>" var="ciudad">
        <tr><td>${pais.getId()}</td><td>${pais.getDescipcion()}</td></tr>

    </c:forEach>
</table>
<a href="agregarciudad.jsp"> Agregar Ciudad</a>

        
        
        <h1>Hello World!</h1>
    </body>
</html>
