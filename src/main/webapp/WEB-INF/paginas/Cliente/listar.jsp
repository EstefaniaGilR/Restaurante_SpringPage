<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    
        <!-- libreria JSTL Core -->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Clientes</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class="container mt-4">
	<h3>Lista de clientes</h3>
	<div class="btn-group" role="group">
		<a class="btn btn-outline-primary" href="/restaurante/index">Volver</a> <br>
		<a class="btn btn-outline-primary" href="/restaurante/cliente_registrar"> Nuevo Registro </a>
	</div>
</div>

<div class="container mt-4">

<table class="table table-striped table-hover" style="margin-top:20px; text-align:center;">
	
	
		<thead class="table-dark" >
			<tr>
				<td>ID</td>
				<td><b>Nombres</b></td>
				<td><b>Apellidos</b></td>
				<td><b>Dirección</b></td>
				<td><b>Telefono</b></td>
				<td><b>Acción</b></td>
			</tr>	
		</thead>
		
	<tbody>
		<c:forEach var="cliente" items="${bCliente}">
			<tr>
				<td>${cliente.clienteId}</td>
				<td>${cliente.nomCliente}</td>
				<td>${cliente.apeCliente}</td>
				<td>${cliente.direccion}</td>
				<td>${cliente.telefono}</td>
				<td>
					<a class="btn btn-success btn-sm" href="/restaurante/cliente_editar/${cliente.clienteId}"> Editar</a> 
					<a class="btn btn-danger btn-sm" href="/restaurante/cliente_borrar/${cliente.clienteId}">  Borrar</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
	
</table>

</div>

</body>
</html>