<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %><%-- 
    Document   : EditDraft
    Created on : 15 Jun 2023, 14:37:13
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Draft</title>
        <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <%Story draft=(Story)request.getAttribute("draft");%>
        <div class="myContainer">
            <h1 style="font-size:50px;text-align:center;">EDIT DRAFT</h1><br><br>
            <%if(draft!=null){%>
            <form action="writerServlet" method="post" enctype="multipart/form-data">
              <div class="input-box" style="font-size:20px;text-align:center;">
                <h2>Edit the book title</h2>
                <input style="width: 20%" type="text" value="<%=draft.getTitle()%>" name="storyTitle" required><br><br>
              </div>
              <div class="input-box" style="font-size:20px;text-align:center;">
                  <h2>Current cover image</h2>
                  <img src="data:image/png;base64,<%=draft.getCoverImage()%>" alt="<%=draft.getTitle()%>"  style="width:400px;height:400px;" >
              </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                  <h2>Select a new story cover image</h2>
                <input style="width: 20%" type="file" name="fileImage" accept="image/*"><br><br>
              </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>Would you like comments enabled:</h2>
                    <input type="radio" id="yes" name="commentsEnabled" value="yes" required>
                      <label for="yes">Yes</label><br>
                      <input type="radio" id="no" name="commentsEnabled" value="no" required>
                      <label for="no">No</label>
                </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                <h2>Edit the synopsis</h2>
                    <label>
                        <textarea id="synopsis" type="text" name="storySynopsis" maxlength="1000" rows="4" cols="55" required><%=draft.getSynopsis()%></textarea>
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
                <h2>Edit your story</h2>
                    <label>
                        <textarea id="storyBody" type="text" name="storyBody" maxlength="1000" rows="10" cols="100" required><%=draft.getStoryBody()%></textarea>
                    </label>
                    <div class="output row">
                        <div>Characters: <span id="characterCount">0</span></div>
                        <div>Words: <span id="wordCount">0</span></div>
                    </div>
                    <div class="output row">
                        <div>Sentences: <span id="sentenceCount">0</span></div>
                        <div>Paragraphs: <span id="paragraphCount">0</span></div>
                    </div>
              </div><br><br><br>               
                <button class="block" type="submit" name="submit" value="Submit Draft">SUBMIT DRAFT</button><br><br>
                <button class="block" type="submit" name="submit" value="Save Draft" >SAVE DRAFT</button><br><br>
                <button class="block" type="submit" name="submit" value="Delete Draft" formnovalidate>DELETE DRAFT</button><br><br>
                <button class="block" type="submit" name="submit" value="BACK TO WRITER PAGE" >BACK TO WRITER PAGE</button><br><br>
            </form>
            <%}%>
            <%if(draft==null){%>
            <p>NO DRAFT SELECTED</p>
            <%}%>
        </div>
        <script src="js/word_count_story.js"></script>
        <script src="js/word_count_synopsis.js"></script>
    </body>
</html>

