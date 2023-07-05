<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 29/06/2023
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre" %>

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
                          List<Genre> genres = (List<Genre>) request.getAttribute("message");
                          Genre g=null, g1=null, g2=null, g3=null, g4=null, g5=null, g6=null, g7=null, g8=null, g9=null, g10=null,
                                  g11=null, g12=null, g13=null, g14=null, g15=null, g16=null, g17=null, g18=null, g19=null, g20=null,
                                  g21=null, g22=null, g23=null, g24=null, g25=null, g26=null, g27=null, g28=null, g29=null, g30=null;
                          
                          String genre=null, genre1=null, genre2=null, genre3=null, genre4=null, genre5=null, genre6=null, genre7=null,
                                  genre8=null, genre9=null, genre10=null, genre11=null, genre12=null, genre13=null,genre14=null, genre15=null,
                                  genre16=null, genre17=null, genre18=null, genre19=null, genre20=null, genre21=null, genre22=null, genre23=null,
                                  genre24=null, genre25=null, genre26=null, genre27=null, genre28=null, genre29=null, genre30=null;
                          
                          Double genreViews=null, genreViews1=null, genreViews2=null, genreViews3=null, genreViews4=null, genreViews5=null, genreViews6=null, genreViews7=null, genreViews8=null,
                                  genreViews9=null, genreViews10=null, genreViews11=null, genreViews12=null, genreViews13=null, genreViews14=null, genreViews15=null, genreViews16=null,
                                  genreViews17=null, genreViews18=null, genreViews19=null, genreViews20=null, genreViews21=null, genreViews22=null, genreViews23=null, genreViews24=null, 
                                  genreViews25=null, genreViews26=null, genreViews27=null, genreViews28=null, genreViews29=null, genreViews30=null;
                          
                          Integer count = 1;
                          
                          while(count <= genres.size())
                          {
                              switch(count)
                              {
                              case 1:
                                  g = genres.get(0);
                                  genre = g.getGenre();
                                  genreViews = g.getData();
                                  break;
                                        case 2:
                    g1 = genres.get(1);
                    genre1 = g1.getGenre();
                    genreViews1 = g1.getData();
                    break;
                case 3:
                    g2 = genres.get(2);
                    genre2 = g2.getGenre();
                    genreViews2 = g2.getData();
                    break;
                case 4:
                    g3 = genres.get(3);
                    genre3 = g3.getGenre();
                    genreViews3 = g3.getData();
                    break;
                case 5:
                    g4 = genres.get(4);
                    genre4 = g4.getGenre();
                    genreViews4 = g4.getData();
                    break;
                case 6:
                    g5 = genres.get(5);
                    genre5 = g5.getGenre();
                    genreViews5 = g5.getData();
                    break;
                 case 7:
                    g6 = genres.get(6);
                    genre6 = g6.getGenre();
                    genreViews6 = g6.getData();
                    break;
                case 8:
                    g7 = genres.get(7);
                    genre7 = g7.getGenre();
                    genreViews7 = g7.getData();
                    break;
                case 9:
                    g8 = genres.get(8);
                    genre8 = g8.getGenre();
                    genreViews8 = g8.getData();
                    break;
                case 10:
                    g9 = genres.get(9);
                    genre9 = g9.getGenre();
                    genreViews9 = g9.getData();
                    break;
                case 11:
                    g10 = genres.get(10);
                    genre10 = g10.getGenre();
                    genreViews10 = g10.getData();
                    break;
                case 12:
                    g11 = genres.get(11);
                    genre11 = g11.getGenre();
                    genreViews11 = g11.getData();
                    break;
                case 13:
                    g12 = genres.get(12);
                    genre12 = g12.getGenre();
                    genreViews12 = g12.getData();
                    break;
                case 14:
                    g13 = genres.get(13);
                    genre13 = g13.getGenre();
                    genreViews13 = g13.getData();
                    break;
                case 15:
                    g14 = genres.get(14);
                    genre14 = g14.getGenre();
                    genreViews14 = g14.getData();
                    break;
                case 16:
                    g15 = genres.get(15);
                    genre15 = g15.getGenre();
                    genreViews15 = g15.getData();
                    break;
                case 17:
                    g16 = genres.get(16);
                    genre16 = g16.getGenre();
                    genreViews16 = g16.getData();
                    break;
                case 18:
                    g17 = genres.get(17);
                    genre17 = g17.getGenre();
                    genreViews17 = g17.getData();
                    break;
                case 19:
                    g18 = genres.get(18);
                    genre18 = g18.getGenre();
                    genreViews18 = g18.getData();
                    break;
                case 20:
                    g19 = genres.get(19);
                    genre19 = g19.getGenre();
                    genreViews19 = g19.getData();
                    break;
                case 21:
                    g20 = genres.get(20);
                    genre20 = g20.getGenre();
                    genreViews20 = g20.getData();
                    break;
                case 22:
                    g21 = genres.get(21);
                    genre21 = g21.getGenre();
                    genreViews21 = g21.getData();
                    break;
                case 23:
                    g22 = genres.get(22);
                    genre22 = g22.getGenre();
                    genreViews22 = g22.getData();
                    break;
                case 24:
                    g23 = genres.get(23);
                    genre23 = g23.getGenre();
                    genreViews23 = g23.getData();
                    break;
                case 25:
                    g24 = genres.get(24);
                    genre24 = g24.getGenre();
                    genreViews24 = g24.getData();
                    break;
                case 26:
                    g25 = genres.get(25);
                    genre25 = g25.getGenre();
                    genreViews25 = g25.getData();
                    break;
                case 27:
                    g26 = genres.get(26);
                    genre26 = g26.getGenre();
                    genreViews26 = g26.getData();
                    break;
                case 28:
                    g27 = genres.get(27);
                    genre27 = g27.getGenre();
                    genreViews27 = g27.getData();
                    break;
                case 29:
                    g28 = genres.get(28);
                    genre28 = g28.getGenre();
                    genreViews28 = g28.getData();
                    break;
                case 30:
                    g29 = genres.get(29);
                    genre29 = g29.getGenre();
                    genreViews29 = g29.getData();
                    break;
                case 31:
                    g30 = genres.get(30);
                    genre30 = g30.getGenre();
                    genreViews30 = g30.getData();
                    break;
                              }
                              count++;
                          }
                          
                          
                           switch(genres.size())
                           {
                               case 1:
                          %>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                    ["<%=genre29%>" ,<%=genreViews29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                    ["<%=genre29%>" ,<%=genreViews29%>],
                    ["<%=genre30%>" ,<%=genreViews30%>];
                <%break;
                }%>

            ]);
                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Top Categories', 'width':700, 'height':700};

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
                switch(genres.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                    ["<%=genre29%>" ,<%=genreViews29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                    ["<%=genre29%>" ,<%=genreViews29%>],
                    ["<%=genre30%>" ,<%=genreViews30%>];
                <%break;
                }%>

            ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Top Categories', 'width':700, 'height':1000};

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
                switch(genres.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                    ["<%=genre29%>" ,<%=genreViews29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Genre','Views Across Genre'],
                    ["<%=genre%>" ,<%=genreViews%>],
                    ["<%=genre1%>" ,<%=genreViews1%>],
                    ["<%=genre2%>" ,<%=genreViews2%>],
                    ["<%=genre3%>" ,<%=genreViews3%>],
                    ["<%=genre4%>" ,<%=genreViews4%>],
                    ["<%=genre5%>" ,<%=genreViews5%>],
                    ["<%=genre6%>" ,<%=genreViews6%>],
                    ["<%=genre7%>" ,<%=genreViews7%>],
                    ["<%=genre8%>" ,<%=genreViews8%>],
                    ["<%=genre9%>" ,<%=genreViews9%>],
                    ["<%=genre10%>" ,<%=genreViews10%>],
                    ["<%=genre11%>" ,<%=genreViews11%>],
                    ["<%=genre12%>" ,<%=genreViews12%>],
                    ["<%=genre13%>" ,<%=genreViews13%>],
                    ["<%=genre14%>" ,<%=genreViews14%>],
                    ["<%=genre15%>" ,<%=genreViews15%>],
                    ["<%=genre16%>" ,<%=genreViews16%>],
                    ["<%=genre17%>" ,<%=genreViews17%>],
                    ["<%=genre18%>" ,<%=genreViews18%>],
                    ["<%=genre19%>" ,<%=genreViews19%>],
                    ["<%=genre20%>" ,<%=genreViews20%>],
                    ["<%=genre21%>" ,<%=genreViews21%>],
                    ["<%=genre22%>" ,<%=genreViews22%>],
                    ["<%=genre23%>" ,<%=genreViews23%>],
                    ["<%=genre24%>" ,<%=genreViews24%>],
                    ["<%=genre25%>" ,<%=genreViews25%>],
                    ["<%=genre26%>" ,<%=genreViews26%>],
                    ["<%=genre27%>" ,<%=genreViews27%>],
                    ["<%=genre28%>" ,<%=genreViews28%>],
                    ["<%=genre29%>" ,<%=genreViews29%>],
                    ["<%=genre30%>" ,<%=genreViews30%>];
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
