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
import java.util.LinkedList;

@MultipartConfig
@WebServlet(name = "BookingServlet", urlPatterns = "*.booking")
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
            LinkedList<Booking> bookingsList = bookingDao.getAllBookings();
            request.setAttribute("bookingsList" , bookingsList);
            request.getRequestDispatcher("admin/manage-bookings.jsp").forward(request, response);
        }
        // add booking to database
        else if (Path.equalsIgnoreCase("/add.booking")) {
            Booking booking = new Booking();
            booking.setClientId(Integer.parseInt(request.getParameter("clientId")));
            booking.setRoomId(Integer.parseInt(request.getParameter("roomId")));
            booking.setStartDate(request.getParameter("startDate"));
            booking.setEndDate(request.getParameter("endDate"));
            booking.setNumberONights(Functions.getNumberOfNights(booking.getStartDate(), booking.getEndDate()));
            if(roomDao.getRoomById(booking.getRoomId()) !=null){
                booking.setPrice(roomDao.getRoomById(booking.getRoomId()).getPrice() * booking.getNumberONights());
            }


            bookingDao.addBooking(booking);

            request.getRequestDispatcher("list.booking").forward(request, response);

        }
        //
        else if (Path.equalsIgnoreCase("/edit.booking")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id to edit: "+ id);

            Booking bookingToEdit = bookingDao.getBookingById(id);
            request.setAttribute("bookingToEdit" , bookingToEdit);

            request.getRequestDispatcher("admin/edit-booking.jsp").forward(request, response);
        }
        else if (Path.equalsIgnoreCase("/save.booking")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Booking booking = new Booking();
            booking.setClientId(Integer.parseInt(request.getParameter("clientId")));
            booking.setRoomId(Integer.parseInt(request.getParameter("roomId")));
            booking.setStartDate(request.getParameter("startDate"));
            booking.setEndDate(request.getParameter("endDate"));
            booking.setNumberONights(Functions.getNumberOfNights(booking.getStartDate(), booking.getEndDate()));
            if(roomDao.getRoomById(booking.getRoomId()) !=null){
                booking.setPrice(roomDao.getRoomById(booking.getRoomId()).getPrice() * booking.getNumberONights());
            }
            booking.setBookingId(id);

            bookingDao.updateBooking(booking);

            request.getRequestDispatcher("list.booking").forward(request, response);
        }
        // delete booking by id
        else if (Path.equalsIgnoreCase("/delete.booking")) {
            int id = Integer.parseInt(request.getParameter("id")) ;
            bookingDao.deleteBooking(bookingDao.getBookingById(id));
            request.getRequestDispatcher("list.booking").forward(request, response);
        }

        //========================== Client's Actions ============================\\
        // the following is called when the user try to book a room, but he is not authenticated
        // login before booking
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


        }
        // register before booking
        else if (Path.equalsIgnoreCase("/register.booking")) {
            int roomId = Integer.parseInt(request.getParameter("roomId")) ;
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");

            // add user to db
            Client client = new Client();
            client.setFirstName(request.getParameter("firstname"));
            client.setLastName(request.getParameter("lastname"));
            client.setPhoneNumber(request.getParameter("phonenumber"));
            client.setAddress(request.getParameter("address"));
            client.setEmail(request.getParameter("email"));
            client.setPassword(request.getParameter("password"));
            clientDao.addClient(client);

            // try to log in with the same user
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            client = clientDao.getClientByEmailAndPassword(email,password);

            // default retrun page
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
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
