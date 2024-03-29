<%--
  Created by IntelliJ IDEA.
  User: Edgar
  Date: 12/2/2019
  Time: 8:42 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages':['corechart']});

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChartPregunta1);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChartPregunta1() {
            <g:each var="question" in="${pregunta}">
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Calificacion');
            data.addColumn('number', 'Porcentaje');
            data.addRows([
                ['¿Las charlas donde usted participó cumplieron con sus expectativas?', ${pregunta.respuesta1.sum()}],
                ['¿Los expositores mostraron tener dominio del tema?', ${pregunta.respuesta2.sum()}],
                ['¿Las instalaciones del evento fueron confortables para usted?', ${pregunta.respuesta3.sum()}],
            ]);
            </g:each>
            // Set chart options
            var options = {'title':'Mayor porcentaje de la encuesta para el Barcamp',
                'width':1600,
                'height':800};

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_pregunta1'));
            chart.draw(data, options);
        }
    </script>
    <title>Graficos</title>
</head>

<body>
<g:include view="layouts/menu.gsp"/>
<!--Div that will hold the pie chart-->
<div id="chart_pregunta1"></div>
</body>
</html>