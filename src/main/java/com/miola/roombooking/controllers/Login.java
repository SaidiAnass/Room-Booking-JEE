package com.miola.roombooking.controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Login", value = "*.auth")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        //========================== Admin's Actions ============================\\
        if (Path.equalsIgnoreCase("/sign-in.auth")) {
            // get infos and authenticate
            request.getRequestDispatcher("admin/index.jsp").forward(request, response);
            //=========================================================================\\
        }else if (Path.equalsIgnoreCase("/index.auth")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
            //=========================================================================\\
        }else{
            request.getRequestDispatcher("404.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
