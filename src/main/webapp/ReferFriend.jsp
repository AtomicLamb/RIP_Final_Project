<%-- 
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
                <h1 class="best_taital" style="color:black">Refer A Friend</h1>
                <%
                    String message = (String) request.getAttribute("message");
                    if(message!=null){
                %>
                <p><strong style ="color:red;"><%=message %></strong></p>
                <%}%>


            </div>
        </div>
        <div> 
           <form action="HomePageServlet?submit=refer" method="post">
               Enter the email: <input type="email" name="email">
               <input type="submit" name="submit" value="Refer A Friend">
           </form> 
        </div>

    </body>
</html>
