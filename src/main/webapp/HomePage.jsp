 <%-- 
    Document   : HomePage
    Created on : 12 Jun 2023, 11:49:59
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<!DOCTYPE html>
<html lang="en">
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
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
	<link rel="stylesheet" href="css/horizontal_scrollBar.css">
</head>
<body style="background-color: #007791">
	<!-- header section start-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span>class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <%
            Integer num = (Integer) request.getAttribute("message");
            %>
                <%
            if(num == 2)
            {
            %>
                <li class="nav-item">
                   <a style="color: #007791" class="nav-link" href="Writers.jsp">WRITER PAGE</a>
                </li>
                    <%}%>  
                    <%
            if(num == 3 || num == 4)
            {
            %>
                <li class="nav-item">
                   <a style="color: #007791" class="nav-link" href="Editors.jsp">EDITORS PAGE</a>
                </li>
                <%}%>
                <%
            if(num == 4)
            {
            %>
                <li class="nav-item">
                   <a style="color: #007791" class="nav-link" href="Admin-Editor.jsp">ADMIN EDITORS PAGE</a>
                </li>
                <%}%>
				<%if(num != 0) {%>
                <li class="nav-item">
					<form action="editPersonalInformationServlet" method="get">
						<input style="border: none;background-color: #343a40; color: #007791" class="nav-link" type="submit" name="submit" value="PROFILE">
					</form>
					<%}%>
                </li>
				<li>
					<a href="StoryServlet?submit=storyOfTheDay"  class="nav-link"  style="border: none;background-color: #343a40; color: #007791">STORY OF THE DAY</a>
				</li>
				<%if(num != 0) {%>
                <li class="nav-item">
                    <div class="dropdown">
                    <button style="border: none;background-color: #343a40; color: #007791" class="nav-link" class="nav-link">MORE</button>
                        <div class="dropdown-content">
                        <a href="ReferFriend.jsp">REFER A FRIEND</a>
                        </div>
                    </div>
                </li>
				<%}%>
			</ul>
        </div>
		<%if(num == 0) {%>
		<li class="nav-item">
			<a style="color: #007791" class="nav-link" href="index.jsp">LOGIN HERE</a>
		</li>
		<%}%>
		<%if(num != 0) {%>
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
			<%
				String name = (String) session.getAttribute("Name");
				String surname = (String) session.getAttribute("Surname");
				
				if (name == null && surname == null)
				{
			%>
			<h1 class="best_taital" style="color:#007791">Welcome: User</h1>  
			<%}
			else 
			{%>
			<h1 class="best_taital" style="color:#007791">Welcome: <%= name%> <%= surname%></h1>
			<%}%>
			<div class="box_main">
				<form action="HomePageServlet" method="post">
					<input type="text" class="email_bt" placeholder="Search" name="search">
					<button style="background-color:#007791; color: black" type="submit" name="submit" value="Search" class="subscribe_bt">SEARCH</button>
				</form>
		    </div>
		</div>
	</div><br><br>
	<!-- banner section end-->
	<!-- marketing section start-->
	
				 <%List<Story>weeksTopStories=(List<Story>)request.getAttribute("topPicks");%>
	<%List<Story>recommendedBooks=((List<Story>)request.getAttribute("recommendedBooks"));%>
	<div class="container-fluid" >
		<div class="row">
			<%if(num != 0){%>
			<%List<Story>storiesFromFavouriteGenres=(List<Story>)request.getAttribute("stories");%>
			<h1 class="jobs_text"  style="text-align: center">Stories From Favourite Genres:</h1>
			<div class="scrollmenu" style="margin: auto; width: 90%;">
                     <%if(!storiesFromFavouriteGenres.isEmpty()){%>
				 <%for(Story story:storiesFromFavouriteGenres){%>
				<a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
					<h1 style="color: white;"><%=story.getTitle()%></h1>
					<img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:300px;height:400px;" >
				</a>
				<%}%>
            <%}%>
              <%if(storiesFromFavouriteGenres.isEmpty()){%>
				<p style="text-align: center">No favourite stories.</p>
				<%}%>
			</div>
		</div>
	</div><br><br>
	<% }%>
	<!-- marketing section end-->
	<!-- Industrial section start-->

	<div class="container-fluid">
		<div class="row">
			<h1 class="jobs_text"  style="text-align: center">This Weeks Top Picks:</h1>


			<div class="scrollmenu" style="margin: auto; width: 90%">

				<%if(!weeksTopStories.isEmpty()){%>
				<%for(Story story:weeksTopStories){%>
				<a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
					<h1 style="color: white;"><%=story.getTitle()%></h1>
					<img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:300px;height:400px;" >
				</a>
				<%}%>
				<%}%>
				<%if(weeksTopStories.isEmpty()){%>
				<p style="text-align: center">No top stories for the week are currently available.</p>
				<%}%>
			</div>
		</div>
	</div><br><br>


	<!-- Industrial section end-->
	<!-- Corporate section start-->

	<div class="container-fluid">
		<div class="row">
			<h1 class="jobs_text" style="text-align: center">Recommended Stories:</h1>


			<div class="scrollmenu" style="margin: auto; width: 90%">
				<%if(!recommendedBooks.isEmpty()){%>
				<%for(Story story:recommendedBooks){%>
				<a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>&authorId=<%=story.getAuthorID()%>">
					<h1 style="color: white;"><%=story.getTitle()%></h1>
					<img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:300px;height:400px;" >
				</a>
				<%}%>
				<%}%>
				<%if(recommendedBooks.isEmpty()){%>
				<p style="text-align: center">No recommended stories are currently available.</p>
				<%}%>
			</div>
		</div>

	</div><br><br><br>


	<!-- Corporate section end-->

	<!-- footer section start-->

	<!-- footer section end-->
	<!-- copyright section start-->
	<div class="copyright_section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<p class="copyright_text">Copyright 2020 All Rights Reserved By.<a href="https://html.design"> Free  html Templates</a></p>
				</div>
				<div class="col-md-6">
					<p class="copyright_text">Copyright 2023 All Rights Reserved By Trial And Error.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- copyright section end-->


	<!-- Javascript files-->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<script src="js/plugin.js"></script>
	<!-- sidebar -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>
	<!-- javascript -->
	<script src="js/owl.carousel.js"></script>
	<script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".fancybox").fancybox({
				openEffect: "none",
				closeEffect: "none"
			});
	</script>
</body>
</html>
