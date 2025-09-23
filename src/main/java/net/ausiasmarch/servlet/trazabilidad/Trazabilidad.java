package net.ausiasmarch.servlet.trazabilidad;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/traza")
public class Trazabilidad extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession oSession = request.getSession();

        Integer numero = 1;

        if (oSession.getAttribute("num") == null) {
            numero = 1;
        } else {
            numero = (Integer) oSession.getAttribute("num");
            numero++;
        }
        oSession.setAttribute("num", numero);
        //mostrar el numero en una pagina html
        response.setContentType("text/html");
        response.getWriter().println("<html><body><h1>Numero: " + numero + "</h1></body></html>");

    }
}
