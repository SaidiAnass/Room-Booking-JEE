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
    // This servlet is for crud operations on admins
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        AdminDao adminDao;
        adminDao = new AdminDao();

        //========================== Admin's Actions ============================\\
        // get all admins and list them
        if (Path.equalsIgnoreCase("/list.admin")) {
            // get admins list
            LinkedList<Admin> adminsList = adminDao.getAllAdmins();
            request.setAttribute("adminsList" , adminsList);

            request.getRequestDispatcher("admin/manage-admins.jsp").forward(request, response);
        }
        // add admin to database
        else if (Path.equalsIgnoreCase("/add.admin")) {
            Admin admin = new Admin();
            admin.setFirstName(request.getParameter("firstname"));
            admin.setLastName(request.getParameter("lastname"));
            admin.setEmail(request.getParameter("email"));
            admin.setPassword(request.getParameter("password"));

            adminDao.addAdmin(admin);

            request.getRequestDispatcher("/list.admin").forward(request, response);

        }
        // get id and go to edit page
        else if (Path.equalsIgnoreCase("/edit.admin")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id to edit: "+ id);
            Admin adminToEdit = adminDao.getAdminById(id);
            request.setAttribute("adminToEdit" , adminToEdit);
            request.getRequestDispatcher("admin/edit-admin.jsp").forward(request, response);
        }
        // save the admin after edit
        else if (Path.equalsIgnoreCase("/save.admin")) {
            // get infos and save action (edit) to database
            Admin admin = new Admin();
            admin.setFirstName(request.getParameter("firstname"));
            admin.setLastName(request.getParameter("lastname"));
            admin.setEmail(request.getParameter("email"));
            admin.setPassword(request.getParameter("password"));
            admin.setAdminId(Integer.parseInt(request.getParameter("id")));

            adminDao.updateAdmin(admin);

            request.getRequestDispatcher("/list.admin").forward(request, response);
        }
        // delete admin
        else if (Path.equalsIgnoreCase("/delete.admin")) {
            // get id and go to delete admin
            int id = Integer.parseInt(request.getParameter("id"));

            adminDao.deleteAdmin(adminDao.getAdminById(id));

            request.getRequestDispatcher("/list.admin").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }
}
