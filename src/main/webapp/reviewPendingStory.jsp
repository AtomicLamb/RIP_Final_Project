 
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication" %>
 <%--
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
        <%StoryApplication story=(StoryApplication) request.getAttribute("pendingStory");%>
        <div class="myContainer" >
            <h1 style="font-size:50px;text-align:center;">Review Pending Story</h1><br><br>
            <form action="editorServlet" method="post">
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2> The Book Title here can be edited</h2>
                    <input style="width: 20%" type="text" value="<%=story.getTitle()%>" name="storyTitle" required><br><br>
                </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>Book Cover image</h2>
                    <img  src="data:image/png;base64,<%=story.getCoverImage()%>" alt="<%=story.getTitle()%>" style="width:400px;height:400px;" >
                  </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>The Synopsis can be edited</h2>
                    <label>
                        <textarea id="synopsis" type="text" name="storySynopsis" maxlength="995" rows="4" cols="55" required><%=story.getSynopsis()%></textarea>
                    </label>
                    <div class="output row">
                        <div>Characters: <span id="charCount">0</span></div>
                        <div>Words: <span id="wrdCount">0</span></div>
                    </div>
                    <div class="output row">
                        <div>Sentences: <span id="sentCount">0</span></div>
                        <div>Paragraphs: <span id="parCount">0</span></div>
                    </div>
                </div><br><br>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>The Story can be edited</h2>
                    <label>
                        <textarea id="storyBody" type="text" name="storyBody" rows="10" cols="100" required><%=story.getStoryBody()%>.</textarea>
                    </label>
                    <div class="output row">
                        <div>Characters: <span id="characterCount">0</span></div>
                        <div>Words: <span id="wordCount">0</span></div>
                    </div>
                    <div class="output row">
                        <div>Sentences: <span id="sentenceCount">0</span></div>
                        <div>Paragraphs: <span id="paragraphCount">0</span></div>
                    </div>
                </div><br><br>
                
                <input type="hidden" name="pendingstoryId" value="<%=story.getPendingStoryID()%>">
                <input type="hidden" name="storyTitle" value="<%=story.getTitle()%>">
                <input type="hidden" name="storySynopsis" value="<%=story.getSynopsis()%>">
                <input type="hidden" name="storyBody" value="<%=story.getStoryBody()%>">
                <input type="hidden" name="storyCommentsEnabled" value="<%=story.getCommentsEnabled()%>">
                <input type="hidden" name="authorId" value="<%=story.getAuthorID()%>">
                <input type="hidden"  name="coverImagePath" value="<%=story.getImagePath()%>">
                <input type="hidden" name="email" value="<%=story.getAuthorEmail()%>">
                <input type="hidden" name="number" value="<%=story.getAuthorPhoneNumber()%>">
                <%if(!story.getGenres().isEmpty()){%>
                <input type="hidden" name="genre1" value="<%=story.getGenres().get(0).getGenre()%>">
                <%}%>
                 <%if(story.getGenres().size()>=2){%>
                <input type="hidden" name="genre2" value="<%=story.getGenres().get(1).getGenre()%>">
                <%} else{%>
                <input type="hidden" name="genre2" value="null">
                <%}%>
                <%if(story.getGenres().size()>=3){%>
                <input type="hidden" name="genre3" value="<%=story.getGenres().get(2).getGenre()%>">
                <%} else{%>
                <input type="hidden" name="genre3" value="null">
                <%}%>
                <button class="block" type="submit" name="submit" value="ACCEPT">ACCEPT STORY</button><br><br>
            </form>
            <form action="editorServlet" method="get">
                <input type="hidden" name="pendingstoryId" value="<%=story.getPendingStoryID()%>">
                <button class="block" type="submit" name="submit" value="DENY">DENY STORY</button><br><br>
                <button class="block" type="submit" name="submit" value="BACK TO EDITORS PAGE">BACK TO EDITORS PAGE</button><br><br>
            </form>
        </div>
        <script src="js/word_count_story.js"></script>
        <script src="js/word_count_synopsis.js"></script>
    </body>
</html>