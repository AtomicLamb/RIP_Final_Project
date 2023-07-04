<%-- 
    Document   : Editors
    Created on : 17 Jun 2023, 20:38:22
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editor Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/Editor.jpg" alt="">
        <div class="text">
          <span class="text-1">"Whoever is happy will make others happy too."</span>
          <span class="text-2">-Anne Frank</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Editor Page</div>
          <form action="editorServlet" method="get">
              <div class="input-boxes">
                  <div class="button input-box">
                    <input type="submit" name="submit" value="HOME">
                  </div>
                  <div class="button input-box">
                      <input type="submit" name="submit" value="ANALYSE DATA">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="REVIEW COMMENTS">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="REVIEW PENDING STORIES">
                  </div>
                  <div class="button input-box">
                      <input type="submit" name="submit" value="REVIEW PENDING WRITERS">
                  </div>
                  <div class="button input-box">
                      <input type="submit" name="submit" value="REVOKE WRITER PRIVILEGES">
                  </div>
              </div>
          </form>
          <%
            String message = (String) request.getAttribute("message");
              if(message!=null){
                 %>
                 <br><p><strong style ="color:red;"><%=message %></strong></p>
                <%}%>
    </div>
    </div>
    </div>
    </div>
    </body>
</html>
