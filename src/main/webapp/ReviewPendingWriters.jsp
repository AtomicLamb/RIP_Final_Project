<%@ page import = "TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication" %>
<%@ page import = "java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 28/06/2023
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<html>
    <head>
        <title>Review Pending Writers Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <div class="Container" >
            <h1 style="font-size:50px;text-align:center;">Review Pending Writers</h1><br><br>
            <div class="scrollableList">
                <ul type="disc">
                    <%
                        List<WriterApplication> pendingWriters = (List<WriterApplication>) request.getAttribute("pendingWritersList");
                        for (WriterApplication wa: pendingWriters)
                        {
                    %>
                    <li> <strong style= "color:black;"><%=wa.getName()%> <%=wa.getSurname()%> [<%=wa.getEmail()%>] "<%=wa.getMotivation()%>"</strong></li><br>
                    <%}%>
                </ul>
            </div>
            <div class="forms">
                <div class="form-content">
                    <form action="editorServlet" method="post">
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="email" placeholder="Enter the email of the user you want to approve or deny for writer." name="writerEmail" required>
                        </div>
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="Approve Writer">
                        </div>
                        <div class="button input-box">
                            <input style="color: white; background-color: black;" type="submit" name="submit" value="Deny Writer">
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
