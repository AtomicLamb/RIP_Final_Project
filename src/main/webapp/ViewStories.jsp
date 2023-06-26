<%-- 
    Document   : ViewStories
    Created on : 14 Jun 2023, 09:53:20
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Stories Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="css/horizontal_scrollBar.css">
        <link rel="stylesheet" href="css/centerhorizontalbar.css">
    </head>  
    <body>
        <%ArrayList<Story>stories=(ArrayList<Story>)request.getAttribute("writersPublishedStories");%>
        
        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">View Stories</h1><br><br>
            <div class="scrollmenu" style=" margin: auto; width: 800px;height: 550px">
                <%for(Story story:stories){%>
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                </a>
                <%}%>

            </div>
        </div>
    </body>
</html>
