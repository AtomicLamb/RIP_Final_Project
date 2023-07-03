<%-- 
    Document   : ManageGenres
    Created on : 17 Jun 2023, 20:43:44
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Genres Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/ManageGenres.jpg" alt="">
        <div class="text">
          <span class="text-1">"If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success."</span>
          <span class="text-2">-James Cameron</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Manage Genres Page</div>
          <form action="adminEditorServlet" method="get">
              <div class="input-boxes">
                  <div class="button input-box">
                    <input type="submit" name="submit" value="ADD GENRE">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="REMOVE GENRE">
                  </div>
                  <div class="button input-box">
                      <input type="submit" name="submit" value="BACK TO ADMIN EDITOR PAGE">
                  </div>
              </div>
          </form>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>