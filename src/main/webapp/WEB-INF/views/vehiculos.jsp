 <jsp:include page="navbar.jsp"></jsp:include>


   
    <!-- INICIO FORMULARIO -->
    

<form style="width:30%; text-align:center; margin:0 auto; margin-top:5%;">

    <div class="form-group">
        <label class="control-label" style="color:white; ">Modelo</label>
        <select class="form-control">
        <option disabled selected>Selecciona un modelo</option>
            <option value="model">modelo1</option>
        </select>                    
    </div>    

    <div class="form-group"> 
        <label class="control-label" style="color:white;">Marca</label>
         <select class="form-control">
           <option disabled selected>Selecciona una marca</option>
            <option value="make">marca1</option>
        </select>   
    </div>                    
                            
    <div class="form-group"> 
        <label class="control-label" style="color:white; ">Año</label>
        <input type="text" class="form-control" name="year" placeholder="Año de fabricación...">
    </div>    

    <div class="form-group"> 
        <label for="city_id" class="control-label" style="color:white; ">Precio</label>
        <input type="text" class="form-control" name=price placeholder="Precio en euros...">
    </div>                                    
                            
    <div class="form-group"> <!-- State Button -->
        <label  class="control-label" style="color:white; ">Combustible</label>
        <select class="form-control">
        <option disabled selected>Selecciona un tipo de combustible...</option>
            <option value="fuel">combustible1</option>
        </select>                    
    </div>
    
     <div class="col text-center"> <!-- Submit Button -->
        <button type="submit" class="btn btn-primary ">Buscar</button>
    </div>    
    
</form>
   

   <!-- FINAL FORMULARIO -->
 

    <jsp:include page="footer.jsp"></jsp:include>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
     


   </body>
</html>
