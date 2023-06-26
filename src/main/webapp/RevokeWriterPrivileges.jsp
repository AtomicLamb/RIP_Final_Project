<%-- 
    Document   : RevokeWriterPrivileges
    Created on : 18 Jun 2023, 21:08:35
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<%@page import = "java.util.List"%>
<%@page import = "Model.Person"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revoke Writer Privileges Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">Revoke Writer Privileges</h1><br><br>
              <div class="scrollableList">
                <ul type="disc">
            <%
            List<Person> names = (List<Person>) request.getAttribute("message");
            if(names!=null){
             for(Person name: names)
            {
            %>
            <li> <strong style= "color:black;"><%=name%></strong></li>
         <%}
          }%>
        </ul>
            </div>
            <div class="forms">
                <div class="form-content">
                    <form action="editorServlet" method="post">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="number" placeholder="Enter the id num of the writer to revoke their writer privileges." name="revokeWriterPrivilegesID" min="1" max="<%=names.size() %>" required>
                        </div>
                        <div class="button input-box">
                        <input style="color: white; background-color: black;" type="submit" name="submit" value="REVOKE WRITER PRIVILEGE">
                        </div>  
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
