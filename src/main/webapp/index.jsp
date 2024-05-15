<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>LISTADO DE ESTUDIANTES</title>
</head>
<body>
     <h4>SEGUNDO PARCIAL TEM-742</h4>
         <h4>Nombre: Jorge Elmer Payllo Aguilar</h4>
         <h4>Carnet: 7059307</h4>
<h2>REGISTRO DIA DEL INTERNET</h2>
<div class="container">   
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<p><a class="btn btn-succes" href="inicio?action=add">Nuevo</a></p>

<table class="table table-striped table-hover">
    <tr>
        <th>Id</th>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Seminarios</th>
        <th>Confirmado</th>
        <th>Fecha de Inscripción</th>
        <th></th>
        <th></th>
    </tr>
    <c:forEach var="estudiante" items="${estudiantes}">
        <tr>
            <td>${estudiante.id}</td>
            <td>${estudiante.nombre}</td>
            <td>${estudiante.apellidos}</td>
            <td>${estudiante.sseminarios}</td>
    <td><input type="checkbox" name="confirmado" <c:if test="${estudiante.confirmado}">checked</c:if> /></td>

            <td>${estudiante.fechaInscripcion}</td>
            <td><a class="btn btn-primary" href="inicio?action=edit&id=${estudiante.id}">Editar</a></td>
            <td><a class="btn btn-succes-danger" href="inicio?action=delete&id=${estudiante.id}" onclick="return(confirm('¿Estás seguro de eliminar este estudiante?'))">Eliminar</a></td>
        </tr>
    </c:forEach>
</table>
</div> 
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
