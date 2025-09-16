<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<body>
    <h2>Welcome to JSTL Example!</h2>

    <p>The current time is:
        <fmt:formatDate value="<%= new java.util.Date() %>" pattern="HH:mm:ss" />
    </p>

    <h3>Lista con JSTL:</h3>
    <p>Lista completa: ${lista}</p>
    <c:forEach var="item" items="${lista}">
        <p>${item}</p>
    </c:forEach>

    <h3>Lista de elementos con scriptlets:</h3>
    <ul>
    <% 
        java.util.ArrayList<String> lista = (java.util.ArrayList<String>) request.getAttribute("lista");
        for (String item : lista) {
    %>
        <li><%= item %></li>
    <% } %>
    </ul>
    <h3>Debug temporal:</h3>
    <%-- debug temporal --%>
    <% java.util.Enumeration<String> names = request.getAttributeNames();
        out.println("<h4>Request attributes:</h4> <ul>");
        while (names.hasMoreElements()) {
            String n = names.nextElement();
            out.println("<li>" + n + " = " + request.getAttribute(n) + "</li>");
        }
        out.println("</ul>");
    %>
</body>
</html>
