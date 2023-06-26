<%-- 
    Document   : AddGenre
    Created on : 18 Jun 2023, 14:27:37
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Genre Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/addGenre.jpg" alt="">
        <div class="text">
          <span class="text-1">"Hope is what makes us strong. It is why we are here. It is what we fight with when all else is lost."</span>
          <span class="text-2">– Pandora, God of War 3</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Manage Genres Page</div>
          <form action="adminEditorServlet" method="post">
              <div class="input-boxes">
                 <div class="input-box">
                    <input type="text" placeholder="Enter the genre" name="genreName" required>
                </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="Add Genre">
                  </div>
              </div>
          </form>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>
