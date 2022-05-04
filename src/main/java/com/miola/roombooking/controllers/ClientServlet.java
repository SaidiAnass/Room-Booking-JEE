package com.miola.roombooking.controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ClientServlet", urlPatterns = "/*.client")
public class ClientServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();


        //========================== Admin's Actions ============================\\
        if (Path.equalsIgnoreCase("/list.client")) {
            // get clients list
            request.getRequestDispatcher("admin/clients/clients-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.client")) {
            request.getRequestDispatcher("admin/clients/add-client.jsp").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.client")) {
            // get infos and save action (add,edit,delete) to database
            request.getRequestDispatcher("admin/clients/clients-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.client")) {
            //            Long userID = Long.valueOf(request.getParameter("id"));
            // get id and go to edit client
            request.getRequestDispatcher("admin/clients/edit-client.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.client")) {


            // get id and go to delete client
            request.getRequestDispatcher("admin/clients/delete-client.jsp").forward(request, response);


            //========================== Client's Actions ============================\\
        }else if (Path.equalsIgnoreCase("/sign-in.client")) {
            // get infos and authenticate
            request.getRequestDispatcher("index.jsp").forward(request, response);
            //=========================================================================\\
        }else if (Path.equalsIgnoreCase("/register.client")) {
            // get infos and create account
            request.getRequestDispatcher("index.jsp").forward(request, response);
            //=========================================================================\\
        }else if (Path.equalsIgnoreCase("/index.client")) {
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
