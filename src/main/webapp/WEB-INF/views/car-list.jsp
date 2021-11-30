<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Car List</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Importamos CSS propio -->
<link rel="stylesheet" type="text/css" href="/css/indexStyle.css">
<title>Lista de vehículos</title>


</head>

<body>

	<!--     Incluimos la barra de navegación -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- INICIO FORMULARIO -->
	<div class="pt-5 container">
		<form:form action = "${pageContext.request.contextPath}/cars/filtered-list" method="POST" modelAttribute="car">
		<div class="form-group">
				<form:select class = "form-control" path="make"
 						 items="${carslisted}" itemLabel="make.name" itemValue="make"/> 
 						 
				
			</div>
			<div class="form-group">
<!-- 				<select class = "form-control"> -->
<!-- 					<option disabled selected>Selecciona un modelo</option> -->
<%-- 					<c:forEach items="${cars}" var ="car"> --%>
<%-- 					<option value="model">${car.model}</option> --%>
<%-- 					</c:forEach> --%>
<!-- 				</select> -->
				<form:select class = "form-control" path="model"
 						 items="${carslisted}" itemLabel="model" itemValue="model"/> 
 					</div>	 
 					<div class="form-group">	 
 				<form:select class = "form-control" path="year"
 						 items="${carslisted}" itemLabel="year" itemValue="year"/> 		 
 						 
			</div>
			
			<div class="form-group">	 
 				<form:select class = "form-control" path="fuel"
 						 items="${carslisted}" itemLabel="fuel" itemValue="fuel"/> 		 
 						 
			</div>
			
			<div class="form-group">
			<div class="form-check mb-2 mr-sm-2"></div>
			<button type="submit" class="btn btn-primary mb-2">Submit</button>
			</div>
		</form:form>


		<p>${NOTIFICATION}</p>

		<p>
		<c:if test="${user != null}">
				<a class="btn btn-primary"
					href="${pageContext.request.contextPath}/makes/empty">Añadir Marca</a>
			</c:if>
			<c:if test="${user != null}">
				<a class="btn btn-primary"
					href="${pageContext.request.contextPath}/cars/empty">Añadir Coche</a>
			</c:if>
			
		</p>

		<input class="form-control" id="busqueda" type="text"
			placeholder="Search..">

		<table class="table table-striped table-bordered table-ligth" style="margin-bottom: 10.5%;">
			<thead class="thead-light">
				<tr>
					<th class="text-center">Marca</th>
					<th class="text-center">Modelo</th>
					<th class="text-center">Precio</th>
					<th class="text-center">Kms</th>
					<th class="text-center">Foto</th>
				<c:if test="${user != null}"> 
						<th class="text-center">Action</th>
					</c:if> 
				</tr>

				<c:forEach items="${cars}" var="car">

					<tbody id="tablaCoches">

						<tr class="table-light">
				
				<c:if test="${user == null}"> <td class="text-center">${car.make.name}</td>  </c:if>
				<c:if test="${user != null}">			<td class="text-center"><a
									href="${pageContext.request.contextPath}/makes/${car.make.id}">${car.make.name}</a></td> </c:if>

							<td class="text-center">${car.model}</td>
							<td class="text-center">${car.price}</td>
							<td class="text-center">${car.kms}</td>

							<td class="text-center"><a
								href="${pageContext.request.contextPath}/cars/${car.id}/car-detail">
									<img width="300" height="200" 
									 class="rounded img-fluid zoom"
									src="${pageContext.request.contextPath}/img/${car.img_url1}"
									alt="car" height="200px" width="300px">
							</a></td>



						<c:if test="${user != null}"> 
								<td><a class="btn btn-info"
									href="${pageContext.request.contextPath}/cars/${car.id}">Edit</a>
									<a class="btn btn-danger"
									href="${pageContext.request.contextPath}/cars/${car.id}/delete">Delete</a>
								</td>
						</c:if> 
						</tr>


					</tbody>

				</c:forEach>
		</table>

	</div>
	<!-- 	incluimos el footer -->
	
	<footer  class="futer bg-dark col-md-auto" style=" position: static; bottom: 0;width: 100%;">
       <div class="container">
        <div class="row justify-content-md-center"style=" margin-left:9%;">
       
        <div class="TextoFooter col-md-auto">
            
                <p style="margin-bottom:0;"><b>GTcars S.L. </b></p>
                
                <p style="margin-bottom:0;"> Calle G.Carac nº 29</p>
              
                <p style="margin-bottom:0;">®Todos los derechos reservados</p>
           
          </div>
          <div class="col-md-auto footerizquierdo">
       <a  style="font-size: 0.9rem; padding: 0%;">    <p style="margin-bottom:0;">- Aviso Legal</p></a>
         <a  style="font-size: 0.9rem; padding: 0%;">  <p style="margin-bottom:0;">- Ayuda</p></a>
          <a data-toggle="modal" data-target="#examplePriv" style="font-size: 0.9rem; padding: 0;text-decoration: none;"href=""><p>- Política de privacidad</p></a>
       </div>
         
            <div class="SosialMedia">
                <a href="http://www.linkedin.com"><img class="linkedin" src="https://img.icons8.com/color/50/000000/linkedin.png"></a>
                <a href="http://www.twitter.com"><img class="twitter" src="https://img.icons8.com/color/50/000000/twitter-squared.png"></a>
                <a href="http://www.facebook.com">
                <img class="facebook"src="https://img.icons8.com/color/50/000000/facebook.png"></a>
                <a href="http://www.instagram.com/GTcars">
                <img class="instagram" src="https://img.icons8.com/color/50/000000/instagram-new.png"></a>
           </div>
         
         </div>
       </div>
  
      </footer>
      
                   <!-- INICIO VENTANA PRIVACIDAD -->
<div class="modal" id="examplePriv" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Privacidad</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <jsp:include page="privacidad.jsp"></jsp:include>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							$("#busqueda")
									.on(
											"keyup",
											function() {
												var value = $(this).val()
														.toLowerCase();
												$("#tablaCoches tr")
														.filter(
																function() {
																	$(this)
																			.toggle(
																					$(
																							this)
																							.text()
																							.toLowerCase()
																							.indexOf(
																									value) > -1)
																});
											});
						});
	</script>
</body>
</html>