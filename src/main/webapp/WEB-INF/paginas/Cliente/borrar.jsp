<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- libreria JSTL Core -->
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
	
	<div class="container mt-4">
		<div class="col-sm-6">

				<form:form name="" method="post" modelAttribute="cliente">
			
			<div class="card">
				<div class="card-header"> 
					<h3> Eliminar cliente </h3>
				</div>
				
				<div class="card-body">
								
					<label> Nombres</label>
					<form:input type="text" class="form-control" path="nomCliente" readonly="true"/>
					<label> Apellidos</label>
					<form:input type="text" class="form-control" path="apeCliente" readonly="true"/>
					
					<p>¿Estas seguro de borrar?</p>
				</div>
				
				<div class="card-footer">							
						<button class="btn btn-default" type="submit"> Eliminar</button> 
						<a class="btn btn-default" href="/restaurante/cliente_listar">Cancelar</a>
				</div>	
	
			</div>

				
			</form:form>
			
		</div>	
	
	</div>

</body>
</html>