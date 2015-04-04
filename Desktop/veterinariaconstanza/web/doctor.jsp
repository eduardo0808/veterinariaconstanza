<%-- 
    Document   : doctor
    Created on : 24-mar-2015, 4:50:01
    Author     : victor
--%>

<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
$.fntBuscarEnTabla('lo que ando buscando','idDeLaTabla');
<!DOCTYPE html>
<jsp:include page="teplate/header.jsp"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%
    List<Doctor> doctores = ServicioDoctor.getInstancia().getlListadoDoctors();
   
%>

<input type="search" id="id" name="buscar" placeholder="Buscar aqu&iacute;">
<h2 class="sub-header">Doctores</h2>
<table class="table table-striped">
    <tr><th>#</th><th>Nombre</th><th>Apellido</th></tr>    
            <c:forEach items="<%=doctores%>" var="doctor">
        <tr><td>${doctor.getnombre()}</td><td>${doctor.getapellido}</td></tr>

    </c:forEach>
</table>

<title>Doctor</title>
   
    
</h1><a href="creardoctor.jsp"> Agregar Doctor</a></h1>
    



<jsp:include page="teplate/footer.jsp"/>
        