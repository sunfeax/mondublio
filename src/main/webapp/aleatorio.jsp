<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/bootstrap.min.js" type="text/javascript"></script>        
        <title>Generación de números aleatorios</title>
    </head>
    <body>
        <h1>Generación de números aleatorios</h1>
        <%
            // Generación de números aleatorios
            int max = 10;
            int min = 1;
            Random rand = new Random();
            int randomNum = rand.nextInt((max - min) + 1) + min;
            out.print("<h2>El número generado es el... " + randomNum + "</h2>");            
        %>
    </body>
</html>
