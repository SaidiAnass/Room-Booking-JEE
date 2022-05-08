package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.BookingDao;
import com.miola.roombooking.dao.ClientDao;
import com.miola.roombooking.dao.RoomDao;
import com.miola.roombooking.models.Booking;
import com.miola.roombooking.models.Client;
import com.miola.roombooking.models.Room;
import com.miola.roombooking.utils.Functions;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@MultipartConfig
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
        // get all bookings and list them
        if (Path.equalsIgnoreCase("/list.booking")) {
            // get bookings list
            request.getRequestDispatcher("admin/bookings/bookings-list.jsp").forward(request, response);
        }
        // add booking to database
        else if (Path.equalsIgnoreCase("/add.booking")) {
            request.getRequestDispatcher("admin/bookings/add-booking.jsp").forward(request, response);

        }
        else if (Path.equalsIgnoreCase("/save.booking")) {
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
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Client client = clientDao.getClientByEmailAndPassword(email,password);

            String returnPage="index.jsp";
            if (client != null) {
                request.getSession().setAttribute("loggedIn" , client);
                Room room = roomDao.getRoomById(roomId);

                int numberOfNights = Functions.getNumberOfNights(startDate,endDate);
                if(numberOfNights == -1){
                    request.setAttribute("error", "Room is unvailable at tha date!");
                    returnPage = "404.jsp";
                }else{
                    Booking booking = new Booking(client.getClientId(), roomId,startDate,endDate,numberOfNights, room.getPrice()*numberOfNights);
                    boolean isBooked = bookingDao.addBooking(booking);
                    if(isBooked){
                        request.setAttribute("booking",booking);
                        request.setAttribute("room", room);
                        request.setAttribute("client", client);
                        returnPage = "thanks.jsp";
                    }else {
                        request.setAttribute("error", "Room is unvailable at tha date!");
                        returnPage = "404.jsp";
                    }
                }


            }

            request.getRequestDispatcher(returnPage).forward(request, response);
            return;


        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/register.booking")) {
            int roomId = Integer.parseInt(request.getParameter("roomId")) ;
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");

            Client client = new Client();
            client.setFirstName(request.getParameter("firstname"));
            client.setLastName(request.getParameter("lastname"));
            client.setPhoneNumber(request.getParameter("phonenumber"));
            client.setAddress(request.getParameter("address"));
            client.setEmail(request.getParameter("email"));
            client.setPassword(request.getParameter("password"));
            clientDao.addClient(client);

            String email = request.getParameter("email");
            String password = request.getParameter("password");
            client = clientDao.getClientByEmailAndPassword(email,password);



            String returnPage="index.jsp";
            if (client != null) {
                request.getSession().setAttribute("loggedIn" , client);
                Room room = roomDao.getRoomById(roomId);
                int numberOfNights = Functions.getNumberOfNights(startDate,endDate);
                if(numberOfNights == -1){
                    request.setAttribute("error", "Room is unvailable at tha date!");
                    returnPage = "404.jsp";
                }else{
                    Booking booking = new Booking(client.getClientId(), roomId,startDate,endDate,numberOfNights, room.getPrice()*numberOfNights);
                    boolean isBooked = bookingDao.addBooking(booking);
                    if(isBooked){
                        request.setAttribute("booking",booking);
                        request.setAttribute("room", room);
                        request.setAttribute("client", client);
                        returnPage = "thanks.jsp";
                    }else {
                        request.setAttribute("error", "Room is unvailable at tha date!");
                        returnPage = "404.jsp";
                    }
                }


            }

            request.getRequestDispatcher(returnPage).forward(request, response);
            return;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
