<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 05/07/2023
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reasons For Denial Of Story</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <%
            String message = (String) request.getAttribute("message");
        %>
        <div class="container" style="height: 60%">
            <div class="cover">
                <div class="front">
                    <img src="images/reasonforDenial.jpg" alt="">
                    <div class="text">
                        <span class="text-1">"Rejection is the first step towards growth."</span>
                        <span class="text-2">-Tyler Schwegler</span>
                    </div>
                </div>
            </div>
            <div class="forms">
                <div class="form-content">
                    <div class="signup-form">
                        <div class="title">Reasons For Denial Of Story</div>
                        <p><%=message%></p>
                        <form action="editorServlet" method="post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    <label>
                                        <textarea type="text" name="denial" rows="4" cols="55">Enter the reasons for denial.</textarea>
                                    </label>
                                    <input type="hidden" name="pendingstoryId" value="<%=message%>">
                                </div>
                                <div class="button input-box">
                                    <input type="submit" name="submit" value="DENY STORY">
                                </div>
                            </div>
                        </form>
                        <form action="editorServlet" method="get">
                            <div class="button input-box">
                                <input type="submit" name="submit" value="BACK TO EDITORS PAGE">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
