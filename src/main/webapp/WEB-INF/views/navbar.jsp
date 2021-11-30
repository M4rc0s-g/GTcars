<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Bootstrap CSS -->
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Importamos CSS propio -->
   
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/indexStyle.css">
   
    
    <title>GT-Cars</title>
  </head>
  
  
  <body style="background-color:black">

    <!-- Barra de navegaci�n -->

 <header> 
  <nav class="navbar navbar-expand-lg navbar-dark">
 <img class="logo"  src="${pageContext.request.contextPath}/img/Logo.png">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" style= "font-size: 1.7rem;" href="${pageContext.request.contextPath}/cars">Vehículos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style= "font-size: 1.7rem;" href="${pageContext.request.contextPath}/contacto">Contacto</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style= "font-size: 1.7rem;" href="${pageContext.request.contextPath}/sobre-nosotros">Sobre nosotros</a>
      </li>
    
    </ul>
    <form style="padding-right: 2%" class="form-inline my-2 my-lg-0">
      
      
 	<c:if test="${user == null}">      <button type="button" class="btn btn-outline-success my-2 my-sm-0" data-toggle="modal" data-target="#exampleModalCenter">Login</button></c:if>
  	<c:if test="${user != null}">
				<a class="btn btn-outline-danger"
					href="${pageContext.request.contextPath}/logout">Logout</a>
			</c:if>
				<c:if test="${user != null}">
				<a class="btn btn-outline-warning"
					href="${pageContext.request.contextPath}/users">Gestión de usuarios</a>
			</c:if>
    </form>
  </div>
</nav>

<!-- INICIO VENTANA LOGIN -->
 <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Login Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <jsp:include page="login.jsp"></jsp:include>
      </div>
      </div>
    </div>
  </div>
  
  <!-- FINAL VENTANA LOGIN -->
  <!-- FINAL BARRA DE NAVEGACI�N -->
</header>
