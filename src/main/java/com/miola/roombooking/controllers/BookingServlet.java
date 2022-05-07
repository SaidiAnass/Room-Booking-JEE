package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.BookingDao;
import com.miola.roombooking.dao.ClientDao;
import com.miola.roombooking.dao.RoomDao;
import com.miola.roombooking.models.Booking;
import com.miola.roombooking.models.Client;
import com.miola.roombooking.models.Room;
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
        ClientDao clientDao= new ClientDao();
        BookingDao bookingDao = new BookingDao();
        RoomDao roomDao = new RoomDao();

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
        //========================== Admin's Actions ============================\\
        else if (Path.equalsIgnoreCase("/login.booking")) {
            int roomId = Integer.parseInt(request.getParameter("roomId")) ;
            int numberOfNights = Integer.parseInt(request.getParameter("numberOfNights")) ;
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Client client = clientDao.getClientByEmailAndPassword(email,password);
            if (client != null) {
                request.getSession().setAttribute("loggedIn" , client);
                Room room = roomDao.getRoomById(roomId);
                Booking booking = new Booking(client.getClientId(), roomId,startDate,endDate,numberOfNights, room.getPrice()*numberOfNights);
                bookingDao.addBooking(booking);
                request.setAttribute("booking",booking);
                request.getRequestDispatcher("thank-you.jsp").forward(request, response);
            }
            request.getRequestDispatcher("admin/bookings/bookings-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/register.booking")) {
            // get bookings list
            request.getRequestDispatcher("admin/bookings/bookings-list.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
