<%--
  Created by IntelliJ IDEA.
  User: TKS
  Date: 29/06/2023
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8"
         language = "java" %>
<%@page import = "java.util.List"%>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.StoryElements.Story" %>
<%@ page import = "TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Top Writers Page</title>
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
                          List<Writer> writers = (List<Writer>) request.getAttribute("message");
                          Writer w=null, w1=null, w2=null, w3=null, w4=null, w5=null, w6=null, w7=null, w8=null, w9=null, w10=null,
                                  w11=null, w12=null, w13=null, w14=null, w15=null, w16=null, w17=null, w18=null, w19=null, w20=null,
                                  w21=null, w22=null, w23=null, w24=null, w25=null, w26=null, w27=null, w28=null, w29=null, w30=null;
                          
                          String writer=null, writer1=null, writer2=null, writer3=null, writer4=null, writer5=null, writer6=null, writer7=null,
                                  writer8=null, writer9=null, writer10=null, writer11=null, writer12=null, writer13=null,writer14=null, writer15=null,
                                  writer16=null, writer17=null, writer18=null, writer19=null, writer20=null, writer21=null, writer22=null, writer23=null,
                                  writer24=null, writer25=null, writer26=null, writer27=null, writer28=null, writer29=null, writer30=null;
                          
                          Double views=null, views1=null, views2=null, views3=null, views4=null, views5=null, views6=null, views7=null, views8=null,
                                  views9=null, views10=null, views11=null, views12=null, views13=null, views14=null, views15=null, views16=null,
                                  views17=null, views18=null, views19=null, views20=null, views21=null, views22=null, views23=null, views24=null, 
                                  views25=null, views26=null, views27=null, views28=null, views29=null, views30=null;
                          
                          Integer count = 1;
                          
                          while(count <= writers.size())
                          {
                              switch(count)
                              {
                              case 1:
                                  w = writers.get(0);
                                  writer = w.getName();
                                  views = w.getData();
                                  break;
                                        case 2:
                    w1 = writers.get(1);
                    writer1 = w1.getName();
                    views1 = w1.getData();
                    break;
                case 3:
                    w2 = writers.get(2);
                    writer2 = w2.getName();
                    views2 = w2.getData();
                    break;
                case 4:
                    w3 = writers.get(3);
                    writer3 = w3.getName();
                    views3 = w3.getData();
                    break;
                case 5:
                    w4 = writers.get(4);
                    writer4 = w4.getName();
                    views4 = w4.getData();
                    break;
                case 6:
                    w5 = writers.get(5);
                    writer5 = w5.getName();
                    views5 = w5.getData();
                    break;
                 case 7:
                    w6 = writers.get(6);
                    writer6 = w6.getName();
                    views6 = w6.getData();
                    break;
                case 8:
                    w7 = writers.get(7);
                    writer7 = w7.getName();
                    views7 = w7.getData();
                    break;
                case 9:
                    w8 = writers.get(8);
                    writer8 = w8.getName();
                    views8 = w8.getData();
                    break;
                case 10:
                    w9 = writers.get(9);
                    writer9 = w9.getName();
                    views9 = w9.getData();
                    break;
                case 11:
                    w10 = writers.get(10);
                    writer10 = w10.getName();
                    views10 = w10.getData();
                    break;
                case 12:
                    w11 = writers.get(11);
                    writer11 = w11.getName();
                    views11 = w11.getData();
                    break;
                case 13:
                    w12 = writers.get(12);
                    writer12 = w12.getName();
                    views12 = w12.getData();
                    break;
                case 14:
                    w13 = writers.get(13);
                    writer13 = w13.getName();
                    views13 = w13.getData();
                    break;
                case 15:
                    w14 = writers.get(14);
                    writer14 = w14.getName();
                    views14 = w14.getData();
                    break;
                case 16:
                    w15 = writers.get(15);
                    writer15 = w15.getName();
                    views15 = w15.getData();
                    break;
                case 17:
                    w16 = writers.get(16);
                    writer16 = w16.getName();
                    views16 = w16.getData();
                    break;
                case 18:
                    w17 = writers.get(17);
                    writer17 = w17.getName();
                    views17 = w17.getData();
                    break;
                case 19:
                    w18 = writers.get(18);
                    writer18 = w18.getName();
                    views18 = w18.getData();
                    break;
                case 20:
                    w19 = writers.get(19);
                    writer19 = w19.getName();
                    views19 = w19.getData();
                    break;
                case 21:
                    w20 = writers.get(20);
                    writer20 = w20.getName();
                    views20 = w20.getData();
                    break;
                case 22:
                    w21 = writers.get(21);
                    writer21 = w21.getName();
                    views21 = w21.getData();
                    break;
                case 23:
                    w22 = writers.get(22);
                    writer22 = w22.getName();
                    views22 = w22.getData();
                    break;
                case 24:
                    w23 = writers.get(23);
                    writer23 = w23.getName();
                    views23 = w23.getData();
                    break;
                case 25:
                    w24 = writers.get(24);
                    writer24 = w24.getName();
                    views24 = w24.getData();
                    break;
                case 26:
                    w25 = writers.get(25);
                    writer25 = w25.getName();
                    views25 = w25.getData();
                    break;
                case 27:
                    w26 = writers.get(26);
                    writer26 = w26.getName();
                    views26 = w26.getData();
                    break;
                case 28:
                    w27 = writers.get(27);
                    writer27 = w27.getName();
                    views27 = w27.getData();
                    break;
                case 29:
                    w28 = writers.get(28);
                    writer28 = w28.getName();
                    views28 = w28.getData();
                    break;
                case 30:
                    w29 = writers.get(29);
                    writer29 = w29.getName();
                    views29 = w29.getData();
                    break;
                case 31:
                    w30 = writers.get(30);
                    writer30 = w30.getName();
                    views30 = w30.getData();
                    break;
                              }
                              count++;
                          }
                          
                          
                           switch(writers.size())
                           {
                               case 1:
                          %>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                    ["<%=writer29%>" ,<%=views29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                    ["<%=writer29%>" ,<%=views29%>],
                    ["<%=writer30%>" ,<%=views30%>];
                <%break;
                }%>

            ]);
                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Top Writers', 'width':700, 'height':700};

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
                switch(writers.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                    ["<%=writer29%>" ,<%=views29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                    ["<%=writer29%>" ,<%=views29%>],
                    ["<%=writer30%>" ,<%=views30%>];
                <%break;
                }%>

            ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'title':'Top Writers', 'width':700, 'height':1000};

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
                switch(writers.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                    ["<%=writer29%>" ,<%=views29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=writer%>" ,<%=views%>],
                    ["<%=writer1%>" ,<%=views1%>],
                    ["<%=writer2%>" ,<%=views2%>],
                    ["<%=writer3%>" ,<%=views3%>],
                    ["<%=writer4%>" ,<%=views4%>],
                    ["<%=writer5%>" ,<%=views5%>],
                    ["<%=writer6%>" ,<%=views6%>],
                    ["<%=writer7%>" ,<%=views7%>],
                    ["<%=writer8%>" ,<%=views8%>],
                    ["<%=writer9%>" ,<%=views9%>],
                    ["<%=writer10%>" ,<%=views10%>],
                    ["<%=writer11%>" ,<%=views11%>],
                    ["<%=writer12%>" ,<%=views12%>],
                    ["<%=writer13%>" ,<%=views13%>],
                    ["<%=writer14%>" ,<%=views14%>],
                    ["<%=writer15%>" ,<%=views15%>],
                    ["<%=writer16%>" ,<%=views16%>],
                    ["<%=writer17%>" ,<%=views17%>],
                    ["<%=writer18%>" ,<%=views18%>],
                    ["<%=writer19%>" ,<%=views19%>],
                    ["<%=writer20%>" ,<%=views20%>],
                    ["<%=writer21%>" ,<%=views21%>],
                    ["<%=writer22%>" ,<%=views22%>],
                    ["<%=writer23%>" ,<%=views23%>],
                    ["<%=writer24%>" ,<%=views24%>],
                    ["<%=writer25%>" ,<%=views25%>],
                    ["<%=writer26%>" ,<%=views26%>],
                    ["<%=writer27%>" ,<%=views27%>],
                    ["<%=writer28%>" ,<%=views28%>],
                    ["<%=writer29%>" ,<%=views29%>],
                    ["<%=writer30%>" ,<%=views30%>];
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
