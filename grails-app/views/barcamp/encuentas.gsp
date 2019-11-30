<%--
  Created by IntelliJ IDEA.
  User: Edgar
  Date: 11/29/2019
  Time: 9:10 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Encuesta BarCamp</title>
</head>

<body>
<H1>Encuesta BarCamp</H1>
<g:form controller="barcamp" action="save" >
    <label>¿Las charlas donde usted participó cumplieron con sus expectativas? </label>
    <g:textField name="respuesta1"/><br/>
    <label>¿Los expositores mostraron tener dominio del tema?</label>
    <g:textField name="respuesta2"/><br/>
    <label>¿Las instalaciones del evento fueron confortables para usted?.</label>
    <g:textField name="respuesta3"/><br/>
    <label> ¿Tiene algún comentario para los organizadores? (Comentario).</label>
    <g:textField name="respuesta4"/><br/>
    <g:actionSubmit value="Save"/>
</g:form>
</body>
</html>
</body>
</html>