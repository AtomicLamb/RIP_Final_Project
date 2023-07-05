<%@ page contentType = "text/html; charset=UTF-8"
         pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>RIP Landing Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container">
            <input type="checkbox" id="flip">
            <div class="cover">
                <div class="front">
                    <img src="images/frontImg.jpg" alt="">
                    <div class="text">
                        <span class="text-1">You're both the fire and the water that extinguishes it. You're the narrator, the protagonist, and the sidekick. You're the story teller and the story told. You are somebodies something, but you are also your you.</span>
                        <span class="text-2">-John-Green Turtles all the way down</span>
                    </div>
                </div>
                <div class="back">
                    <img src="images/backImg.jpg" alt="">
                    <div class="text">
                        <span class="text-1">“That’s the thing about books. They let you travel without moving your feet.”</span>
                        <span class="text-2">- Jhumpa Lahiri</span>
                    </div>
                </div>
            </div>
            <div class="forms">
                <div class="form-content">
                    <div class="login-form">
                        <div class="title">Login</div>
                        <form action="controllerServlet" method="post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    <i class="fas fa-envelope"></i>
                                    <input type="email" placeholder="Enter your email" name="loginEmail" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input type="password" placeholder="Enter your password" name="loginPassword" required>
                                </div>
                                <div class="text"><a href="ForgotPassword.jsp" style="color: #007791">Forgot password?</a></div>
                                <div class="button input-box">
                                    <input type="submit" name="submit" value="LOGIN">
                                </div>
                            </div>
                        </form>
                        <form action="controllerServlet" method="get">
                            <div class="button input-box">
                                <input type="submit" name="submit" value="CONTINUE TO HOMEPAGE" formnovalidate>
                            </div>
                        </form>
                        <div class="text sign-up-text">Don't have an account? <label for="flip">Sign-Up now</label></div>
                        <%
                            String message = (String) request.getAttribute("message");
                            if(message!=null){
                        %>
                        <p><strong style ="color:black"><%=message %></strong></p><br>
                        <%}%>
                    </div>
                    <div class="signup-form">
                        <div class="title">Sign-Up As Reader</div>
                        <form action="controllerServlet" method="post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    <i class="fas fa-user"></i>
                                    <input type="text" placeholder="Enter your first name" name="readerFirstName" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-user"></i>
                                    <input type="text" placeholder="Enter your surname" name="readerSurname" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-phone"></i>
                                    <input type="tel" placeholder="Enter your phone number" pattern="[0-9]{10}" name="readerPhoneNum" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-envelope"></i>
                                    <input type="email" placeholder="Enter your email" name="readerEmail" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input id="password" type="password" placeholder="Enter your password" name="readerPassword" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input id="confirm_password" type="password" placeholder="Confirm Password" required>
                                </div>
                                <div class="button input-box">
                                    <input type="submit" name="submit" value="CONFIRM READER">
                                </div>
                            </div>
                        </form>
                        <form action="controllerServlet" method="get">
                            <div class="button input-box">
                                <input type="submit" name="submit" value="WRITER" formnovalidate>
                            </div>
                        </form>
                        <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
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