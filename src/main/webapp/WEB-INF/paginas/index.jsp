<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    <!-- libreria JSTL Core -->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Index</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>

	<body>

	<nav class="navbar navbar-expand-lg bg-primary">
	<div class="container">  
		<div class="logo">GGF</div>
		
		<div class="collapse navbar-collapse" >
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mx-4">
					<a class="nav-link" href="">Home</a>
				</li>
				<li class="nav-item mx-4">
					<a class="nav-link" href="/restaurante/cliente_listar">Cliente</a>
				</li>
				<li class="nav-item mx-4">
					<a class="nav-link" href="/restaurante/contacto">Contacto</a>
				</li>
			</ul>
		
		</div>
	</div>
	</nav>
	
	<section class="bg-primary">
		<div class="container">
		<div class="row">
			<div class="col-lg-6 col-sm-7 d-flex mt-5">
				<div class="align-selft-center">
						<h1 class="text-light display-4">Bienvenido</h1>
						<p class="text-light lead mt-4">Le damos el mejor servicio con la única garantia de satisfacción.</p>
				</div>
			</div>
			<div class="col-lg-5 offset-lg-1 col-sm-5 d-flex mt-5">
				<div class="align-self-center">
					<img class="img-fluid main-photo" src="<c:url value='/images/imagen.jpg'/>"/>
				</div>
			</div>
		</div>
		</div>
	</section>
	

	
	</body>
</html>






