<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer" %>
<%@ page import = "java.util.List" %><%-- 
    Document   : Search
    Created on : 14 Jun 2023, 08:54:03
    Author     : Rhulani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>RIP Home Page</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesoeet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Data Page</title>
    </head>
    <body>
        <!-- header section start-->
        <%List<Story> storiesByTitle=(List<Story>) request.getAttribute("searchByTitle");%>
        <%List<Story>storiesByAuthor=(List<Story>) request.getAttribute("searchByAuthor");%>
        <%List<Story> storiesByGenres=(List<Story>) request.getAttribute("searchByGenres");%>
        <%List<Writer> authorsByName=(List<Writer>) request.getAttribute("searchAuthors");%>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <form action="editPersonalInformationServlet" method="get">
                            <input class="nav-link" type="submit" name="submit" value="HOME">
                            <input class="nav-link" type="submit" name="submit" value="EDIT PERSONAL INFORMATION">
                        </form>
                    </li>
                </ul>
            </div>
            <div class="login_text"><a href="index.jsp">LOGIN HERE</a></div>
        </nav>
        <!-- header section start-->
        <!-- banner section start-->
        <div class="banner_section layout_padding">
            <div class="container">
                <h1 class="best_taital" style="color:black">WELCOME TO YOUR PERSONAL PAGE</h1>
                <%
                    String message = (String) request.getAttribute("message");
                    if(message!=null){
                %>
                <p><strong style ="color:red;"><%=message %></strong></p>
                <%}%>


            </div>
        </div>
        <div>              <h1>Stories By Title</h1>
            <%if(!storiesByTitle.isEmpty()){%>
              <div class="scrollmenu" style="margin: auto; width: 800px">
                <% for(Story story:storiesByTitle){%>
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                </a>
               <%}%>
            </div>
              <%}%>
            <%if(storiesByTitle.isEmpty()){%>
            <p>No stories found by the story title</p>
            <%}%>


            <h1>Stories By Author</h1>
            <% if(!storiesByAuthor.isEmpty()){%>
             <div class="scrollmenu" style="margin: auto; width: 800px">
                <% for(Story story:storiesByAuthor){%>
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                </a>
                <%}%>
            </div>
            <%}%>
            
            <%if(storiesByAuthor.isEmpty()){%>
            <p>No stories found by the author</p>
            <%}%>


            <h1>Stories By Genre</h1>
            <%if(!storiesByGenres.isEmpty()){%>
             <div class="scrollmenu" style="margin: auto; width: 800px">
                 <% for(Story story:storiesByGenres){%>
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                </a>
                 <%}%>
            </div>
             <%}%>
            <%if(storiesByGenres.isEmpty()){%>
            <p>No stories found by the genre</p>
            <%}%>


            <h1>Authors By Name</h1>
            <%if(!authorsByName.isEmpty()){%>
            <% for(Writer writer:authorsByName){%>
            <p><a href="StoryServlet?submit=AuthorDetails&authorId=<%=writer.getUserID()%>" style="text-decoration:none"><%=writer.getName()%> <%=writer.getSurname()%></a></p>
            <%}%>
            <%}%>
            <%if(authorsByName.isEmpty()){%>
            <p>No authors found</p>
            <%}%>
        </div>

    </body>
</html>
