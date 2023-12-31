<!DOCTYPE html>
<html lang="en">
     <%@page import="java.util.List"%>
    <%@page import="TrialAndError.ReadersAreInnovators.Models.StoryElements.Story"%>
    <%@page import="TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer"%>
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Findnaukri</title>
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
<link rel="stylesheet" href="css/buttons.css">                
</head>
<body style="background-color:rgb(0,119,145);">
	<!-- header section start-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <%List<Story>stories=(List<Story>)request.getAttribute("authorStories");%>
        <%Writer writer=(Writer)request.getAttribute("chosenWriter");%>
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
            <h1 class="best_taital" style="color:#007791"><%=writer.getName()%> <%=writer.getSurname()%></h1>
        </div>
    </div><br><br>
	<!-- banner section end-->
	<!-- marketing section start-->
	
	<!-- marketing section end-->
	<!-- Industrial section start-->
	  
    <%String message=(String)request.getAttribute("message");%>
    <%Boolean follow=(Boolean)request.getAttribute("followed");%>
    <h1 style="font-size:50px;text-align:center;">Authors Details</h1><br><br>
         <%if(message!=null){%>
    <h2 style="text-align: center"><%=message%></h2>
         <%}%>
		<div class="container-fluid" style="background-color:whitesmoke;width: 70%;margin: auto;box-shadow: 10px 10px black;padding:40px;position: relative;bottom: 20px;margin-top:40px  ">
                    <div class="row" style="margin-left: 20px;margin-right: 20px; margin-top: 40px;">
				       
                        <h1 class="jobs_text" style="text-align: left;border-bottom-style: solid; border-width:0.5px;border-color: black;">Author <%=writer.getName()%> <%=writer.getSurname()%> <%if(follow.equals(false)){%>
                            <br><form action="StoryServlet?submit=followAuthor" method="post">
                                <input type="hidden" name="authorId" value="<%=writer.getUserID()%>">
                                <%if((Integer) session.getAttribute("UserTypeID") != 0) {%>
                            <input type="submit" name="submit" value="Follow Author" class="button buttonTextColor" style=" font-size: 15px; border: 2px solid black; border-radius: 12px"></form><%}%> <%}%>
                            <%if(follow.equals(true)){%>
                            <br><form action="StoryServlet?submit=followAuthor" method="post">
                                <input type="hidden" name="authorId" value="<%=writer.getUserID()%>">
                                <input type="submit" name="submit" value="Unfollow Author" class="button buttonTextColor" style=" font-size: 15px; border: 2px solid black; border-radius: 12px"></form><%}%>
                        </h1>
                       
                                 <h1 class="jobs_text"style="text-align: left;">Authors Books</h1>
                                             
					      <div class="scrollmenu" style="  width: 800px; background-color: black;height: 550px">
              <%for(Story story:stories){%> 
                <a href="StoryServlet?submit=storyDetails&storyTitle=<%=story.getTitle()%>&storyId=<%=story.getStoryID()%>">
                  <h1 style="color: white;"><%=story.getTitle()%></h1>
             <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:300px;height:400px;" > 
            </a>  
            <%}%>
            
        </div>
                      
                        <%if(writer==null){%>
                        <p>NO WRITER SELECTED</p>
                        <%}%>
					</div>
				</div>
			 
	 
	<!-- Industrial section end-->
	<!-- Corporate section start-->
	
	<!-- Corporate section end-->
	<!-- Government section start-->
	
	<!-- Government section end-->
	<!-- footer section start-->
	 
	<!-- footer section end-->
	<!-- copyright section start-->
         
		
	 
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