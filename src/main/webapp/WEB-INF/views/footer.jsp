<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <!-- INICIO FOOTER -->
      
      <footer  class="futer bg-dark col-md-auto" style=" position: static; bottom: 0;width: 100%;">
       <div class="container">
        <div class="row justify-content-md-center">
       
        <div class="TextoFooter col-md-auto">
            
                <p style="margin-bottom:0;"><b>GTcars S.L. </b></p>
                
                <p style="margin-bottom:0;"> Calle G.Carac nº 29</p>
              
                <p style="margin-bottom:0;">®Todos los derechos reservados</p>
           
          </div>
          <div class="col-md-auto footerizquierdo">
       <a  style="font-size: 0.9rem; padding: 0;">    <p style="margin-bottom:0;">- Aviso Legal</p></a>
         <a  style="font-size: 0.9rem; padding: 0;">  <p style="margin-bottom:0;">- Ayuda</p></a>
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



      <!-- FIN FOOTER -->
      
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
      

  
  <!-- FINAL VENTANA PRIVACIDAD -->

</body>
</html>