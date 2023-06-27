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
                        <div class="title">Add editor page</div>
                        <form action="controllerServlet" method="post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    <i class="fas fa-user"></i>
                                    <input type="text" placeholder="Enter your first name" name="editorFirstName" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-user"></i>
                                    <input type="text" placeholder="Enter your surname" name="editorSurname" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-phone"></i>
                                    <input type="tel" placeholder="Enter your phone number" pattern="[0-9]{10}" name="editorPhoneNum" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-envelope"></i>
                                    <input type="email" placeholder="Enter your email" pattern="/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/" name="editorEmail" required>
                                </div>
                                <div class="button input-box" style="top:10px">
                                    <input type="submit" name="submit" value="ADD EDITOR">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>
    </body>
</html>
