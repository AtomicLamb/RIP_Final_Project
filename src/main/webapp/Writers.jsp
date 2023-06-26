<%-- 
    Document   : Writers
    Created on : 14 Jun 2023, 09:14:37
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Writers Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
              <div class="cover">
      <div class="front">
        <img src="images/writersPage.jpg" alt="">
        <div class="text" style="left: -50px">
          <span class="text-1" >The way to get started<br> is to quit talking<br>and begin doing.</span>
          <span class="text-2">-Walt Disney</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Writers Page</div>
          <form action="writerServlet" method="get">
              <div class="input-boxes">
                  <div class="button input-box">
                    <input type="submit" name="submit" value="HOME PAGE">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="VIEW STORIES">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="CREATE NEW STORY">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="VIEW DRAFTS">
                  </div>
              </div>
          </form>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>
