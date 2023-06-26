<%-- 
    Document   : editPersonalData
    Created on : 13 Jun 2023, 09:12:36
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Personal Data Page</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
      <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/Edit Personal Infomation.jpg" alt="">
        <div class="text">
          <span class="text-1">"It's the possibility of having a dream come true that makes life interesting."</span>
          <span class="text-2">"The Alchemist" by Paulo Coelho</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Edit Personal Information</div>
         <form action="editPersonalInformationServlet" method="post">
              <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your first name" name="editFirstName" required>
              </div>
                <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your surname" name="editSurname" required>
              </div>
                <div class="input-box">
                <i class="fas fa-phone"></i>
               <input type="tel" placeholder="Enter phone num" pattern="[0-9]{10}" name="editPhoneNum" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Enter your email" pattern="/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/" name="editEmail" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input id="password" type="password" placeholder="Enter your password" name="editPassword" required>
              </div>
             <div class="input-box">
                <i class="fas fa-lock"></i>
                <input id="confirm_password" type="password" placeholder="Confirm Password" required>
              </div>
             <div class="button input-box">
                 <input type="submit" name="submit" value="Edit Personal Information">
              </div>    
              </div>
          </form>
          <form action="editPersonalInformationServlet" method="get">
              <div class="button input-box">
                 <input type="submit" name="submit" value="Apply for writer">
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
