<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %><%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 28/06/2023
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create New Story Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <%Story story=(Story)request.getAttribute("story");%>
        <div class="myContainer" >
            <h1 style="font-size:50px;text-align:center;">Review Pending Story</h1><br><br>
            <form action="editorServlet" method="post">
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2> The Book Title here</h2>
                    <input style="width: 20%" type="text" placeholder="<%=story.getTitle()%>>" name="storyTitle" required><br><br>
                </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>Book Cover image</h2>
                    <img src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                  </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>The Synopsis</h2>
                    <textarea type="text" name="storySynopsis" maxlength="1000" rows="4" cols="55" required><%=story.getSynopsis()%>></textarea><br><br>
                </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>The Story</h2>
                    <textarea type="text" name="storyBody" maxlength="1000" rows="10" cols="100" required><%=story.getStoryBody()%>>.</textarea><br><br>
                </div>
                <button class="block" type="submit" name="submit" value="Accept">Deny Story</button><br><br>
                <button class="block" type="submit" name="submit" value="Deny">Accept Story</button><br><br>
            </form>
        </div>
    </body>
</html>

