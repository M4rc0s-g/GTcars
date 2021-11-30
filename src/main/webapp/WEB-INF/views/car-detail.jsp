<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GTcars</title>
</head>
<style>
	
	.espacio{
		
		margin-top:10.8%;
	
	}
</style>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	
<div class="espacio"></div>

<div class="container">
  <div class="row">
    <div class="col-sm">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style= "margin-top:20%;margin-bottom:20%;" src="${pageContext.request.contextPath}/img/${car.img_url1}" alt="Foto coche 1">
    </div>
    <div class="carousel-item">
      <img style= "margin-top:20%;margin-bottom:20%;"  src="${pageContext.request.contextPath}/img/${car.img_url2}" alt="Foto coche 2">
    </div>
    <div class="carousel-item">
      <img style= "margin-top:20%;margin-bottom:20%;"  src="${pageContext.request.contextPath}/img/${car.img_url3}" alt="Foto coche 3">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
    
<!--     aqui ponemos las características del coche -->

    <div class="col-sm" style= "margin-top:7%;margin-left:5%;">
       <p> <strong>Marca : </strong> ${car.make.name} </p>
       <br>
       <p> <strong>Modelo : </strong>${car.model} </p>
       <br>
       <p> <strong>Año : </strong>${car.year}</p>
       <br>
       <p> <strong>Combustible : </strong>${car.fuel}</p>
       <br>
       <p> <strong>Potencia : </strong>${car.power}</p>
      
  
    
    </div><div class="col-sm" style= "margin-top:7%;">
       
       <p> <strong>Cambio : </strong>${car.gear_type}</p>
       <br>
       <p> <strong>Número de puertas : </strong>${car.doors}</p>
       <br>
       <p> <strong>Precio : </strong>${car.price}</p>
       <br>
       <p> <strong>Kilómetros : </strong>${car.kms}</p>
  
    
    </div>
 </div>
</div>

<div class="espacio"></div>



	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>