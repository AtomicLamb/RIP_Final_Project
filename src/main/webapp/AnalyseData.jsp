<%-- 
    Document   : AnalyseData
    Created on : 18 Jun 2023, 21:03:25
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Analyse Data Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
            <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/analyticalData.jpg" alt="">
        <div class="text">
          <span class="text-1">“A room without books is like a body without a soul.”</span>
          <span class="text-2">― Marcus Tullius Cicero</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Analyse Data Page</div><br>
          <form action="analyticalServlet" method="get">
              <div class="input-boxes">
                  <div class="button input-box">
                    <input type="submit" name="submit" value="HOME">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="MOST VIEWED BOOKS">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="MOST RATED BOOKS">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="MOST LIKED BOOKS">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="TOP CATEGORIES">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="TOP WRITERS">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="TOP EDITORS">
                  </div>
              </div>
          </form>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>
