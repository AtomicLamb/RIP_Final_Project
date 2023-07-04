<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer" %>
<%@ page import = "java.util.List" %><%-- 
    Document   : PersonalData
    Created on : 14 Jun 2023, 08:54:03
    Author     : matth
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
        <link rel="stylesheet" href="css/horizontal_scrollBar.css">
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
        <%List<Story> unreads=(List<Story>) request.getAttribute("unreadFavourites");%>
        <%List<Story>reads=(List<Story>) request.getAttribute("readFavourites");%>
        <%List<Genre> genres=(List<Genre>) request.getAttribute("userGenres");%>
        <%List<Writer> followedAuthors=(List<Writer>) request.getAttribute("followedAuthors");%>
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
        <div>              <h1>Followed Authors</h1>
                             <%if(!followedAuthors.isEmpty()){%>
                            <div class="scrollmenu" style="margin: auto; width: 800px">
                             <% for(Writer writer:followedAuthors){%>
                           <a href="StoryServlet?submit=AuthorDetails&authorId=<%=writer.getUserID()%>">
                         <h1 style="color: white;"><%=writer.getName()%> <%=writer.getSurname()%></h1>
                        <img src="images/Default%20User%20Icon.jpg" alt="<%=writer.getName()%> <%=writer.getSurname()%>" style="width:400px;height:400px;" >
                             </a>
                             <%}%>
                                <%}%>
                                <%if(followedAuthors.isEmpty()){%>
                                <p style="color: white">No Authors Currently Being Followed</p>
                                <%}%>
                             </div>
                             
                             
                             
                             
                                 <h1>Favourite unread books</h1> 
                      <div class="scrollmenu" style="margin: auto; width: 800px">
                            <% if(!unreads.isEmpty()){%>
                              <% for(Story story:unreads){%>
                             <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                           <h1 style="color: white;"><%=story.getTitle()%></h1>
                              <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                               </a>
                             <%}%>
                                <%}%>  
                                   <%if(unreads.isEmpty()){%>
                                   <p style="color: white">No unread favourite books</p>
                                   <%}%>   
                             </div>
                             
                             
                            
                             
                             <h1>Favourite read books</h1>  
                      <div class="scrollmenu" style="margin: auto; width: 800px">
                             <%if(!reads.isEmpty()){%>
                             <% for(Story story:reads){%>
                           <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
                            <h1 style="color: white;"><%=story.getTitle()%></h1>
                               <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                                 </a>
                                <%}%>
                                <%}%>
                                <%if(reads.isEmpty()){%>
                                <p style="color: white">No read favourite books</p>
                                <%}%>
                              </div>
                                
                                
                                                     <h1>Selected genres</h1> 
                                                          <%if(!genres.isEmpty()){%>
                                                            <% for(Genre genre:genres){%>
                                                             <p><%=genre.getGenre()%></p>
                                                          <%}%>
                                                          <%}%>
                                                          <%if(genres.isEmpty()){%>
                                                         <div class="scrollmenu" style="margin: auto; width: 800px">
                                                          <p>No selected genres</p>
                                                          </div>
                                                          <%}%> 
                                                          </div>
                   
    </body>
</html>
