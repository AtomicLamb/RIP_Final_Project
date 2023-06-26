<%-- 
    Document   : AddEditor
    Created on : 17 Jun 2023, 21:14:35
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Editor Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/AddEditor.jpg" alt="">
        <div class="text">
          <span class="text-1">"Success is not final; failure is not fatal: It is the courage to continue that counts."</span>
          <span class="text-2">-Winston S. Churchill</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Add Editor Page</div>
          <form action="adminEditorServlet" method="post">
              <div class="input-boxes">
                 <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Enter the users email" pattern="/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/" name="userEmail" required>
              </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="Add Editor">
                  </div>
              </div>
          </form>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>
