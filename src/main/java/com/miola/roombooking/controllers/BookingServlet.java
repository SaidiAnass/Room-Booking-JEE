package com.miola.roombooking.controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "BookingServlet", value = "*.booking")
public class BookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        //========================== Admin's Actions ============================\\
        if (Path.equalsIgnoreCase("/list.booking")) {
            // get bookings list
            request.getRequestDispatcher("admin/bookings/bookings-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.booking")) {
            request.getRequestDispatcher("admin/bookings/add-booking.jsp").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.booking")) {
            // get infos and save action (add,edit,delete) to database
            request.getRequestDispatcher("admin/bookings/bookings-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.booking")) {
            // Long userID = Long.valueOf(request.getParameter("id"));
            // get id and go to edit booking
            request.getRequestDispatcher("admin/bookings/edit-booking.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.booking")) {
            // get id and go to delete booking
            request.getRequestDispatcher("admin/bookings/delete-booking.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
