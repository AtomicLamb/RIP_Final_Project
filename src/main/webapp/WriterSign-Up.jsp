<%-- 
    Document   : WriterSign-Up
    Created on : 12 Jun 2023, 08:42:34
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Writer Sign-Up Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
              <div class="cover">
      <div class="front">
        <img src="images/registerWriter.jpg" alt="">
        <div class="text">
          <span class="text-1">“I am not afraid of storms, for I am learning how to sail my ship.”</span>
          <span class="text-2">— Louisa May Alcott, Little Women</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Signup As Writer</div>
          <form action="controllerServlet" method="post">
              <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your first name" name="writerFirstName" required>
              </div>
                <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your surname" name="writerSurname" required>
              </div>
                <div class="input-box">
                <i class="fas fa-phone"></i>
               <input type="tel" placeholder="Enter your phone number" pattern="[0-9]{10}" name="writerPhoneNum" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Enter your email." name="writerEmail" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input id="password" type="password" placeholder="Enter your password" name="writerPassword" required>
              </div>
             <div class="input-box">
                <i class="fas fa-lock"></i>
                <input id="confirm_password" type="password" placeholder="Confirm Password" required>
              </div>
                  <div class="input-box" style="top:20px">
                      <textarea type="text" name="writerMotivation" maxlength="500" rows="4" cols="55">Enter your motivation on why you want to become a writer. You cannot go over 500 letters or spaces</textarea>
              </div>
                  <div class="button input-box" style="top:10px">
                 <input type="submit" name="submit" value="CONFIRM WRITER">
                      <input type="submit" name="submit" value="BACK TO LOGIN PAGE">        
              </div>    
              </div>
          </form>
    </div>
    </div>
    </div>
    </div>
         <script>
    var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value !== confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
    </body>
</html>
