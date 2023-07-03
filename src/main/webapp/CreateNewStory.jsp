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
                <input style="width: 20%; background-color: #C2E0FF;" type="text" placeholder="Enter the book title" name="storyTitle" required><br><br><br>
              </div>
              <div class="input-box" style="font-size:20px;text-align:center;">
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
                <div class="input-box" style="font-size:20px;text-align:center;">
                <h2>Enter the synopsis</h2>
                <textarea style="background-color: #C2E0FF" type="text" name="storySynopsis" maxlength="1000" rows="4" cols="55" required>Enter your synopsis here. You have a maximum of 1000 characters.</textarea><br><br><br>
              </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                <h2>Type your story</h2>
                <textarea style="background-color: #C2E0FF" type="text" name="storyBody" maxlength="1000" rows="10" cols="100" required>Type your story here. You have a maximum of 1000 words.</textarea><br><br><br>
              </div>
                <button class="block" type="submit" name="submit" value="Submit Story">Submit</button><br><br><br>
                <button class="block" type="submit" name="submit" value="Save Story">Save Draft</button><br><br><br>
            </form>
        </div>
    </body>
</html>
