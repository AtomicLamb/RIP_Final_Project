<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 30/06/2023
  Time: 09:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Top Categories Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <style>
            .card {
                box-sizing: content-box;
                width: 700px;
                height: 2600px;
                padding: 30px;
                border: 1px solid black;
                font-style: sans-serif;
                background-color: #f0f0f0;
            }
        </style>
    </head>
    <body style="overflow-x: scroll;">
        <div class="container">
            <form action="editorServlet" method="get">
                <div class="button input-box">
                    <input style="color: white; background-color: black;" type="submit" name="submit" value="BACK TO EDITORS PAGE">
                </div><br><br>
            </form>
            <button id="pdfButton"><b>Click here to Generate report PDF</b></button>
            <div class="card" id="generatePDF">
                <div id="piechart"></div><br>
                <div id="barchart"></div><br>
                <div id="tablechart"></div>
            </div>
        </div>
        <script>
            var button = document.getElementById("pdfButton");
            var makepdf = document.getElementById("generatePDF");
            button.addEventListener("click", function () {
                var mywindow = window.open("", "PRINT", "height=700,width=700");
                mywindow.document.write(makepdf.innerHTML);
                mywindow.document.close();
                mywindow.focus();
                mywindow.print();
                return true;
            });
        </script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

        <script type="text/javascript">
            // Load google charts
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawPieChart);

            // Draw the chart and set the chart values
            function drawPieChart() {
                <%
                          List<Editor> editors = (List<Editor>) request.getAttribute("message");
                          Editor e=null, e1=null, e2=null, e3=null, e4=null, e5=null, e6=null, e7=null, e8=null, e9=null, e10=null,
                                  e11=null, e12=null, e13=null, e14=null, e15=null, e16=null, e17=null, e18=null, e19=null, e20=null,
                                  e21=null, e22=null, e23=null, e24=null, e25=null, e26=null, e27=null, e28=null, e29=null, e30=null;
                          
                          String editor=null, editor1=null, editor2=null, editor3=null, editor4=null, editor5=null, editor6=null, editor7=null,
                                  editor8=null, editor9=null, editor10=null, editor11=null, editor12=null, editor13=null,editor14=null, editor15=null,
                                  editor16=null, editor17=null, editor18=null, editor19=null, editor20=null, editor21=null, editor22=null, editor23=null,
                                  editor24=null, editor25=null, editor26=null, editor27=null, editor28=null, editor29=null, editor30=null;
                          
                          Double storiesEdited=null, storiesEdited1=null, storiesEdited2=null, storiesEdited3=null, storiesEdited4=null, storiesEdited5=null, storiesEdited6=null, storiesEdited7=null, storiesEdited8=null,
                                  storiesEdited9=null, storiesEdited10=null, storiesEdited11=null, storiesEdited12=null, storiesEdited13=null, storiesEdited14=null, storiesEdited15=null, storiesEdited16=null,
                                  storiesEdited17=null, storiesEdited18=null, storiesEdited19=null, storiesEdited20=null, storiesEdited21=null, storiesEdited22=null, storiesEdited23=null, storiesEdited24=null, 
                                  storiesEdited25=null, storiesEdited26=null, storiesEdited27=null, storiesEdited28=null, storiesEdited29=null, storiesEdited30=null;
                          
                          Integer count = 1;
                          
                          while(count <= editors.size())
                          {
                              switch(count)
                              {
                              case 1:
                                  e = editors.get(0);
                                  editor = e.getName();
                                  storiesEdited = e.getData();
                                  break;
                                        case 2:
                    e1 = editors.get(1);
                    editor1 = e1.getName();
                    storiesEdited1 = e1.getData();
                    break;
                case 3:
                    e2 = editors.get(2);
                    editor2 = e2.getName();
                    storiesEdited2 = e2.getData();
                    break;
                case 4:
                    e3 = editors.get(3);
                    editor3 = e3.getName();
                    storiesEdited3 = e3.getData();
                    break;
                case 5:
                    e4 = editors.get(4);
                    editor4 = e4.getName();
                    storiesEdited4 = e4.getData();
                    break;
                case 6:
                    e5 = editors.get(5);
                    editor5 = e5.getName();
                    storiesEdited5 = e5.getData();
                    break;
                 case 7:
                    e6 = editors.get(6);
                    editor6 = e6.getName();
                    storiesEdited6 = e6.getData();
                    break;
                case 8:
                    e7 = editors.get(7);
                    editor7 = e7.getName();
                    storiesEdited7 = e7.getData();
                    break;
                case 9:
                    e8 = editors.get(8);
                    editor8 = e8.getName();
                    storiesEdited8 = e8.getData();
                    break;
                case 10:
                    e9 = editors.get(9);
                    editor9 = e9.getName();
                    storiesEdited9 = e9.getData();
                    break;
                case 11:
                    e10 = editors.get(10);
                    editor10 = e10.getName();
                    storiesEdited10 = e10.getData();
                    break;
                case 12:
                    e11 = editors.get(11);
                    editor11 = e11.getName();
                    storiesEdited11 = e11.getData();
                    break;
                case 13:
                    e12 = editors.get(12);
                    editor12 = e12.getName();
                    storiesEdited12 = e12.getData();
                    break;
                case 14:
                    e13 = editors.get(13);
                    editor13 = e13.getName();
                    storiesEdited13 = e13.getData();
                    break;
                case 15:
                    e14 = editors.get(14);
                    editor14 = e14.getName();
                    storiesEdited14 = e14.getData();
                    break;
                case 16:
                    e15 = editors.get(15);
                    editor15 = e15.getName();
                    storiesEdited15 = e15.getData();
                    break;
                case 17:
                    e16 = editors.get(16);
                    editor16 = e16.getName();
                    storiesEdited16 = e16.getData();
                    break;
                case 18:
                    e17 = editors.get(17);
                    editor17 = e17.getName();
                    storiesEdited17 = e17.getData();
                    break;
                case 19:
                    e18 = editors.get(18);
                    editor18 = e18.getName();
                    storiesEdited18 = e18.getData();
                    break;
                case 20:
                    e19 = editors.get(19);
                    editor19 = e19.getName();
                    storiesEdited19 = e19.getData();
                    break;
                case 21:
                    e20 = editors.get(20);
                    editor20 = e20.getName();
                    storiesEdited20 = e20.getData();
                    break;
                case 22:
                    e21 = editors.get(21);
                    editor21 = e21.getName();
                    storiesEdited21 = e21.getData();
                    break;
                case 23:
                    e22 = editors.get(22);
                    editor22 = e22.getName();
                    storiesEdited22 = e22.getData();
                    break;
                case 24:
                    e23 = editors.get(23);
                    editor23 = e23.getName();
                    storiesEdited23 = e23.getData();
                    break;
                case 25:
                    e24 = editors.get(24);
                    editor24 = e24.getName();
                    storiesEdited24 = e24.getData();
                    break;
                case 26:
                    e25 = editors.get(25);
                    editor25 = e25.getName();
                    storiesEdited25 = e25.getData();
                    break;
                case 27:
                    e26 = editors.get(26);
                    editor26 = e26.getName();
                    storiesEdited26 = e26.getData();
                    break;
                case 28:
                    e27 = editors.get(27);
                    editor27 = e27.getName();
                    storiesEdited27 = e27.getData();
                    break;
                case 29:
                    e28 = editors.get(28);
                    editor28 = e28.getName();
                    storiesEdited28 = e28.getData();
                    break;
                case 30:
                    e29 = editors.get(29);
                    editor29 = e29.getName();
                    storiesEdited29 = e29.getData();
                    break;
                case 31:
                    e30 = editors.get(30);
                    editor30 = e30.getName();
                    storiesEdited30 = e30.getData();
                    break;
                              }
                              count++;
                          }
                          
                          
                           switch(editors.size())
                           {
                               case 1:
                          %>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited',
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                    ["<%=editor29%>" ,<%=storiesEdited29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                    ["<%=editor29%>" ,<%=storiesEdited29%>],
                    ["<%=editor30%>" ,<%=storiesEdited30%>];
                <%break;
                }%>

            ]);
                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Top Editors', 'width':700, 'height':700};

                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(data, options);
            }
        </script>
        <script type="text/javascript">
            // Load google charts
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawBarChart);

            // Draw the chart and set the chart values
            function drawBarChart() {

                <%
                switch(editors.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                    ["<%=editor29%>" ,<%=storiesEdited29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                    ["<%=editor29%>" ,<%=storiesEdited29%>],
                    ["<%=editor30%>" ,<%=storiesEdited30%>];
                <%break;
                }%>

            ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Top Editors', 'width':700, 'height':1000};

                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.BarChart(document.getElementById('barchart'));
                chart.draw(data, options);
            }
        </script>
        <script type="text/javascript">
            // Load google charts
            google.charts.load('current', {'packages':['table']});
            google.charts.setOnLoadCallback(drawTableChart);

            // Draw the chart and set the chart values
            function drawTableChart() {

                <%
                switch(editors.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Editor', 'Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                    ["<%=editor29%>" ,<%=storiesEdited29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Editor','Number of stories edited'],
                    ["<%=editor%>" ,<%=storiesEdited%>],
                    ["<%=editor1%>" ,<%=storiesEdited1%>],
                    ["<%=editor2%>" ,<%=storiesEdited2%>],
                    ["<%=editor3%>" ,<%=storiesEdited3%>],
                    ["<%=editor4%>" ,<%=storiesEdited4%>],
                    ["<%=editor5%>" ,<%=storiesEdited5%>],
                    ["<%=editor6%>" ,<%=storiesEdited6%>],
                    ["<%=editor7%>" ,<%=storiesEdited7%>],
                    ["<%=editor8%>" ,<%=storiesEdited8%>],
                    ["<%=editor9%>" ,<%=storiesEdited9%>],
                    ["<%=editor10%>" ,<%=storiesEdited10%>],
                    ["<%=editor11%>" ,<%=storiesEdited11%>],
                    ["<%=editor12%>" ,<%=storiesEdited12%>],
                    ["<%=editor13%>" ,<%=storiesEdited13%>],
                    ["<%=editor14%>" ,<%=storiesEdited14%>],
                    ["<%=editor15%>" ,<%=storiesEdited15%>],
                    ["<%=editor16%>" ,<%=storiesEdited16%>],
                    ["<%=editor17%>" ,<%=storiesEdited17%>],
                    ["<%=editor18%>" ,<%=storiesEdited18%>],
                    ["<%=editor19%>" ,<%=storiesEdited19%>],
                    ["<%=editor20%>" ,<%=storiesEdited20%>],
                    ["<%=editor21%>" ,<%=storiesEdited21%>],
                    ["<%=editor22%>" ,<%=storiesEdited22%>],
                    ["<%=editor23%>" ,<%=storiesEdited23%>],
                    ["<%=editor24%>" ,<%=storiesEdited24%>],
                    ["<%=editor25%>" ,<%=storiesEdited25%>],
                    ["<%=editor26%>" ,<%=storiesEdited26%>],
                    ["<%=editor27%>" ,<%=storiesEdited27%>],
                    ["<%=editor28%>" ,<%=storiesEdited28%>],
                    ["<%=editor29%>" ,<%=storiesEdited29%>],
                    ["<%=editor30%>" ,<%=storiesEdited30%>];
                <%break;
                }%>

            ]);

                // Optional; add a title and set the width and height of the chart
                var options = {
                    showRowNumber: true,
                    width: '100%',
                    height: '100%'
                };

                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.Table(document.getElementById('tablechart'));
                chart.draw(data, options);
            }
        </script>
    </body>
</html>


