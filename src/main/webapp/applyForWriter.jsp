<%-- 
    Document   : applyForWriter
    Created on : 13 Jun 2023, 10:12:25
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply To Become A Writer Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
              <div class="cover">
      <div class="front">
        <img src="images/applyWriter.jpg" alt="">
        <div class="text">
          <span class="text-1">"Life itself is the most wonderful fairy tale."</span>
          <span class="text-2">-Hans Christian Andersen</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Apply For Writer</div>
          <form action="editPersonalInformationServlet" method="post">
              <div class="input-boxes">
              <div class="input-box">
                 <textarea type="text" name="motivation" rows="4" cols="55">Enter your motivation on why you want to become a writer.</textarea>
              </div>
                
             <div class="button input-box">
                 <input type="submit" name="submit" value="Confirm Writer Application">
              </div>
              </div>
          </form>
            <form action="editPersonalInformationServlet" method="get">
                <div class="button input-box">
                    <input type="submit" name="submit" value="BACK TO PROFILE">
                </div>
            </form>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>

