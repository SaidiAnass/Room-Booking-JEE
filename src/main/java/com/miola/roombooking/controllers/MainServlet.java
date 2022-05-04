package com.miola.roombooking.controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "MainServlet", urlPatterns  = "*.srv")
public class MainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String path = request.getServletPath();
        HttpSession session = request.getSession();
        ServletContext context = request.getServletContext();
        request.setAttribute("session" , session);
        request.setAttribute("path" , path);
        request.setAttribute("context" , context);
        request.getRequestDispatcher("/index.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
