<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 29/06/2023
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<html>
    <head>
        <title>Email Verification</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">Email Verification Page</h1><br><br>
            <%
                String message = (String) request.getAttribute("message");
                if(message!=null){
            %>
            <p><strong style ="color:red;"><%=message %></strong></p><br><br>
            <%}%>
            <form action="controllerServlet" method="get">
                <div class="input-boxes">
                    <div class="button input-box">
                        <input type="submit" name="submit" value="GO TO LOGIN">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
