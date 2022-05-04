package com.miola.roombooking;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello JEE!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("<a href=\"srv1.srv\">Main Servlet 1</a>");
        out.println("<br /><a href=\"srv2.srv\">Main Servlet 2</a>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}