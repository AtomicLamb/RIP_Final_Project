<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Pending Writers Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>

        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">Review Pending Writers</h1><br><br>
                <ul class="grid w-full gap-6 md:grid-cols-3">
                    <%
                        List<WriterApplication> writers = (List<WriterApplication>) request.getAttribute("pendingWritersList");
                        for (WriterApplication wa: writers)
                        {
                    %>
                    <li>
                        <input type="checkbox" id="react-option" value="" class="hidden peer" required="">
                        <label for="react-option" class="inline-flex items-center justify-between w-full p-5 text-gray-500 bg-white border-2 border-gray-200 rounded-lg cursor-pointer dark:hover:text-gray-300 dark:border-gray-700 peer-checked:border-blue-600 hover:text-gray-600 dark:peer-checked:text-gray-300 peer-checked:text-gray-600 hover:bg-gray-50 dark:text-gray-400 dark:bg-gray-800 dark:hover:bg-gray-700">
                            <div class="block">
                                <div class="w-full text-lg font-semibold">Name: <%= wa.getName()%></div>
                                <div class="w-full text-lg font-semibold">Email: <%= wa.getEmail()%> </div>
                                <div class="w-full text-sm">Motivation: <%= wa.getMotivation()%></div>
                            </div>
                        </label>
                    </li><br>
                    <%}%>
                </ul>
            
            <div class="forms">
                <div class="form-content">
                    <form action="editorServlet" method="post">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="email" placeholder="Enter the email of the user you would like to approve or deny." name="writerEmail" required>
                        </div>
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="APPROVE WRITER">
                        </div>
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="DENY WRITER">
                        </div>
                    </form>
                    <form action="editorServlet" method="get">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="BACK TO EDITORS PAGE" formnovalidate>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
