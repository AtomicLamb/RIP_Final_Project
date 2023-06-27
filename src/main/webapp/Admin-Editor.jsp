<%-- 
    Document   : Admin-Editor
    Created on : 17 Jun 2023, 13:18:56
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin-Editor Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="container">
        <div class="cover">
      <div class="front">
        <img src="images/Admin-Editor.jpg" alt="">
        <div class="text">
          <span class="text-1">"The greatest glory in living lies not in never falling, but in rising every time we fall."</span>
          <span class="text-2">-Nelson Mandela</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
        <div class="signup-form">
          <div class="title">Admin-Editor Page</div>
          <form action="adminEditorServlet" method="get">
              <div class="input-boxes">
                  <div class="button input-box">
                    <input type="submit" name="submit" value="EDITOR PAGE">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="MANAGE GENRES">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="ADD EDITOR">
                  </div>
                  <div class="button input-box">
                    <input type="submit" name="submit" value="REMOVE EDITOR">
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
