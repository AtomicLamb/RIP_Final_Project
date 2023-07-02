<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "java.util.List" %><%-- 
    Document   : ViewDrafts
    Created on : 14 Jun 2023, 09:54:19
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            input:hover {
                background-color:blue;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Drafts Page</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="css/horizontal_scrollBar.css">
    </head>
    <body style="background-color: rgb(0, 119, 145);">
        <%List<Story>drafts=(List<Story>)request.getAttribute("drafts"); %>
        <%String message=(String)request.getAttribute("message");%>
       <h1 style="font-size:50px;text-align:center;">View Drafts</h1><br><br>
        <div class="Container"  style="background-color:whitesmoke;width: 70%;margin: auto;box-shadow: 10px 10px;padding:40px;position: relative;bottom: 20px " >
             <%if(message!=null){%>
                    <h1><%=message%></h1>
                    <%}%>
            <div class="scrollmenu" style=" margin: auto;width: 80%;">
                <%if(!drafts.isEmpty()){%>
                <%for(Story story:drafts){%>
                <div style="display: inline-block">
                <a href="writerServlet?submit=editDraft&storyId=<%=story.getStoryID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                 </a>
                </div>
                <%}%>
                <%}%>
                <%if(drafts.isEmpty()){%>
                <p>NO AVAILABLE DRAFTS</p>
                <%}%>
            </div>
            
        </div>
    </body>
</html>
