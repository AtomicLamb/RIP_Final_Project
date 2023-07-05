<%-- 
    Document   : AnalyticCharts
    Created on : 23 Jun 2023, 08:56:21
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most Viewed Books Page</title>
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
                          List<Story> stories = (List<Story>) request.getAttribute("message");
                          Story s=null, s1=null, s2=null, s3=null, s4=null, s5=null, s6=null, s7=null, s8=null, s9=null, s10=null,
                                  s11=null, s12=null, s13=null, s14=null, s15=null, s16=null, s17=null, s18=null, s19=null, s20=null,
                                  s21=null, s22=null, s23=null, s24=null, s25=null, s26=null, s27=null, s28=null, s29=null, s30=null;
                          
                          String title=null, title1=null, title2=null, title3=null, title4=null, title5=null, title6=null, title7=null,
                                  title8=null, title9=null, title10=null, title11=null, title12=null, title13=null,title14=null, title15=null,
                                  title16=null, title17=null, title18=null, title19=null, title20=null, title21=null, title22=null, title23=null,
                                  title24=null, title25=null, title26=null, title27=null, title28=null, title29=null, title30=null;
                          
                          Double views=null, views1=null, views2=null, views3=null, views4=null, views5=null, views6=null, views7=null, views8=null,
                                  views9=null, views10=null, views11=null, views12=null, views13=null, views14=null, views15=null, views16=null,
                                  views17=null, views18=null, views19=null, views20=null, views21=null, views22=null, views23=null, views24=null, 
                                  views25=null, views26=null, views27=null, views28=null, views29=null, views30=null;
                          
                          Integer count = 1;
                          
                          while(count <= stories.size())
                          {
                              switch(count)
                              {
                              case 1:
                                  s = stories.get(0);
                                  title = s.getTitle();
                                  views = s.getData();
                                  break;
                                        case 2:
                    s1 = stories.get(1);
                    title1 = s1.getTitle();
                    views1 = s1.getData();
                    break;
                case 3:
                    s2 = stories.get(2);
                    title2 = s2.getTitle();
                    views2 = s2.getData();
                    break;
                case 4:
                    s3 = stories.get(3);
                    title3 = s3.getTitle();
                    views3 = s3.getData();
                    break;
                case 5:
                    s4 = stories.get(4);
                    title4 = s4.getTitle();
                    views4 = s4.getData();
                    break;
                case 6:
                    s5 = stories.get(5);
                    title5 = s5.getTitle();
                    views5 = s5.getData();
                    break;
                 case 7:
                    s6 = stories.get(6);
                    title6 = s6.getTitle();
                    views6 = s6.getData();
                    break;
                case 8:
                    s7 = stories.get(7);
                    title7 = s7.getTitle();
                    views7 = s7.getData();
                    break;
                case 9:
                    s8 = stories.get(8);
                    title8 = s8.getTitle();
                    views8 = s8.getData();
                    break;
                case 10:
                    s9 = stories.get(9);
                    title9 = s9.getTitle();
                    views9 = s9.getData();
                    break;
                case 11:
                    s10 = stories.get(10);
                    title10 = s10.getTitle();
                    views10 = s10.getData();
                    break;
                case 12:
                    s11 = stories.get(11);
                    title11 = s11.getTitle();
                    views11 = s11.getData();
                    break;
                case 13:
                    s12 = stories.get(12);
                    title12 = s12.getTitle();
                    views12 = s12.getData();
                    break;
                case 14:
                    s13 = stories.get(13);
                    title13 = s13.getTitle();
                    views13 = s13.getData();
                    break;
                case 15:
                    s14 = stories.get(14);
                    title14 = s14.getTitle();
                    views14 = s14.getData();
                    break;
                case 16:
                    s15 = stories.get(15);
                    title15 = s15.getTitle();
                    views15 = s15.getData();
                    break;
                case 17:
                    s16 = stories.get(16);
                    title16 = s16.getTitle();
                    views16 = s16.getData();
                    break;
                case 18:
                    s17 = stories.get(17);
                    title17 = s17.getTitle();
                    views17 = s17.getData();
                    break;
                case 19:
                    s18 = stories.get(18);
                    title18 = s18.getTitle();
                    views18 = s18.getData();
                    break;
                case 20:
                    s19 = stories.get(19);
                    title19 = s19.getTitle();
                    views19 = s19.getData();
                    break;
                case 21:
                    s20 = stories.get(20);
                    title20 = s20.getTitle();
                    views20 = s20.getData();
                    break;
                case 22:
                    s21 = stories.get(21);
                    title21 = s21.getTitle();
                    views21 = s21.getData();
                    break;
                case 23:
                    s22 = stories.get(22);
                    title22 = s22.getTitle();
                    views22 = s22.getData();
                    break;
                case 24:
                    s23 = stories.get(23);
                    title23 = s23.getTitle();
                    views23 = s23.getData();
                    break;
                case 25:
                    s24 = stories.get(24);
                    title24 = s24.getTitle();
                    views24 = s24.getData();
                    break;
                case 26:
                    s25 = stories.get(25);
                    title25 = s25.getTitle();
                    views25 = s25.getData();
                    break;
                case 27:
                    s26 = stories.get(26);
                    title26 = s26.getTitle();
                    views26 = s26.getData();
                    break;
                case 28:
                    s27 = stories.get(27);
                    title27 = s27.getTitle();
                    views27 = s27.getData();
                    break;
                case 29:
                    s28 = stories.get(28);
                    title28 = s28.getTitle();
                    views28 = s28.getData();
                    break;
                case 30:
                    s29 = stories.get(29);
                    title29 = s29.getTitle();
                    views29 = s29.getData();
                    break;
                case 31:
                    s30 = stories.get(30);
                    title30 = s30.getTitle();
                    views30 = s30.getData();
                    break;
                              }
                              count++;
                          }
                          
                          
                           switch(stories.size())
                           {
                               case 1:
                          %>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                    ["<%=title29%>" ,<%=views29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                    ["<%=title29%>" ,<%=views29%>],
                    ["<%=title30%>" ,<%=views30%>];
                <%break;
                }%>

            ]);
                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Most Viewed Books', 'width':700, 'height':700};

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
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                    ["<%=title29%>" ,<%=views29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                    ["<%=title29%>" ,<%=views29%>],
                    ["<%=title30%>" ,<%=views30%>];
                <%break;
                }%>

            ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Most Viewed Books', 'width':700, 'height':1000};

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
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                    ["<%=title29%>" ,<%=views29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Title','Views'],
                    ["<%=title%>" ,<%=views%>],
                    ["<%=title1%>" ,<%=views1%>],
                    ["<%=title2%>" ,<%=views2%>],
                    ["<%=title3%>" ,<%=views3%>],
                    ["<%=title4%>" ,<%=views4%>],
                    ["<%=title5%>" ,<%=views5%>],
                    ["<%=title6%>" ,<%=views6%>],
                    ["<%=title7%>" ,<%=views7%>],
                    ["<%=title8%>" ,<%=views8%>],
                    ["<%=title9%>" ,<%=views9%>],
                    ["<%=title10%>" ,<%=views10%>],
                    ["<%=title11%>" ,<%=views11%>],
                    ["<%=title12%>" ,<%=views12%>],
                    ["<%=title13%>" ,<%=views13%>],
                    ["<%=title14%>" ,<%=views14%>],
                    ["<%=title15%>" ,<%=views15%>],
                    ["<%=title16%>" ,<%=views16%>],
                    ["<%=title17%>" ,<%=views17%>],
                    ["<%=title18%>" ,<%=views18%>],
                    ["<%=title19%>" ,<%=views19%>],
                    ["<%=title20%>" ,<%=views20%>],
                    ["<%=title21%>" ,<%=views21%>],
                    ["<%=title22%>" ,<%=views22%>],
                    ["<%=title23%>" ,<%=views23%>],
                    ["<%=title24%>" ,<%=views24%>],
                    ["<%=title25%>" ,<%=views25%>],
                    ["<%=title26%>" ,<%=views26%>],
                    ["<%=title27%>" ,<%=views27%>],
                    ["<%=title28%>" ,<%=views28%>],
                    ["<%=title29%>" ,<%=views29%>],
                    ["<%=title30%>" ,<%=views30%>];
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
