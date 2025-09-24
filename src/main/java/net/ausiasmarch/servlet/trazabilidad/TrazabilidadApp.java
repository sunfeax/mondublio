package net.ausiasmarch.servlet.trazabilidad;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/trazaapp")
public class TrazabilidadApp extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext oApplication = request.getServletContext();

        Integer numero = 1;

        if (oApplication.getAttribute("num") == null) {
            numero = 1;
        } else {
            numero = (Integer) oApplication.getAttribute("num");
            numero++;
        }
        oApplication.setAttribute("num", numero);
        //mostrar el numero en una pagina html
        response.setContentType("text/html");
        response.getWriter().println("<html><body><h1>Contexto aplicación</h1><h1>Numero: " + numero + "</h1></body></html>");

    }
}
