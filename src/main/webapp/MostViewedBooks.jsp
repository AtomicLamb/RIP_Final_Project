<%-- 
    Document   : MostViewedBooks
    Created on : 20 Jun 2023, 09:19:13
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList"%>
<%@page import = "java.util.List"%>
<%@page import = "Model.Person"%>
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
         width: 600px;
         height: 1200px;
         padding: 30px;
         border: 1px solid black;
         font-style: sans-serif;
         background-color: #f0f0f0;
      }
   </style>
    </head>
    <body style="overflow-x: scroll;">
        <div class="container" id="containerTop3">
      <button id="pdfButton"><b>Click here to Generate report PDF</b></button>
      <div class="card" id="generatePDF">
         <div id="piechart"></div><br><br>
      </div>
   </div>   
   <script>
      var button = document.getElementById("pdfButton");
      var makepdf = document.getElementById("generatePDF");
      button.addEventListener("click", function () {
         var mywindow = window.open("", "PRINT", "height=800,width=600");
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
google.charts.setOnLoadCallback(drawPieChartTop3);

// Draw the chart and set the chart values
function drawPieChartTop3() {
  <%
            List<Person> names = (List<Person>) request.getAttribute("message");
            Person person1 = names.get(1);
            String name1 = person1.getName();
            Integer age1 = person1.getAge();
            
            Person p2 = names.get(0);
            String name2 = p2.getName();
            Integer age2 = p2.getAge();
            
            Person p3 = names.get(2);
            String name3 = p3.getName();
            Integer age3 = p3.getAge();
            
            Person p4 = names.get(3);
            String name4 = p4.getName();
            Integer age4 = p4.getAge();
            
            
            %>;
  
            var data = google.visualization.arrayToDataTable([['name','age'],
                ["<%=name1%>" ,<%=age1%>],
                ["<%=name2%>" ,<%=age2%>],
                ["<%=name3%>" ,<%=age3%>],
                ["<%=name4%>" ,<%=age4%>]
            ]);
  // Optional; add a title and set the width and height of the chart
  var options = {'title':'My Average Day', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
    </body>
</html>
