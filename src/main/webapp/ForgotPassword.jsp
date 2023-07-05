<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 01/07/2023
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container" style="height: 60%">
            <div class="cover">
                <div class="front">
                    <img src="images/forgetpassword.jpg" alt="">
                    <div class="text">
                        <span class="text-1">"Aim for the moon. If you miss, you may hit a star."</span>
                        <span class="text-2">— W. Clement Stone</span>
                    </div>
                </div>
            </div>
            <div class="forms">
                <div class="form-content">
                    <div class="signup-form">
                        <div class="title">Forgot Password?</div>
                        <form action="HomePageServlet?submit=SEND" method="post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    Enter your email: <input type="email" placeholder="Enter your email" name="email" required>
                                </div>
                                <div class="input-box">
                                    Enter your phone number: <input type="tel" placeholder="Enter your phone number" pattern="[0-9]{10}" name="number" required>
                                </div>
                                <div class="button input-box">
                                    <input type="submit" name="submit" value="SEND">
                                </div>
                            </div>
                        </form>
                        <form action="controllerServlet" method="get">
                            <div class="button input-box">
                                <input type="submit" name="submit" value="BACK TO LOGIN PAGE" formnovalidate>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
