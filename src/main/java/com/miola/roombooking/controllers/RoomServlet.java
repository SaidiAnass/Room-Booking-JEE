package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.BookingDao;
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
@WebServlet(name = "RoomServlet", value = "*.room")
public class RoomServlet extends HttpServlet {
    // this servlet handle the crud operations on rooms from the admin's end
    // for the clients it handles booking and seeing room details ..
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        RoomDao roomDao = new RoomDao();
        BookingDao bookingDao = new BookingDao();
        //========================== Admin's Actions ============================\\
        // get all rooms and display them for admin
        if (Path.equalsIgnoreCase("/list.room")) {
            // get room list
            LinkedList<Room> roomsList = roomDao.getAllRooms();
            request.setAttribute("roomsList" , roomsList);
            request.getRequestDispatcher("admin/manage-rooms.jsp").forward(request, response);
        }
        // add new room
        else if (Path.equalsIgnoreCase("/add.room")) {
            Room room = new Room();
            room.setName(request.getParameter("name"));
            room.setDescription(request.getParameter("description"));
            room.setRoomType(request.getParameter("type"));
            room.setImage(request.getParameter("image"));
            room.setPrice(Float.parseFloat(request.getParameter("price")));

            roomDao.addRoom(room);

            request.getRequestDispatcher("admin/list.room").forward(request, response);

        }
        // get id and go to edit page
        else if (Path.equalsIgnoreCase("/edit.room")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id to edit: "+ id);

            Room roomToEdit = roomDao.getRoomById(id);
            request.setAttribute("roomToEdit" , roomToEdit);

            request.getRequestDispatcher("admin/edit-room.jsp").forward(request, response);
        }
        // save edit
        else if (Path.equalsIgnoreCase("/save.room")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Room room = new Room();
            room.setName(request.getParameter("name"));
            room.setDescription(request.getParameter("description"));
            room.setRoomType(request.getParameter("type"));
            room.setImage(request.getParameter("image"));
            room.setPrice(Float.parseFloat(request.getParameter("price")));
            room.setRoomId(id);

            roomDao.updateRoom(room);

            request.getRequestDispatcher("admin/list.room").forward(request, response);
        }
        // delete room by id
        else if (Path.equalsIgnoreCase("/delete.room")) {
            // get id and go to delete room
            int roomId = Integer.parseInt(request.getParameter("id")) ;
            roomDao.deleteRoom(roomDao.getRoomById(roomId));
            request.getRequestDispatcher("admin/list.room").forward(request, response);


        //========================== Client's Actions ============================\\
        // get id and go to room details page
        }else if(Path.equalsIgnoreCase("/details.room")){
            int roomId = Integer.parseInt(request.getParameter("id"));
            Room room = roomDao.getRoomById(roomId);
            request.setAttribute("room" , room);
            request.getRequestDispatcher("room-details.jsp").forward(request, response);
        }
        // get all rooms and list them on client interface
        else if(Path.equalsIgnoreCase("/get-all.room")){
            LinkedList<Room> rooms = roomDao.getAllRooms();
            request.setAttribute("rooms" , rooms);
            request.getRequestDispatcher("all-rooms-list.jsp").forward(request, response);
        }
        // book a room from front end
        else if(Path.equalsIgnoreCase("/book.room")){
            // get room id
            int roomId = Integer.parseInt(request.getParameter("roomId")) ;
            Room room = roomDao.getRoomById(roomId);
            // get booking details
            String startDate = request.getParameter("start");
            String endDate = request.getParameter("end");
            int numberOfNights = Functions.getNumberOfNights(startDate,endDate);

            // get cleint from session
            Client client = (Client) request.getSession().getAttribute("loggedIn");

            // set default redirect page
            String returnPage="checkout.jsp";

            if(client != null){
                // if client is logged in
                // check if dates are correct
                if(numberOfNights == -1){
                    // invalide date
                    request.setAttribute("error", "Invalid date entred!!");
                    returnPage = "404.jsp";
                }else{
                    // create a booking
                    Booking booking = new Booking(client.getClientId(), roomId,startDate,endDate,numberOfNights, room.getPrice()*numberOfNights);
                    boolean isBooked = bookingDao.addBooking(booking);
                    // checl room's availability
                    if(isBooked){
                        // if available complete and go to thanks page
                        request.setAttribute("booking",booking);
                        request.setAttribute("room", room);
                        request.setAttribute("client", client);
                        returnPage = "thanks.jsp";
                    }else {
                        // if not let the user know that the operation failed
                        request.setAttribute("error", "Room is unvailable at tha date!");
                        returnPage = "404.jsp";
                    }
                }

            }else{
                // if there is no user in session
                // redirect to check out page
                // where user will have either to login or create new account
                request.setAttribute("roomId" ,roomId);
                request.setAttribute("numberOfNights" ,numberOfNights);
                request.setAttribute("startDate" ,startDate);
                request.setAttribute("room", room);

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
