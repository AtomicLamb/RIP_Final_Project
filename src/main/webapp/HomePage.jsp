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
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
	<link rel="stylesheet" href="css/horizontal_scrollBar.css">
</head>
<body>
	<!-- header section start-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <%
            Integer num = (Integer) request.getAttribute("message");
            %>
                <li class="nav-item">
                   <a class="nav-link" href="HomePage.jsp">HOME</a>
                </li>
                <%
            if(num == 2)
            {
            %>
                <li class="nav-item">
                   <a class="nav-link" href="Writers.jsp">WRITER PAGE</a>
                </li>
                    <%}%>  
                    <%
            if(num == 3 || num == 4)
            {
            %>
                <li class="nav-item">
                   <a class="nav-link" href="Editors.jsp">EDITORS PAGE</a>
                </li>
                <%}%>
                <%
            if(num == 4)
            {
            %>
                <li class="nav-item">
                   <a class="nav-link" href="Admin-Editor.jsp">ADMIN EDITORS PAGE</a>
                </li>
                <%}%>
                <li class="nav-item">
					<form action="editPersonalInformationServlet" method="get">
						<input class="nav-link" type="submit" name="submit" value="Profile">
					</form>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                    <button class="nav-link">MORE</button>
                        <div class="dropdown-content">
                        <a href="#">REFER A FRIEND</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
         <div class="login_text"><a href="index.jsp">LOGIN HERE</a></div>
    </nav>
	<!-- header section start-->
	<!-- banner section start-->
	<div class="banner_section layout_padding">
		<div class="container">
			<%
				String name = (String) session.getAttribute("Name");
				String surname = (String) session.getAttribute("Surname");
			%>
                    <h1 class="best_taital" style="color:black">Welcome: <%= name%> <%= surname%></h1>
			
			<div class="box_main">
			    <input type="" class="email_bt" placeholder="Search" name="">
				<button class="subscribe_bt"><a href="#">Search</a></button>
		    </div>
		</div>
	</div>
	<!-- banner section end-->
	<!-- marketing section start-->


	<div class="container-fluid" >
		<div class="row">


			<h1 class="jobs_text"  style="text-align: center">Books from favourite Genres</h1>


			<div class="scrollmenu" style="margin: auto; width: 800px;">

				<%List<Story>storiesFromFavouriteGenres=(List<Story>)request.getAttribute("stories");%>
                     <%if(storiesFromFavouriteGenres!=null){%>
				 <%for(Story story:storiesFromFavouriteGenres){%>
				<a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>%authorId=<%=story.getAuthorID()%>">
					<h1 style="color: white;"><%=story.getTitle()%></h1>
					<img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
				</a>
				<%}%>
            <%}%>

			</div>
		</div>
	</div>
	<!-- marketing section end-->
	<!-- Industrial section start-->

	<div class="container-fluid">
		<div class="row">
			<h1 class="jobs_text"  style="text-align: center">This weeks top picks</h1>


			<div class="scrollmenu" style="margin: auto; width: 800px">

				<a href="#home">
					<img src="pic_Book1.jpg" alt="Book1">
				</a>
				<a href="#news">
					<img src="pic_Book1.jpg" alt="Book2">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
			</div>
		</div>

	</div>


	<!-- Industrial section end-->
	<!-- Corporate section start-->

	<div class="container-fluid">
		<div class="row">
			<h1 class="jobs_text" style="text-align: center">Recommended books</h1>


			<div class="scrollmenu" style="margin: auto; width: 800px">

				<a href="#home">
					<img src="pic_Book1.jpg" alt="Book1">
				</a>
				<a href="#news">
					<img src="pic_Book1.jpg" alt="Book2">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
				<a href="#contact">
					<img src="pic_Book2.jpg" alt="Book3">
				</a>
			</div>
		</div>

	</div>


	<!-- Corporate section end-->

	<!-- footer section start-->

	<!-- footer section end-->
	<!-- copyright section start-->
	<div class="copyright_section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<p class="copyright_text">Copyright 2020 All Right Reserved By.<a href="https://html.design"> Free  html Templates</a></p>
				</div>
				<div class="col-md-6">
					<p class="cookies_text">Cookies, Privacy and Terms</p>
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
