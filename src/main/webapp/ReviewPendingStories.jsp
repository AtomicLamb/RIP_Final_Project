<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "java.util.List" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication" %><%-- 
    Document   : ReviewPendingStories
    Created on : 18 Jun 2023, 21:05:24
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Pending Stories Page</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/horizontal_scrollBar.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <%List<StoryApplication> pendingStories=(List<StoryApplication>)request.getAttribute("pendingStories");%>
        <%String message=(String)request.getAttribute("message");%>
           <%if(message!=null){%>
          <h1 style="color: blue"> <%=message%></h1>
        
        
        <%}%>
        
        <div class="Container" style="background-color: #1c7430; width:100%; position: relative;bottom: 80px"  >
            <h1 style="font-size:50px;text-align:center;">Review Pending Stories</h1><br><br>
           
        </div>
        <br><br>
        <h1 style="color:red"><%=pendingStories.get(0).getPendingStoryID()%></h1>
        <div class="scrollmenu" style="margin: auto; width: 800px; background-color: yellow">
            <h1 style="color:red"><%=pendingStories.get(0).getTitle()%>></h1>
            <%for(StoryApplication story:pendingStories){%>
              <a href="editorServlet?submit=reviewPendingStory&storyId=<%=story.getPendingStoryID()%>&authorId=<%=story.getAuthorID()%>">
                <h1 style="color: white;"><%=story.getTitle()%></h1>
                <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
            </a>
            <%}%>
                  
            <%if(pendingStories==null){%>
            <p>No pending stories currently available</p>
            <%}%>
        </div>
    </body>
</html>
