<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 05/07/2023
  Time: 00:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Genre Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">Change Genres</h1><br><br>
            <%
                String message = (String) request.getAttribute("message");
                if(message!=null){
            %>
            <p><strong style ="color:red;"><%=message %></strong></p><br>
            <%}%>
            <div class="forms">
                <div class="form-content">
                    <form action="editPersonalInformationServlet" method="post">
                        <div class="scrollableList">
                            <ul type="disc">
                                <%
                                    List<Genre> genres = (List<Genre>) request.getAttribute("genreList");
                                    for (Genre g: genres)
                                    {
                                %>
                                <input type="checkbox" name="choice" value="<%= g.getGenre()%>"><%= g.getGenre()%><br>
                                <%}%>
                            </ul>
                        </div>
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="SUBMIT CHANGED GENRES">
                        </div>
                    </form>
                    <form action="editPersonalInformationServlet" method="get">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="BACK TO EDIT PERSONAL INFORMATION PAGE" formnovalidate>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
