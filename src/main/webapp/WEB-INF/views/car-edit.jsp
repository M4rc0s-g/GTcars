<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="es">  

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Car edit </title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	
	<div class = "pt-5 container">
			<h2>Car ${car.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8">
				 <form:form action = "${pageContext.request.contextPath}/cars" method="POST" modelAttribute="car">
				
					
					<div class="form-group">
					<label for="name">Marca</label> <br>
						<form:select class = "form-control" path="make"
						 items="${makes}" itemLabel="name" itemValue="id"/> 
					</div>
				
					<div class = "form-group">
						<label for="name">Model</label>
						<form:input path="model" class = "form-control"/>
					</div>
				
					
					<div class="form-group">
						<label for="quantity">Year</label>
						<form:input path="year" class = "form-control"/>
					</div>
					
					<div class="form-group">
						<p>Fuel: </p>
						<select name="fuel">
   						<option selected value="0"> Choose an option</option>
       					  <option value="gasolina">Gasoline</option> 
       					  <option value="Diesel">Diesel</option> 
       					<option value="Híbrido">Híbrido</option> 
       					<option value="Eléctrico">Eléctrico</option>
   						</select>
   						
					</div>
					<div class="form-group">
						<label for="quantity">Power</label>
						<form:input path="year" class = "form-control"/>
					</div>
					<div class = "form-group">
						<label for="name">Gear Type</label>
						<form:input path="gear_type" class = "form-control"/>
						<select name="gear_type">
   						<option selected value="0"> Elija una opción</option>
       					  <option value="gasolina">Manual</option> 
       					  <option value="Diesel">Automático</option> 
   						</select>
					</div>
					<div class="form-group">
						<label for="quantity">Nº doors</label>
						<form:input path="doors" class = "form-control"/>
					</div>
					<div class="form-group">
						<label for="quantity">Price</label>
						<form:input path="price" class = "form-control"/>
					</div>
					<div class = "form-group">
						<label for="name">Img Url1</label>
						<form:input path="img_url1" class = "form-control"/>
					</div>
						<div class = "form-group">
						<label for="name">Img Url2</label>
						<form:input path="img_url2" class = "form-control"/>
					</div>
						<div class = "form-group">
						<label for="name">Img Url3</label>
						<form:input path="img_url3" class = "form-control"/>
					</div>
					<form:hidden path="id" />
				
					<a class = "btn btn-info" href = "${pageContext.request.contextPath}/cars" >Back to list</a>
					<button class = "btn btn-primary" type = "submit" >Save</button>
				</form:form>
        
			</div>
		</div>
	</div>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>