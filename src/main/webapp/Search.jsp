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
        <link rel="stylesheet" type="text/css" href="style2.css">
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
        <link rel="stylesheet" href="css/horizontal_scrollBar.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Data Page</title>
    </head>
    <body style="background-color: #007791">
        <!-- header section start-->
        <%List<Story> storiesByTitle=(List<Story>) request.getAttribute("searchByTitle");%>
        <%List<Story>storiesByAuthor=(List<Story>) request.getAttribute("searchByAuthor");%>
        <%List<Story> storiesByGenres=(List<Story>) request.getAttribute("searchByGenres");%>
        <%List<Writer> authorsByName=(List<Writer>) request.getAttribute("searchAuthors");%>
        <%List<Writer>authorsByTitle=(List<Writer>) request.getAttribute("searchAuthorByTitle");%>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <form action="editPersonalInformationServlet" method="get">
                            <input style="border: none;background-color: #343a40; color: #007791" class="nav-link" type="submit" name="submit" value="HOME">
                        </form>
                    </li>
                </ul>
            </div>
            <%session= request.getSession(false);%>
            <%if((Integer) session.getAttribute("UserTypeID") == 0) {%>
            <li class="nav-item">
                <a style="color: #007791" class="nav-link" href="index.jsp">LOGIN HERE</a>
            </li>
            <%}%>
            <%if((Integer) session.getAttribute("UserTypeID") != 0) {%>
            <form action="controllerServlet" method="get">
                <div class="login_text">
                    <input style="border: none;background-color: #343a40; color: #007791" class="nav-link" type="submit" name="submit" value="SIGN OUT" formnovalidate>
                </div>
                <%}%>
            </form>
        </nav>
        <!-- header section start-->
        <!-- banner section start-->
        <div class="banner_section layout_padding">
            <div class="container">
                <h1 class="best_taital" style="color:black;text-align: center">Search Results</h1>
                <%
                    String message = (String) request.getAttribute("message");
                    if(message!=null){
                %>
                <p><strong style ="color:red;"><%=message %></strong></p>
                <%}%>


            </div>
        </div>
        <div>           
               <h1 style="text-align: center;color: white">Stories By Title</h1>
              <div class="scrollmenu" style="margin: auto; width: 90%;">
                  <%if(!storiesByTitle.isEmpty()){%>
                <% for(Story story:storiesByTitle){%>
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:300px;height:400px;" >
                </a>
               <%}%> 
                  <%}%>
                  <%if(storiesByTitle.isEmpty()){%>
                                <p style="color: white;text-align: center">No stories found by the story title</p>
                   <%}%>             
            </div><br><br>
              
           


           
            <h1 style="text-align: center;color: white">Stories By Author</h1>
             <div class="scrollmenu" style="margin: auto; width: 90%;"> 
                 <% if(!storiesByAuthor.isEmpty()){%>
                <% for(Story story:storiesByAuthor){%>
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:300px;height:400px;" >
                </a>
                <%}%>
            
            <%}%>
                 <%if(storiesByAuthor.isEmpty()){%>
                             <p style="color: white;text-align: center">No stories found by the author</p>
                             <%}%>
            </div><br><br>
            


            <h1 style="text-align: center;color: white">Stories By Genre</h1>
          
             <div class="scrollmenu" style="margin: auto; width: 90%;">  
                 <%if(!storiesByGenres.isEmpty()){%>
                 <% for(Story story:storiesByGenres){%>
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                    <h1 style="color: white;"><%=story.getTitle()%></h1>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:300px;height:400px;" >
                </a>
                 <%}%>
                 <%}%>
                 <%if(storiesByGenres.isEmpty()){%>
                                  <p style="color: white;text-align: center">No stories found by the genre</p>
                                  <%}%>
            </div><br><br>
             
            


            <h1 style="text-align: center;color: white">Authors By Name</h1>
           
            <div class="scrollmenu" style="margin: auto; width: 90%;"> 
                <%if(!authorsByName.isEmpty()){%>
            <% for(Writer writer:authorsByName){%>
            <a href="StoryServlet?submit=AuthorDetails&authorId=<%=writer.getUserID()%>">
                <h1 style="color: white;"><%=writer.getName()%> <%=writer.getSurname()%></h1>
                <img src="images/Default%20User%20Icon.jpg" alt="<%=writer.getName()%> <%=writer.getSurname()%>" style="width:300px;height:300px;" >
            </a>
            <%}%>
                <%}%>
                <%if(authorsByName.isEmpty()){%>
                            <p style="color: white;text-align: center">No authors found</p>
                            <%}%>
            </div><br><br>
            
            

            <h1 style="text-align: center;color: white">Authors By Story Title</h1>
           
            <div class="scrollmenu" style="margin: auto; width: 90%;"> 
                <%if(!authorsByTitle.isEmpty()){%>
                <% for(Writer writer:authorsByTitle){%>
                <a href="StoryServlet?submit=AuthorDetails&authorId=<%=writer.getUserID()%>">
                    <h1 style="color: white;"><%=writer.getName()%> <%=writer.getSurname()%></h1>
                    <img src="images/Default%20User%20Icon.jpg" alt="<%=writer.getName()%> <%=writer.getSurname()%>" style="width:300px;height:300px;" >
                </a>
                <%}%>
                <%}%>
                <%if(authorsByTitle.isEmpty()){%>
                <p style="color: white;text-align: center">No authors found by story title</p>
                <%}%>
            </div><br><br>
        </div>

    </body>
</html>
