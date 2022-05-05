package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.AdminDao;
import com.miola.roombooking.models.Admin;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.LinkedList;

@MultipartConfig
@WebServlet(name = "AdminServlet", value = "*.admin")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();AdminDao adminDao;
             adminDao = new AdminDao();



        //========================== Admin's Actions ============================\\
        if (Path.equalsIgnoreCase("/list.admin")) {
            // get admins list
            LinkedList<Admin> adminsList = adminDao.getAllAdmins();


            request.setAttribute("adminsList" , adminsList);

            request.getRequestDispatcher("admin/index.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.admin")) {
            request.getRequestDispatcher("admin/add-admin.jsp").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.admin")) {
            // get infos and save action (add,edit,delete) to database
            request.getRequestDispatcher("admin/admins-list.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.admin")) {
            //            Long userID = Long.valueOf(request.getParameter("id"));
            // get id and go to edit admin
            request.getRequestDispatcher("admin/edit-admin.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.admin")) {


            // get id and go to delete admin
            request.getRequestDispatcher("admin/delete-admin.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }
}
