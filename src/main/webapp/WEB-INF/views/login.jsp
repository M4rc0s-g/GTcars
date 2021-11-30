<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
 <form action = "${pageContext.request.contextPath}/login" method="POST">
  <div class="form-group">
  
    <label for="InputEmail">Email</label>
    <input type="email" class="form-control" id="InputEmail" aria-describedby="" placeholder="Enter email" name="email">
   
  </div>
  <div class="form-group">
    <label for="InputPassword">Password</label>
    <input type="password" class="form-control" id="InputPassword" placeholder="Password" name="password">
  </div>
 
  <button type="submit" class="btn btn-primary btn-lg btn-block">Iniciar Sesión</button>
  <button type="submit" class="btn btn-secondary btn-lg btn-block">Volver al home</button>
  

</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>