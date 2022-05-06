package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.RoomDao;
import com.miola.roombooking.models.Room;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.LinkedList;

@WebServlet(name = "RoomServlet", value = "*.room")
public class RoomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        RoomDao roomDao = new RoomDao();
        //========================== Admin's Actions ============================\\
        if (Path.equalsIgnoreCase("/list.room")) {
            // get rooms list
            request.getRequestDispatcher("admin/manage-rooms.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.room")) {
            request.getRequestDispatcher("admin/manage-rooms.jsp").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.room")) {
            // get infos and save action (add,edit,delete) to database
            request.getRequestDispatcher("admin/manage-rooms.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.room")) {
            // Long userID = Long.valueOf(request.getParameter("id"));
            // get id and go to edit room
            request.getRequestDispatcher("admin/edit-room.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.room")) {
            // get id and go to delete room
            int roomId = Integer.parseInt(request.getParameter("id")) ;
            roomDao.deleteRoom(roomDao.getRoomById(roomId));
            request.getRequestDispatcher("admin/manage-rooms.jsp").forward(request, response);

            //========================== Client's Actions ============================\\
        }else if(Path.equalsIgnoreCase("/details.room")){
            int roomId = Integer.parseInt(request.getParameter("id"));
            Room room = roomDao.getRoomById(roomId);
            request.setAttribute("room" , room);
            request.getRequestDispatcher("room-details.jsp").forward(request, response);
        }else if(Path.equalsIgnoreCase("/get-all.room")){
            LinkedList<Room> rooms = roomDao.getAllRooms();
            request.setAttribute("rooms" , rooms);
            request.getRequestDispatcher("all-rooms-list.jsp").forward(request, response);
        }else if(Path.equalsIgnoreCase("/book.room")){
            int roomId = Integer.parseInt(request.getParameter("id")) ;
            int numberOfNights = Integer.parseInt(request.getParameter("numberofnights")) ;
            String startDate = request.getParameter("start");
            String endDate = request.getParameter("end");
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
