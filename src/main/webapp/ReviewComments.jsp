<%-- 
    Document   : ReviewComments
    Created on : 18 Jun 2023, 21:04:24
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Comments Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">Review Comments</h1><br><br>
            <div class="scrollableList">
                <ul type="disc">
             <%
                       List<Comment> comments = (List<Comment>) request.getAttribute("flaggedCommentsList");
                            for (Comment c: comments) 
                            {        
                        %>
                    <li> <form action="editorServlet?submit=REMOVE COMMENT" method="post"><strong style= "color:black;">
                        <input type="hidden" name="reviewCommentID" value="<%=c.getCommentID()%>">
                        <%=c.getName()%> posted: <input style="color:#f00;border:0px #000 solid;background-color:#fff;" type="submit" name="submit" value="<%=c.getComment()%>"> </strong></form></li><br><br>
                     <%}%>
        </ul>
            </div>
            <div class="forms">
                <div class="form-content">
                   
                    <form action="editorServlet" method="get">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="BACK TO EDITORS PAGE" formnovalidate>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
