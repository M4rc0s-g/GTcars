 <jsp:include page="navbar.jsp"></jsp:include>

<!-- INICIO DEL FORMULARIO -->
<form class="formulario">
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputEmail4">Nombre Completo</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    
  </div>
  <div class="form-group">
    <label for="inputAddress">Email</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Asunto</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Información">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Ciudad</label>
      <input type="text" class="form-control" id="Ciudad" placeholder="Ciudad">
    </div>
    <div class="form-group col-md-6">
      <label for="inputState">País</label>
      <select id="inputState" class="form-control">
        <option selected>Seleccionar...</option>
        <option>...</option>
      </select>
    </div>
    
  </div>
  
  <button type="submit" class="btn btn-primary" >Sign in</button>
</form>

<!-- FIN DEL FORMULARIO -->

  <jsp:include page="footer.jsp"></jsp:include>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/contactoStyle.css">
 

   </body>
</html>
