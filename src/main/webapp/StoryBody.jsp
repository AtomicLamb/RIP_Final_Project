<!DOCTYPE html>
<html lang="en">
    <%@page import="TrialAndError.ReadersAreInnovators.Models.*"%>
    <%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
    
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
    <body style="background-color: #007791">
        <!-- header section start-->
        
        <%Story story=(Story)request.getAttribute("chosenStory");%>
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
            <form action="controllerServlet" method="get">
                <div class="login_text">
                    <input style="border: none;background-color: #343a40; color: #007791" class="nav-link" type="submit" name="submit" value="SIGN OUT" formnovalidate>
                </div>
            </form>
        </nav>
        <!-- header section start-->
        <!-- banner section start-->
        <div class="banner_section layout_padding">
            <div class="container">
                <h1 class="best_taital" style="color:#007791">REVIEW PENDING STORIES</h1>
                <%
                   String message = (String) request.getAttribute("message");
                    if(message!=null){
                %>
                <p><strong style ="color:red;"><%=message %></strong></p>
                <%}%>
            </div>
        </div><br><br>
            <%if(story!=null){%>
            <h1 class="jobs_text" style="text-align: center"><%=story.getTitle()%></h1>
            <p style="color: black; font-size: medium"><%=story.getStoryBody()%></p>
            <%}%>
            <%if(story==null){%>
            <p>NO STORY WAS SELECTED</p>
            <%}%>
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
         });})
         </script>
</body>
</html>