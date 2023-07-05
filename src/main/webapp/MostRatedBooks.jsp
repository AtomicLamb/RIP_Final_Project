<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 29/06/2023
  Time: 21:27
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
        <title>Most Rated Books Page</title>
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
                </div>
            </form><br><br>
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
                          List<Story> stories = (List<Story>) request.getAttribute("message");
                          Story s=null, s1=null, s2=null, s3=null, s4=null, s5=null, s6=null, s7=null, s8=null, s9=null, s10=null,
                                  s11=null, s12=null, p13=null, s14=null, s15=null, s16=null, s17=null, s18=null, s19=null, s20=null,
                                  s21=null, s22=null, s23=null, s24=null, s25=null, s26=null, s27=null, s28=null, s29=null, s30=null;
                          
                          String title=null, title1=null, title2=null, title3=null, title4=null, title5=null, title6=null, title7=null,
                                  title8=null, title9=null, title10=null, title11=null, title12=null, title13=null,title14=null, title15=null,
                                  title16=null, title17=null, title18=null, title19=null, title20=null, title21=null, title22=null, title23=null,
                                  title24=null, title25=null, title26=null, title27=null, title28=null, title29=null, title30=null;
                          
                          Double ratingAverage=null, ratingAverage1=null, ratingAverage2=null, ratingAverage3=null, ratingAverage4=null, ratingAverage5=null, ratingAverage6=null, ratingAverage7=null, ratingAverage8=null,
                                  ratingAverage9=null, ratingAverage10=null, ratingAverage11=null, ratingAverage12=null, ratingAverage13=null, ratingAverage14=null, ratingAverage15=null, ratingAverage16=null,
                                  ratingAverage17=null, ratingAverage18=null, ratingAverage19=null, ratingAverage20=null, ratingAverage21=null, ratingAverage22=null, ratingAverage23=null, ratingAverage24=null, 
                                  ratingAverage25=null, ratingAverage26=null, ratingAverage27=null, ratingAverage28=null, ratingAverage29=null, ratingAverage30=null;
                          
                          Integer count = 1;
                          
                          while(count <= stories.size())
                          {
                              switch(count)
                              {
                              case 1:
                                  s = stories.get(0);
                                  title = s.getTitle();
                                  ratingAverage = s.getData();
                                  break;
                                        case 2:
                    s1 = stories.get(1);
                    title1 = s1.getTitle();
                    ratingAverage1 = s1.getData();
                    break;
                case 3:
                    s2 = stories.get(2);
                    title2 = s2.getTitle();
                    ratingAverage2 = s2.getData();
                    break;
                case 4:
                    s3 = stories.get(3);
                    title3 = s3.getTitle();
                    ratingAverage3 = s3.getData();
                    break;
                case 5:
                    s4 = stories.get(4);
                    title4 = s4.getTitle();
                    ratingAverage4 = s4.getData();
                    break;
                case 6:
                    s5 = stories.get(5);
                    title5 = s5.getTitle();
                    ratingAverage5 = s5.getData();
                    break;
                 case 7:
                    s6 = stories.get(6);
                    title6 = s6.getTitle();
                    ratingAverage6 = s6.getData();
                    break;
                case 8:
                    s7 = stories.get(7);
                    title7 = s7.getTitle();
                    ratingAverage7 = s7.getData();
                    break;
                case 9:
                    s8 = stories.get(8);
                    title8 = s8.getTitle();
                    ratingAverage8 = s8.getData();
                    break;
                case 10:
                    s9 = stories.get(9);
                    title9 = s9.getTitle();
                    ratingAverage9 = s9.getData();
                    break;
                case 11:
                    s10 = stories.get(10);
                    title10 = s10.getTitle();
                    ratingAverage10 = s10.getData();
                    break;
                case 12:
                    s11 = stories.get(11);
                    title11 = s11.getTitle();
                    ratingAverage11 = s11.getData();
                    break;
                case 13:
                    s12 = stories.get(12);
                    title12 = s12.getTitle();
                    ratingAverage12 = s12.getData();
                    break;
                case 14:
                    p13 = stories.get(13);
                    title13 = p13.getTitle();
                    ratingAverage13 = p13.getData();
                    break;
                case 15:
                    s14 = stories.get(14);
                    title14 = s14.getTitle();
                    ratingAverage14 = s14.getData();
                    break;
                case 16:
                    s15 = stories.get(15);
                    title15 = s15.getTitle();
                    ratingAverage15 = s15.getData();
                    break;
                case 17:
                    s16 = stories.get(16);
                    title16 = s16.getTitle();
                    ratingAverage16 = s16.getData();
                    break;
                case 18:
                    s17 = stories.get(17);
                    title17 = s17.getTitle();
                    ratingAverage17 = s17.getData();
                    break;
                case 19:
                    s18 = stories.get(18);
                    title18 = s18.getTitle();
                    ratingAverage18 = s18.getData();
                    break;
                case 20:
                    s19 = stories.get(19);
                    title19 = s19.getTitle();
                    ratingAverage19 = s19.getData();
                    break;
                case 21:
                    s20 = stories.get(20);
                    title20 = s20.getTitle();
                    ratingAverage20 = s20.getData();
                    break;
                case 22:
                    s21 = stories.get(21);
                    title21 = s21.getTitle();
                    ratingAverage21 = s21.getData();
                    break;
                case 23:
                    s22 = stories.get(22);
                    title22 = s22.getTitle();
                    ratingAverage22 = s22.getData();
                    break;
                case 24:
                    s23 = stories.get(23);
                    title23 = s23.getTitle();
                    ratingAverage23 = s23.getData();
                    break;
                case 25:
                    s24 = stories.get(24);
                    title24 = s24.getTitle();
                    ratingAverage24 = s24.getData();
                    break;
                case 26:
                    s25 = stories.get(25);
                    title25 = s25.getTitle();
                    ratingAverage25 = s25.getData();
                    break;
                case 27:
                    s26 = stories.get(26);
                    title26 = s26.getTitle();
                    ratingAverage26 = s26.getData();
                    break;
                case 28:
                    s27 = stories.get(27);
                    title27 = s27.getTitle();
                    ratingAverage27 = s27.getData();
                    break;
                case 29:
                    s28 = stories.get(28);
                    title28 = s28.getTitle();
                    ratingAverage28 = s28.getData();
                    break;
                case 30:
                    s29 = stories.get(29);
                    title29 = s29.getTitle();
                    ratingAverage29 = s29.getData();
                    break;
                case 31:
                    s30 = stories.get(30);
                    title30 = s30.getTitle();
                    ratingAverage30 = s30.getData();
                    break;
                              }
                              count++;
                          }
                          
                          
                           switch(stories.size())
                           {
                               case 1:
                          %>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average' ],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                    ["<%=title29%>" ,<%=ratingAverage29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                    ["<%=title29%>" ,<%=ratingAverage29%>],
                    ["<%=title30%>" ,<%=ratingAverage30%>];
                <%break;
                }%>

            ]);
                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Highest Rated Books', 'width':700, 'height':700};

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
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                    ["<%=title29%>" ,<%=ratingAverage29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                    ["<%=title29%>" ,<%=ratingAverage29%>],
                    ["<%=title30%>" ,<%=ratingAverage30%>];
                <%break;
                }%>

            ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Highest Rated Books', 'width':700, 'height':1000};

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
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                    ["<%=title29%>" ,<%=ratingAverage29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Rating Average'],
                    ["<%=title%>" ,<%=ratingAverage%>],
                    ["<%=title1%>" ,<%=ratingAverage1%>],
                    ["<%=title2%>" ,<%=ratingAverage2%>],
                    ["<%=title3%>" ,<%=ratingAverage3%>],
                    ["<%=title4%>" ,<%=ratingAverage4%>],
                    ["<%=title5%>" ,<%=ratingAverage5%>],
                    ["<%=title6%>" ,<%=ratingAverage6%>],
                    ["<%=title7%>" ,<%=ratingAverage7%>],
                    ["<%=title8%>" ,<%=ratingAverage8%>],
                    ["<%=title9%>" ,<%=ratingAverage9%>],
                    ["<%=title10%>" ,<%=ratingAverage10%>],
                    ["<%=title11%>" ,<%=ratingAverage11%>],
                    ["<%=title12%>" ,<%=ratingAverage12%>],
                    ["<%=title13%>" ,<%=ratingAverage13%>],
                    ["<%=title14%>" ,<%=ratingAverage14%>],
                    ["<%=title15%>" ,<%=ratingAverage15%>],
                    ["<%=title16%>" ,<%=ratingAverage16%>],
                    ["<%=title17%>" ,<%=ratingAverage17%>],
                    ["<%=title18%>" ,<%=ratingAverage18%>],
                    ["<%=title19%>" ,<%=ratingAverage19%>],
                    ["<%=title20%>" ,<%=ratingAverage20%>],
                    ["<%=title21%>" ,<%=ratingAverage21%>],
                    ["<%=title22%>" ,<%=ratingAverage22%>],
                    ["<%=title23%>" ,<%=ratingAverage23%>],
                    ["<%=title24%>" ,<%=ratingAverage24%>],
                    ["<%=title25%>" ,<%=ratingAverage25%>],
                    ["<%=title26%>" ,<%=ratingAverage26%>],
                    ["<%=title27%>" ,<%=ratingAverage27%>],
                    ["<%=title28%>" ,<%=ratingAverage28%>],
                    ["<%=title29%>" ,<%=ratingAverage29%>],
                    ["<%=title30%>" ,<%=ratingAverage30%>];
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
