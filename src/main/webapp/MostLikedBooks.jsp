<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 29/06/2023
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most Liked Books Page</title>
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
                var mywindow = window.open("", "PRINT", "height=700,width=700");        //
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
                          List<Story> stories = (List<Story>) request.getAttribute("message");
                          Story s=null, s1=null, s2=null, s3=null, s4=null, s5=null, s6=null, s7=null, s8=null, s9=null, s10=null,
                                  s11=null, s12=null, s13=null, s14=null, s15=null, s16=null, s17=null, s18=null, s19=null, s20=null,
                                  s21=null, s22=null, s23=null, s24=null, s25=null, s26=null, s27=null, s28=null, s29=null, s30=null;
                          
                          String title=null, title1=null, title2=null, title3=null, title4=null, title5=null, title6=null, title7=null,
                                  title8=null, title9=null, title10=null, title11=null, title12=null, title13=null,title14=null, title15=null,
                                  title16=null, title17=null, title18=null, title19=null, title20=null, title21=null, title22=null, title23=null,
                                  title24=null, title25=null, title26=null, title27=null, title28=null, title29=null, title30=null;
                          
                          Double likes=null, likes1=null, likes2=null, likes3=null, likes4=null, likes5=null, likes6=null, likes7=null, likes8=null,
                                  likes9=null, likes10=null, likes11=null, likes12=null, likes13=null, likes14=null, likes15=null, likes16=null,
                                  likes17=null, likes18=null, likes19=null, likes20=null, likes21=null, likes22=null, likes23=null, likes24=null, 
                                  likes25=null, likes26=null, likes27=null, likes28=null, likes29=null, likes30=null;
                          
                          Integer count = 1;
                          
                          while(count <= stories.size())
                          {
                              switch(count)
                              {
                              case 1:
                                  s = stories.get(0);
                                  title = s.getTitle();
                                  likes = s.getData();
                                  break;
                                        case 2:
                    s1 = stories.get(1);
                    title1 = s1.getTitle();
                    likes1 = s1.getData();
                    break;
                case 3:
                    s2 = stories.get(2);
                    title2 = s2.getTitle();
                    likes2 = s2.getData();
                    break;
                case 4:
                    s3 = stories.get(3);
                    title3 = s3.getTitle();
                    likes3 = s3.getData();
                    break;
                case 5:
                    s4 = stories.get(4);
                    title4 = s4.getTitle();
                    likes4 = s4.getData();
                    break;
                case 6:
                    s5 = stories.get(5);
                    title5 = s5.getTitle();
                    likes5 = s5.getData();
                    break;
                 case 7:
                    s6 = stories.get(6);
                    title6 = s6.getTitle();
                    likes6 = s6.getData();
                    break;
                case 8:
                    s7 = stories.get(7);
                    title7 = s7.getTitle();
                    likes7 = s7.getData();
                    break;
                case 9:
                    s8 = stories.get(8);
                    title8 = s8.getTitle();
                    likes8 = s8.getData();
                    break;
                case 10:
                    s9 = stories.get(9);
                    title9 = s9.getTitle();
                    likes9 = s9.getData();
                    break;
                case 11:
                    s10 = stories.get(10);
                    title10 = s10.getTitle();
                    likes10 = s10.getData();
                    break;
                case 12:
                    s11 = stories.get(11);
                    title11 = s11.getTitle();
                    likes11 = s11.getData();
                    break;
                case 13:
                    s12 = stories.get(12);
                    title12 = s12.getTitle();
                    likes12 = s12.getData();
                    break;
                case 14:
                    s13 = stories.get(13);
                    title13 = s13.getTitle();
                    likes13 = s13.getData();
                    break;
                case 15:
                    s14 = stories.get(14);
                    title14 = s14.getTitle();
                    likes14 = s14.getData();
                    break;
                case 16:
                    s15 = stories.get(15);
                    title15 = s15.getTitle();
                    likes15 = s15.getData();
                    break;
                case 17:
                    s16 = stories.get(16);
                    title16 = s16.getTitle();
                    likes16 = s16.getData();
                    break;
                case 18:
                    s17 = stories.get(17);
                    title17 = s17.getTitle();
                    likes17 = s17.getData();
                    break;
                case 19:
                    s18 = stories.get(18);
                    title18 = s18.getTitle();
                    likes18 = s18.getData();
                    break;
                case 20:
                    s19 = stories.get(19);
                    title19 = s19.getTitle();
                    likes19 = s19.getData();
                    break;
                case 21:
                    s20 = stories.get(20);
                    title20 = s20.getTitle();
                    likes20 = s20.getData();
                    break;
                case 22:
                    s21 = stories.get(21);
                    title21 = s21.getTitle();
                    likes21 = s21.getData();
                    break;
                case 23:
                    s22 = stories.get(22);
                    title22 = s22.getTitle();
                    likes22 = s22.getData();
                    break;
                case 24:
                    s23 = stories.get(23);
                    title23 = s23.getTitle();
                    likes23 = s23.getData();
                    break;
                case 25:
                    s24 = stories.get(24);
                    title24 = s24.getTitle();
                    likes24 = s24.getData();
                    break;
                case 26:
                    s25 = stories.get(25);
                    title25 = s25.getTitle();
                    likes25 = s25.getData();
                    break;
                case 27:
                    s26 = stories.get(26);
                    title26 = s26.getTitle();
                    likes26 = s26.getData();
                    break;
                case 28:
                    s27 = stories.get(27);
                    title27 = s27.getTitle();
                    likes27 = s27.getData();
                    break;
                case 29:
                    s28 = stories.get(28);
                    title28 = s28.getTitle();
                    likes28 = s28.getData();
                    break;
                case 30:
                    s29 = stories.get(29);
                    title29 = s29.getTitle();
                    likes29 = s29.getData();
                    break;
                case 31:
                    s30 = stories.get(30);
                    title30 = s30.getTitle();
                    likes30 = s30.getData();
                    break;
                              }
                              count++;
                          }
                          
                          
                           switch(stories.size())
                           {
                               case 1:
                          %>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                    ["<%=title29%>" ,<%=likes29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                    ["<%=title29%>" ,<%=likes29%>],
                    ["<%=title30%>" ,<%=likes30%>];
                <%break;
                }%>

            ]);
                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Most Liked Books', 'width':700, 'height':700};

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
                switch(stories.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                    ["<%=title29%>" ,<%=likes29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                    ["<%=title29%>" ,<%=likes29%>],
                    ["<%=title30%>" ,<%=likes30%>];
                <%break;
                }%>

            ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Most Liked Books', 'width':700, 'height':1000};

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
                switch(stories.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                    ["<%=title29%>" ,<%=likes29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Likes'],
                    ["<%=title%>" ,<%=likes%>],
                    ["<%=title1%>" ,<%=likes1%>],
                    ["<%=title2%>" ,<%=likes2%>],
                    ["<%=title3%>" ,<%=likes3%>],
                    ["<%=title4%>" ,<%=likes4%>],
                    ["<%=title5%>" ,<%=likes5%>],
                    ["<%=title6%>" ,<%=likes6%>],
                    ["<%=title7%>" ,<%=likes7%>],
                    ["<%=title8%>" ,<%=likes8%>],
                    ["<%=title9%>" ,<%=likes9%>],
                    ["<%=title10%>" ,<%=likes10%>],
                    ["<%=title11%>" ,<%=likes11%>],
                    ["<%=title12%>" ,<%=likes12%>],
                    ["<%=title13%>" ,<%=likes13%>],
                    ["<%=title14%>" ,<%=likes14%>],
                    ["<%=title15%>" ,<%=likes15%>],
                    ["<%=title16%>" ,<%=likes16%>],
                    ["<%=title17%>" ,<%=likes17%>],
                    ["<%=title18%>" ,<%=likes18%>],
                    ["<%=title19%>" ,<%=likes19%>],
                    ["<%=title20%>" ,<%=likes20%>],
                    ["<%=title21%>" ,<%=likes21%>],
                    ["<%=title22%>" ,<%=likes22%>],
                    ["<%=title23%>" ,<%=likes23%>],
                    ["<%=title24%>" ,<%=likes24%>],
                    ["<%=title25%>" ,<%=likes25%>],
                    ["<%=title26%>" ,<%=likes26%>],
                    ["<%=title27%>" ,<%=likes27%>],
                    ["<%=title28%>" ,<%=likes28%>],
                    ["<%=title29%>" ,<%=likes29%>],
                    ["<%=title30%>" ,<%=likes30%>];
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
