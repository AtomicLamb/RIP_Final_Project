<%-- 
    Document   : PersonalData
    Created on : 14 Jun 2023, 08:54:03
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Refer A Friend Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container" style="height: 60%">
            <div class="cover">
                <div class="front">
                    <img src="images/referafriend.jpg" alt="">
                    <div class="text">
                        <span class="text-1">“You are your best thing.”</span>
                        <span class="text-2">— Toni Morrison</span>
                    </div>
                </div>
            </div>
            <div class="forms">
                <div class="form-content">
                    <div class="signup-form">
                        <div class="title">Refer A Friend</div>
                        <form action="HomePageServlet?submit=REFER A FRIEND" method="post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    Enter the email: <input type="email"  placeholder="Enter your email" name="email" required>
                                </div>
                                <div class="button input-box">
                                    <input type="submit" name="submit" value="REFER A FRIEND">
                                </div>
                            </div>
                        </form>
                        <form action="editorServlet" method="get">
                            <div class="button input-box">
                                <input type="submit" name="submit" value="HOME" formnovalidate>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
