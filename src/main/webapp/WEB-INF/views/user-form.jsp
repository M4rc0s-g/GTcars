<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Edition | Aswesome App</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	
	<div class = "pt-5 container">
			<h2>user ${user.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8">
				 <form:form action = "${pageContext.request.contextPath}/users" method="POST" modelAttribute="user">
				
					<div class = "form-group">
					  <label for="name">Name</label>
					  <form:input path="name" class = "form-control" />
					</div>
					<div class = "form-group">
					  <label for="name">Surname</label>
					  <form:input path="surname" class = "form-control" />
					</div>
					<div class = "form-group">
					  <label for="name">Email</label>
					  <form:input path="email" class = "form-control" />
					</div>
					<div class = "form-group">
					  <label for="name">Password</label>
					  <form:input path="password" class = "form-control" />
					</div>
					<form:hidden path="id" />
				
					<a class = "btn btn-info" href = "${pageContext.request.contextPath}/users" >Back to user list</a>
					<button class = "btn btn-primary" type = "submit" >Save</button>
				</form:form>
        
			</div>
		</div>
	</div>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>