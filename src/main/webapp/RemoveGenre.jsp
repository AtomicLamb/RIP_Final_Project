<%-- 
    Document   : RemoveGenre
    Created on : 18 Jun 2023, 14:50:46
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Genre Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
      <div class="Container" >
          <h1 style="font-size:50px;text-align:center;">Remove Genre</h1><br><br>
           <div class="scrollableList">
                <div class="scrollableList">
                <ul type="disc">
                    <%
                        List<Genre> genres = (List<Genre>) request.getAttribute("getGenres");
                        for (Genre g: genres)
                        {
                    %>
                    <li> <strong style= "color:black;">[<%=g.getGenreID()%>] <%=g.getGenre()%></strong></li><br>
                    <%}%>
        </ul>
            </div>
            </div>
            <div class="forms">
                <div class="form-content">
                    <form action="adminEditorServlet" method="post">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="number" placeholder="Enter the id num of the genre you want to remove." name="removeGenreID" min="1" required>
                        </div>
                        <div class="button input-box">
                        <input style="color: white; background-color: black;" type="submit" name="submit" value="Remove Genre">
                        </div> 
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
