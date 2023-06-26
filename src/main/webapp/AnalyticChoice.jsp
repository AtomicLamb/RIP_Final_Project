<%-- 
    Document   : AnalyticChoice
    Created on : 23 Jun 2023, 09:22:19
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Analytic Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
         <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/AnalyticChoice.jpg" alt="">
        <div class="text">
          <span class="text-1">"The future belongs to those who believe in the beauty of their dreams."</span>
          <span class="text-2">-Eleanor Roosevelt</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Analytic Choice Page</div>
          <p style="color:red">Enter the start date first and end date second </p>
          <form action="editorServlet" method="post">
              <div class="input-boxes">
                 <div class="input-box">
                     <input type="number" placeholder="Enter a number from 1-30" name="analyticNum" min="1" max="30" required>
              </div>
                  <div class="input-box">
                     <input type="date" name="analyticDateStart">
              </div>
                  <div class="input-box">
                     <input type="date" name="analyticDateEnd">
              </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="Submit Analytic Choice">
                  </div>
              </div>
          </form>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>
