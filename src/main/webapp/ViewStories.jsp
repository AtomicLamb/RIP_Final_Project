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
    <body style="background-color: rgb(0, 119, 145);">
        <%ArrayList<Story>stories=(ArrayList<Story>)request.getAttribute("writersPublishedStories");%>
        <%String message=(String) request.getAttribute("message");%>
        <%if(message!=null){%>
        <h1><%=message%></h1>
        <%}%>
        <h1 style="font-size:50px;text-align:center;">View Stories</h1><br><br>
        <div class="Container"style="background-color:whitesmoke;width: 70%;margin: auto;box-shadow: 10px 10px;padding:40px;position: relative;bottom: 20px " >
            <h1 style="font-size:50px;text-align:center;">Select A Story Image To Read It Or Private Or Publicise A Story</h1><br><br>
            <div class="scrollmenu" style=" margin: auto;width: 80%;"
                <%if(!stories.isEmpty()){%>
                <%for(Story story:stories){%>
            <div style="display: inline-block">
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                </a>
                <br><form action="writerServlet"style="display: inline;position:relative; margin-left: 115px;bottom: 20px" method="post">
                     <input type="hidden" name="storyId" value="<%=story.getStoryID()%>"><br>
                     <input type="submit" name="submit" value="Make Story Private" style="border-radius: 25px">
                     <input type="submit" name="submit" value="Make Story Public" style="border-radius: 25px">
                 </form>
            </div>
            <%}%> 
                <%}%>
                <%if(stories.isEmpty()){%>
                   <p>NO AVAILABLE STORIES</p>
                <%}%>
            </div>
        </div>
    </body>
</html>
