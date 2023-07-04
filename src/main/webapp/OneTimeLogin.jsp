<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 04/07/2023
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <div>
            <%String message=(String)request.getAttribute("message");%>
            <%if(message!=null){%>
            <h1><%=message%></h1>
            <%}%>
            <form action="controllerServlet?submit=LoginOTL" method="post">
                Enter your email: <input type="email" placeholder="Enter your email" name="loginEmail" required>
                Enter your OTP: <input id="password" type="password" placeholder="Enter your password" name="loginPassword" required>
                <input type="submit" name="submit" value="Login">
     </form>


        </div>
    </body>
</html>
