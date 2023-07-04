<%-- 
    Document   : RemoveEditor
    Created on : 18 Jun 2023, 15:16:30
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Editor Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">Remove Editor</h1><br><br>
           <div class="scrollableList">
               <ul type="disc">
                   <%
                       List<Editor> editors = (List<Editor>) request.getAttribute("getEditor");
                       for (Editor e: editors)
                       {
                   %>
                   <li> <strong style= "color:black;"><%=e.getName()%> <%=e.getSurname()%> [<%=e.getEmail()%>]</strong></li><br>
                   <%}%>
               </ul>
            </div>
            <div class="forms">
                <div class="form-content">
                    <form action="adminEditorServlet" method="post">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="email" placeholder="Enter the editors email to remove them." name="removeEditorEmail" required>
                        </div>
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="REMOVE EDITOR">
                        </div>
                    </form>
                    <form action="adminEditorServlet" method="get">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="BACK TO ADMIN EDITOR PAGE" formnovalidate>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
