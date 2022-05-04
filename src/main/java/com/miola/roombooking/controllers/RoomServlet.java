package com.miola.roombooking.controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "RoomServlet", value = "/*.room")
public class RoomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        //=========================================================================\\
        if (Path.equalsIgnoreCase("/list.room")) {
            // get rooms list
            request.getRequestDispatcher("views/rooms-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.room")) {
            request.getRequestDispatcher("views/add-room.jsp").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.room")) {
            // get infos and save action (add,edit,delete) to database
            request.getRequestDispatcher("views/rooms-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.room")) {
            //            Long userID = Long.valueOf(request.getParameter("id"));
            // get id and go to edit room
            request.getRequestDispatcher("views/edit-room.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.room")) {

            // get id and go to delete room
            request.getRequestDispatcher("views/delete-room.jsp").forward(request, response);
            //=========================================================================\\
        }else if (Path.equalsIgnoreCase("/sign-in.room")) {
            // get infos and authenticate
            request.getRequestDispatcher("index.jsp").forward(request, response);
            //=========================================================================\\
        }else if (Path.equalsIgnoreCase("/register.room")) {
            // get infos and create account
            request.getRequestDispatcher("index.jsp").forward(request, response);
            //=========================================================================\\
        }else if (Path.equalsIgnoreCase("/index.room")) {
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
