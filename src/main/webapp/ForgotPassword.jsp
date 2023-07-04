<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 01/07/2023
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%String message=(String)request.getAttribute("message");%>
        <%if(message!=null){%>
        <h1><%=message%></h1>
        <%}%>
              <div>
                  <form action="HomePageServlet?submit=send" method="post">
                      Enter your email: <input type="email" placeholder="Enter your email" name="email" required>
                      Enter your phone number: <input type="tel" placeholder="Enter your phone number" pattern="[0-9]{10}" name="number" required>
                      <input type="submit" name="submit" value="Send">
                      
                      
                  </form>
                  
                  
              </div>
        
        
    </body>
</html>
