<%-- 
    Document   : HomePage
    Created on : 12 Jun 2023, 11:49:59
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                   <a class="nav-link" href="PersonalData.jsp">PERSONAL INFORMATION PAGE</a>
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
         <div class="login_text"><a href="index.html">LOGIN HERE</a></div>
    </nav>
	<!-- header section start-->
	<!-- banner section start-->
	<div class="banner_section layout_padding">
		<div class="container">
                    <h1 class="best_taital" style="color:black">Welcome to the RIP Home Page</h1>
			<div class="box_main">
			    <input type="" class="email_bt" placeholder="Search" name="">
				<button class="subscribe_bt"><a href="#">Search</a></button>
		    </div>
		</div>
	</div>
	<!-- banner section end-->
	<!-- marketing section start-->
	<div class="marketing_section layout_padding">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="job_section">
					    <h1 class="jobs_text">Marketing jobs</h1>
					    <p class="dummy_text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there</p>
					    <div class="apply_bt"><a href="#">Apply now</a></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="image_1 padding_0"><img src="images/img-1.png"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- marketing section end-->
	<!-- Industrial section start-->
	<div class="marketing_section layout_padding">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="image_1 padding_0"><img src="images/img-2.png"></div>
				</div>
				<div class="col-md-6">
					<div class="job_section_2">
					    <h1 class="jobs_text">Industrial jobs</h1>
					    <p class="dummy_text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there</p>
					    <div class="apply_bt"><a href="#">Apply now</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Industrial section end-->
	<!-- Corporate section start-->
	<div class="marketing_section layout_padding">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="job_section">
					    <h1 class="jobs_text">Corporate jobs</h1>
					    <p class="dummy_text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there</p>
					    <div class="apply_bt"><a href="#">Apply now</a></div>
					</div>
				</div>
				<div class="col-md-6 padding_0">
					<div class="image_1"><img src="images/img-3.png"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Corporate section end-->
	<!-- Government section start-->
	<div class="marketing_section layout_padding">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 padding_0">
					<div class="image_1"><img src="images/img-4.png"></div>
				</div>
				<div class="col-md-6">
					<div class="job_section_2">
					    <h1 class="jobs_text">Government jobs</h1>
					    <p class="dummy_text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there</p>
					    <div class="apply_bt"><a href="#">Apply now</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Government section end-->
	<!-- footer section start-->
	<div class="footer_section layout_padding">
		<div class="container">
			<h1 class="subscribr_text">Subscribe Now</h1>
			<p class="lorem_text">There are many variations of passages of Lorem Ipsum available, but the majority have </p>
			<div class="box_main_2">
			    <textarea type="" class="email_bt_2" placeholder="Enter Your Email" name=""></textarea>
		    </div>
		    <button class="subscribe_bt_2"><a href="#">Subscribe</a></button>
		</div>
	</div>
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