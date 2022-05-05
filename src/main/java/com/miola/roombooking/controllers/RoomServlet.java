package com.miola.roombooking.controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "RoomServlet", value = "*.room")
public class RoomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        //========================== Admin's Actions ============================\\
        if (Path.equalsIgnoreCase("/list.room")) {
            // get rooms list
            request.getRequestDispatcher("admin/rooms/rooms-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.room")) {
            request.getRequestDispatcher("admin/rooms/add-room.jsp").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.room")) {
            // get infos and save action (add,edit,delete) to database
            request.getRequestDispatcher("admin/rooms/rooms-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.room")) {
            // Long userID = Long.valueOf(request.getParameter("id"));
            // get id and go to edit room
            request.getRequestDispatcher("admin/rooms/edit-room.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.room")) {
            // get id and go to delete room
            request.getRequestDispatcher("admin/rooms/delete-room.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
