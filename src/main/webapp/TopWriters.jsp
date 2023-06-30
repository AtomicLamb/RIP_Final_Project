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
                          List<Writer> names = (List<Writer>) request.getAttribute("message");
                          Writer p=null, p1=null, p2=null, p3=null, p4=null, p5=null, p6=null, p7=null, p8=null, p9=null, p10=null,
                                  p11=null, p12=null, p13=null, p14=null, p15=null, p16=null, p17=null, p18=null, p19=null, p20=null,
                                  p21=null, p22=null, p23=null, p24=null, p25=null, p26=null, p27=null, p28=null, p29=null, p30=null;
                          
                          String name=null, name1=null, name2=null, name3=null, name4=null, name5=null, name6=null, name7=null,
                                  name8=null, name9=null, name10=null, name11=null, name12=null, name13=null,name14=null, name15=null,
                                  name16=null, name17=null, name18=null, name19=null, name20=null, name21=null, name22=null, name23=null,
                                  name24=null, name25=null, name26=null, name27=null, name28=null, name29=null, name30=null;
                          
                          Double age=null, age1=null, age2=null, age3=null, age4=null, age5=null, age6=null, age7=null, age8=null,
                                  age9=null, age10=null, age11=null, age12=null, age13=null, age14=null, age15=null, age16=null,
                                  age17=null, age18=null, age19=null, age20=null, age21=null, age22=null, age23=null, age24=null, 
                                  age25=null, age26=null, age27=null, age28=null, age29=null, age30=null;
                          
                          Integer count = 1;
                          
                          while(count <= names.size())
                          {
                              switch(count)
                              {
                              case 1:
                                  p = names.get(0);
                                  name = p.getName();
                                  age = p.getData();
                                  break;
                                        case 2:
                    p1 = names.get(1);
                    name1 = p1.getName();
                    age1 = p1.getData();
                    break;
                case 3:
                    p2 = names.get(2);
                    name2 = p2.getName();
                    age2 = p2.getData();
                    break;
                case 4:
                    p3 = names.get(3);
                    name3 = p3.getName();
                    age3 = p3.getData();
                    break;
                case 5:
                    p4 = names.get(4);
                    name4 = p4.getName();
                    age4 = p4.getData();
                    break;
                case 6:
                    p5 = names.get(5);
                    name5 = p5.getName();
                    age5 = p5.getData();
                    break;
                 case 7:
                    p6 = names.get(6);
                    name6 = p6.getName();
                    age6 = p6.getData();
                    break;
                case 8:
                    p7 = names.get(7);
                    name7 = p7.getName();
                    age7 = p7.getData();
                    break;
                case 9:
                    p8 = names.get(8);
                    name8 = p8.getName();
                    age8 = p8.getData();
                    break;
                case 10:
                    p9 = names.get(9);
                    name9 = p9.getName();
                    age9 = p9.getData();
                    break;
                case 11:
                    p10 = names.get(10);
                    name10 = p10.getName();
                    age10 = p10.getData();
                    break;
                case 12:
                    p11 = names.get(11);
                    name11 = p11.getName();
                    age11 = p11.getData();
                    break;
                case 13:
                    p12 = names.get(12);
                    name12 = p12.getName();
                    age12 = p12.getData();
                    break;
                case 14:
                    p13 = names.get(13);
                    name13 = p13.getName();
                    age13 = p13.getData();
                    break;
                case 15:
                    p14 = names.get(14);
                    name14 = p14.getName();
                    age14 = p14.getData();
                    break;
                case 16:
                    p15 = names.get(15);
                    name15 = p15.getName();
                    age15 = p15.getData();
                    break;
                case 17:
                    p16 = names.get(16);
                    name16 = p16.getName();
                    age16 = p16.getData();
                    break;
                case 18:
                    p17 = names.get(17);
                    name17 = p17.getName();
                    age17 = p17.getData();
                    break;
                case 19:
                    p18 = names.get(18);
                    name18 = p18.getName();
                    age18 = p18.getData();
                    break;
                case 20:
                    p19 = names.get(19);
                    name19 = p19.getName();
                    age19 = p19.getData();
                    break;
                case 21:
                    p20 = names.get(20);
                    name20 = p20.getName();
                    age20 = p20.getData();
                    break;
                case 22:
                    p21 = names.get(21);
                    name21 = p21.getName();
                    age21 = p21.getData();
                    break;
                case 23:
                    p22 = names.get(22);
                    name22 = p22.getName();
                    age22 = p22.getData();
                    break;
                case 24:
                    p23 = names.get(23);
                    name23 = p23.getName();
                    age23 = p23.getData();
                    break;
                case 25:
                    p24 = names.get(24);
                    name24 = p24.getName();
                    age24 = p24.getData();
                    break;
                case 26:
                    p25 = names.get(25);
                    name25 = p25.getName();
                    age25 = p25.getData();
                    break;
                case 27:
                    p26 = names.get(26);
                    name26 = p26.getName();
                    age26 = p26.getData();
                    break;
                case 28:
                    p27 = names.get(27);
                    name27 = p27.getName();
                    age27 = p27.getData();
                    break;
                case 29:
                    p28 = names.get(28);
                    name28 = p28.getName();
                    age28 = p28.getData();
                    break;
                case 30:
                    p29 = names.get(29);
                    name29 = p29.getName();
                    age29 = p29.getData();
                    break;
                case 31:
                    p30 = names.get(30);
                    name30 = p30.getName();
                    age30 = p30.getData();
                    break;
                              }
                              count++;
                          }
                          
                          
                           switch(names.size())
                           {
                               case 1:
                          %>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                    ["<%=name29%>" ,<%=age29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                    ["<%=name29%>" ,<%=age29%>],
                    ["<%=name30%>" ,<%=age30%>];
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
                switch(names.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                    ["<%=name29%>" ,<%=age29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                    ["<%=name29%>" ,<%=age29%>],
                    ["<%=name30%>" ,<%=age30%>];
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
                switch(names.size())
                     {
                         case 1:
                    %>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>]
                <% break; 
                
                case 2:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                <% break; 
                
               case 3:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                <% break; 
                
                case 4:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],

                <% break; 
                
                case 5:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],

                <% break; 
                
                case 6:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                <% break; 
                
                case 7:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],

                <% break; 
                
                case 8:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],

                <% break; 
                
                case 9:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],

                <% break; 
                
                case 10:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                <% break; 
                       
                       case 11:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],

                <% break; 
                
                case 12:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],

                <% break; 
               
               case 13:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],

                <% break; 
               
               case 14:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],

                <% break; 
                
                case 15:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],

                <% break; 
                
                case 16:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],

                <% break; 
                
                case 17:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                <% break; 
                
                case 18:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                <% break; 
                
                case 19:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                <% break; 
                
                case 20:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                <% break; 
                
                case 21:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                <% break; 
                
                case 22:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                <% break; 
                
                case 23:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                <% break; 
               
               case 24:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                <% break; 
                
                case 25:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                <% break; 
                
                case 26:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                <% break; 
                
                case 27:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                <% break; 
                
                case 28:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                <% break; 
                
                case 29:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                <% break; 
                
                case 30:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                    ["<%=name29%>" ,<%=age29%>],
                <% break; 
                        
                        case 31:%>
                var data = google.visualization.arrayToDataTable([['Writer','Views across all author stories'],
                    ["<%=name%>" ,<%=age%>],
                    ["<%=name1%>" ,<%=age1%>],
                    ["<%=name2%>" ,<%=age2%>],
                    ["<%=name3%>" ,<%=age3%>],
                    ["<%=name4%>" ,<%=age4%>],
                    ["<%=name5%>" ,<%=age5%>],
                    ["<%=name6%>" ,<%=age6%>],
                    ["<%=name7%>" ,<%=age7%>],
                    ["<%=name8%>" ,<%=age8%>],
                    ["<%=name9%>" ,<%=age9%>],
                    ["<%=name10%>" ,<%=age10%>],
                    ["<%=name11%>" ,<%=age11%>],
                    ["<%=name12%>" ,<%=age12%>],
                    ["<%=name13%>" ,<%=age13%>],
                    ["<%=name14%>" ,<%=age14%>],
                    ["<%=name15%>" ,<%=age15%>],
                    ["<%=name16%>" ,<%=age16%>],
                    ["<%=name17%>" ,<%=age17%>],
                    ["<%=name18%>" ,<%=age18%>],
                    ["<%=name19%>" ,<%=age19%>],
                    ["<%=name20%>" ,<%=age20%>],
                    ["<%=name21%>" ,<%=age21%>],
                    ["<%=name22%>" ,<%=age22%>],
                    ["<%=name23%>" ,<%=age23%>],
                    ["<%=name24%>" ,<%=age24%>],
                    ["<%=name25%>" ,<%=age25%>],
                    ["<%=name26%>" ,<%=age26%>],
                    ["<%=name27%>" ,<%=age27%>],
                    ["<%=name28%>" ,<%=age28%>],
                    ["<%=name29%>" ,<%=age29%>],
                    ["<%=name30%>" ,<%=age30%>];
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
