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
        <div class="myContainer" >
            <h1 style="font-size:50px;text-align:center;">EDIT DRAFT</h1><br><br>
            <form action="writerServlet" method="post" enctype="multipart/form-data">
              <div class="input-box" style="font-size:20px;text-align:center;">
                <h2>Enter the book title here</h2>
                <input style="width: 20%" type="text" placeholder="Enter the book title"  <%=draft.getTitle()%> name="storyTitle" required><br><br>
              </div>
              <div class="input-box" style="font-size:20px;text-align:center;">
                  <h2>Current cover image</h2>
                  <img src="data:image/png;base64,<%=draft.getCoverImage()%>" alt="<%=draft.getTitle()%>" style="width:400px;height:400px;" >
                <h2>Select the story cover image</h2>
                <input style="width: 20%" type="file" name="fileImage" accept="image/*" required><br><br>
              </div>
                <div class="input-box" style="font-size:20px;text-align:center;"><%=draft.getTitle()%>
                <h2>Enter the synopsis</h2> 
                <textarea type="text" name="storySynopsis" maxlength="1000" rows="4" cols="55" required>Enter your synopsis here. You have a maximum of 1000 characters. 
                <%=draft.getSynopsis()%></textarea><br><br>
              </div>
                <div class="input-box" style="font-size:20px;text-align:center;">
                <h2>Type your story</h2>
                <textarea type="text" name="storyBody" maxlength="1000" rows="10" cols="100" required>Type your story here. You have a maximum of 1000 words.  <%=draft.getStoryBody()%></textarea><br><br>
              </div>
                <input type="hidden" name="draftId" value="<%=draft.getStoryID()%>">
                <input type="hidden" name="draftTitle" value="<%=draft.getTitle()%>">
                <input type="hidden" name="draftSynopsis" value="<%=draft.getSynopsis()%>">
                <input type="hidden" name="draftBody" value="<%=draft.getStoryBody()%>">
                <input type="hidden" name="authorId" value="<%=draft.getAuthorID()%>">
                 <input type="hidden" name="draftCommentsEnabled" value="<%=draft.getCommentsEnabled()%>">                                              
                <button class="block" type="submit" name="submit" value="Submit Draft">Submit</button><br><br>
                <button class="block" type="submit" name="submit" value="Save Draft" formnovalidate>Save Draft</button><br><br>
            </form>
        </div>
    </body>
</html>

