<!DOCTYPE html>
<html lang="en">
     <%@page import="java.util.List"%>
    <%@page import="TrialAndError.ReadersAreInnovators.Models.StoryElements.Story"%>
    <%@page import="TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer"%>
    <%@page import="TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment"%>
    
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

<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets --> 
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesoeet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<script src="https://kit.fontawesome.com/4eb5aff70c.js" crossorigin="anonymous"></script>

</head>
<body style="background-color:rgb(0,119,145);">
    <%String message=(String)request.getAttribute("message");%>
    <%if(message!=null){%>
    <h1><%=message%></h1>
    <%}%>
    <!-- header section start-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="position: relative; width: 100%; z-index:99;">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                   <a class="nav-link" href="HomePageServlet?submit=HomePage">HOME</a>
                </li>
                <li class="nav-item">
                <a href="StoryServlet?submit=storyOfTheDay"  class="nav-link"  style="border: none;background-color: #343a40; color: #007791">STORY OF THE DAY</a>
                </li>
            </ul>
        </div>
         <div class="login_text"><a href="index.jsp">LOGIN HERE</a></div>
            
    </nav>
	<!-- header section start-->
	<!-- banner section start-->
	
	<!-- banner section end-->
	<!-- marketing section start-->
	
	<!-- marketing section end-->
	<!-- Industrial section start-->
	 
		<div class="container-fluid" style="background-color:whitesmoke;width: 70%;margin: auto;box-shadow: 10px 10px black;padding:10px;position: relative;bottom: 20px;margin-top:40px  ">
                    <div class="row" style="margin-left: 200px;">
                        <%Writer writer=(Writer)request.getAttribute("chosenWriter");%>
                        <%Story story=(Story)request.getAttribute("storyDetails");%>
                       

                      
                        <div class="image_1 padding_0" style="margin-left: 0px;padding-left: 0px"><h1><%=story.getTitle()%></h1><img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="height: 400px;width:300px; "><div style="position: relative;right: 150px;margin-right: 0px;float: right">
                                    
                                    <span><br>Views<i class="fa-sharp fa-solid fa-eye"></i><%=story.getViews()%></span><br><br>
                                    <span>Click this heart to like the story: Likes<a href="StoryServlet?submit=like&storyId=<%=story.getStoryID()%>"><i class="fa-solid fa-heart" style="color: #f42d1f;"></i></a><%=story.getLikes()%></span><br><br>
                                    <span>Rating<i class="fa-sharp fa-solid fa-star" style="color: #fff93d;"></i><%=story.getRatingAverage()%></span><br><br>
                            <span> Click to remove your like<a href="StoryServlet?submit=like&storyId=<%=story.getStoryID()%>"><i class="fa-solid fa-heart-crack" style="color: #db0f0f;"></i></a></span>      
                                    <span><a href="StoryServlet?submit=AuthorDetails&authorId=<%=writer.getUserID()%>" style="text-decoration:none">Author <%=writer.getName()%> <%=writer.getSurname()%></a></span>
                                    <div id="openButton" class="apply_bt"><button onclick="openForm()">Rate Story</button></div>
                                                               
                                                                                                 <div id="radioStar"  style="display:none;position: relative;">
                                                                           <form action="StoryServlet" method="post" >
  <input type="radio" id="1star" name="rating" value="1">
  <label for="1star"><i class="fa-sharp fa-solid fa-star" style="color: #fff93d;"></i>1</label><br>
  <input type="radio" id="2star" name="rating" value="2">
  <label for="2star"><i class="fa-sharp fa-solid fa-star" style="color: #fff93d;"></i>2</label><br>
  <input type="radio" id="3star" name="rating" value="3">
  <label for="3star"><i class="fa-sharp fa-solid fa-star" style="color: #fff93d;"></i>3</label><br>
  <input type="radio" id="4star" name="rating" value="4">
  <label for="4star"><i class="fa-sharp fa-solid fa-star" style="color: #fff93d;"></i>4</label><br>
  <input type="radio" id="5star" name="rating" value="5">
  <label for="5star"><i class="fa-sharp fa-solid fa-star" style="color: #fff93d;"></i>5</label><br>
  <input type="hidden" name="storyId" value="<%=story.getStoryID()%>">
  <input type="submit" id="rateSubmit"   name="submit" value="rateStory">
</form><div id="closeButton" class="apply_bt" style="display: none"><button onclick="closeForm()">Close</button></div>
                                            </div>
                                            </div></div>
				  <%List<Comment>comments=(List<Comment>)request.getAttribute("comments");%>
                        
				<div class="col-md-6">
					<div class="job_section_2">
                                           
					      <p class="dummy_text"><%=story.getSynopsis()%></p>
                                   <div style="position: relative;bottom: 10px">
                                             <div class="apply_bt" style="position: relative;bottom: 10px"><a href="StoryServlet?submit=read&storyId=<%=story.getStoryID()%>">Read</a></div>
                                                 <form action="StoryServlet" method="post">
                                                                      <label for="commentArea" style="margin-right: 100px">Type your comment</label>
                                                                   <textarea type="text" id="commentArea" name="commentArea" rows="4" cols="50" maxlength="500"></textarea>><br>
                                                                    
                                                                   <input type="hidden" name="storyId" value="<%=story.getStoryID()%>">
                                                                   
                                                                   <input type="submit" name="submit"  value="comment">
                                                               </form>
                                                                    
                                       
                                                               <h2>Comments</h2>
                                                               <%if(!comments.isEmpty()){%>
                                                               <%for(Comment comment:comments){%> 
                                                                   <p>Posted by : <%=comment.getName()%> on <%=comment.getDateAdded()%><br><%=comment.getComment()%></p>
                                                                  <span id="reportButton" ><a href="StoryServlet?submit=reportComment">Report comment</a></span>
                                                                          <%}%>
                                                                 <%}%>
                                   </div>
                    </div> 
                        
					</div>
                                                                 
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
	<div class="copyright_section" style="position: relative; top:150px;">
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
<script>
             
                 
            
        
    
</script>
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
     <script>
           

          function openForm(){
              document.getElementById("radioStar").style.display = "block"; 
             document.getElementById("closeButton").style.display = "block";
             document.getElementById("openButton").style.display = "none";
          }
       
        function closeForm(){
  document.getElementById("radioStar").style.display = "none";
        document.getElementById("openButton").style.display = "block";
        document.getElementById("closeButton").style.display = "none";
         
    }
        
        </script>


     
</body>
</html>