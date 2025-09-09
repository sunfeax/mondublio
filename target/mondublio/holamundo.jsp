<%-- 
    Document   : holamundo
    Created on : 12-sep-2019, 13:25:10
    Author     : raznara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String valor = "Mundo";%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- ejercicio 1: comentario en HTML -->
        <%

            String nombre = "Rafa";

            // comentario en Java
            for (int i = 1; i <= 10; i++) {
                /* comentario en java
                multiline
                 */
        %>                            
        <h1>Rafa es el mejor</h1>
        <% } %>    
        <!-- ejercicio 2 -->
        <%
            for (int i = 1; i <= 10; i++) {
                out.print("<h1>Rafa es el mejor</h1>");
            }
        %>
        <!-- ejercicio 3 -->
        <%
            for (int i = 1; i <= 10; i++) {
                out.println("<h1>Rafa es el mejor</h1>");
            }
        %>
        <h1>ejercicio 4</h1>
        <!-- ejercicio 4 variables -->
        <%
            for (int i = 1; i <= 10; i++) {
                out.println("<h1>EL valor de i es: " + i + "</h1>");
            }
        %>

        <!-- ejercicio 5 variables -->
        <h1>ejercicio 5</h1>
        <%
            // comentario en Java
            for (int i = 1; i <= 10; i++) {
                /* comentario en java
                multiline
                 */
        %>                            
        <h1>El valor de i es ... <%=i%></h1>
        <% }%>  

        <!-- ejercicio 6 variables e if -->
        <h1>ejercicio 6</h1>
        <%
            // comentario en Java
            for (int i = 1; i <= 10; i++) {
                /* comentario en java
                multiline
                 */
                if (i < 5) {
        %>                            
        <h1>El valor de i es ... <%=i%></h1>
        <% } else {%>  
        <h1>******** El valor de i es ... <%=i%></h1>
        <% }
            }%>


        <h1>Hola <%=valor%></h1>


        <%@include file="incluir_estatica.jsp" %>  <!-- estática: en tiempo de compilacion -->

        
        
        <% String command = "hola"; %>
        <!-- dinámica: en tiempo de ejecución -->   
        <jsp:include page="incluir_dinamica.jsp" flush="true">                      
            <jsp:param name="p1" value="<%=command%>" />                
            <jsp:param name="p2" value="Rafa" /> 
        </jsp:include>
        
        
        
    </body>
</html>
