<%-- 
    Document   : CreateNewStory
    Created on : 14 Jun 2023, 09:54:01
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="myContainer" >
            <br><br><h1 style="font-size:50px;text-align:center;">CREATE NEW STORY</h1><br><br>
            <form action="writerServlet" method="post" enctype="multipart/form-data">
              <div class="input-box" style="font-size:20px;text-align:center;">
                <h2>Enter the book title here</h2>
                <input style="width: 50%; font-size: 32px ;background-color: #C2E0FF;" type="text" placeholder="Enter the book title" name="storyTitle" required><br><br><br>
              </div>
              <div class="input-box" style="font-size:20px;text-align:center; width: 70%">
                <h2>Select the story cover image</h2>
                <input style="width: 20%" type="file" name="fileImage" accept="image/*" required><br><br><br>
              </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>Would you like comments enabled:</h2>
                    <input type="radio" id="yes" name="commentsEnabled" value="yes" required>
                      <label for="yes">Yes</label><br><br>
                      <input type="radio" id="no" name="commentsEnabled" value="no" required>
                      <label for="no">No</label><br><br>
                </div>
                <div class="input-box" style="font-size:20px;text-align:center; width: 80%">
                <h2>Enter the synopsis</h2>
                    <label>
                        <textarea id="synopsis" style="background-color: #C2E0FF" type="text" name="storySynopsis" maxlength="995" rows="4" cols="55" required>Enter your synopsis here. You have a maximum of 1000 characters.</textarea>
                        <div class="output row">
                            <div>Characters: <span id="charCount">0</span></div>
                            <div>Words: <span id="wrdCount">0</span></div>
                        </div>
                        <div class="output row">
                            <div>Sentences: <span id="sentCount">0</span></div>
                            <div>Paragraphs: <span id="parCount">0</span></div>
                        </div>
                    </label>
              </div><br><br><br>
                <div class="input-box" style="font-size:20px;text-align:center;">
                    <h2>Type your story</h2>
                    <label>
                        <textarea id="storyBody" style="background-color: #C2E0FF" type="text" name="storyBody" rows="4" cols="55" required>Type your story here. You have a maximum of 1000 words.</textarea>
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
                <button class="block" type="submit" name="submit" value="Submit Story">SUBMIT STORY</button><br><br><br>
                <button class="block" type="submit" name="submit" value="Save Story">SAVE DRAFT</button><br><br><br>
            </form>
            <form action="writerServlet" method="get">
                <button class="block" type="submit" name="submit" value="BACK TO WRITER PAGE">BACK TO WRITER PAGE</button><br><br><br> 
            </form>
        </div>
        <script src="js/word_count_story.js"></script>
        <script src="js/word_count_synopsis.js"></script>
    </body>
</html>
