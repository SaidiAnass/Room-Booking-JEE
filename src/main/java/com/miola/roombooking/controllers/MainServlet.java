package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.RoomDao;
import com.miola.roombooking.models.Room;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.LinkedList;

@WebServlet("/main")
public class MainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        RoomDao roomDao = new RoomDao();
        LinkedList<Room> rooms = roomDao.getAllRooms();

        request.setAttribute("rooms" , rooms);
        request.getRequestDispatcher("/home.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
