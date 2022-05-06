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

            request.getRequestDispatcher("admin/manage-admins.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.admin")) {
            Admin admin = new Admin();
            admin.setFirstName(request.getParameter("firstname"));
            admin.setLastName(request.getParameter("lastname"));
            admin.setEmail(request.getParameter("email"));
            admin.setPassword(request.getParameter("password"));

            adminDao.addAdmin(admin);

            request.getRequestDispatcher("/list.admin").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.admin")) {
            // get infos and save action (add,edit,delete) to database
            Admin admin = new Admin();
            admin.setFirstName(request.getParameter("firstname"));
            admin.setLastName(request.getParameter("lastname"));
            admin.setEmail(request.getParameter("email"));
            admin.setPassword(request.getParameter("password"));
            admin.setAdminId(Integer.parseInt(request.getParameter("id")));
            adminDao.updateAdmin(admin);
            request.getRequestDispatcher("/list.admin").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.admin")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id to edit: "+ id);
//             get id and go to edit admin
            Admin adminToEdit = adminDao.getAdminById(id);
            request.setAttribute("adminToEdit" , adminToEdit);
            request.getRequestDispatcher("admin/edit-admin.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.admin")) {
            int id = Integer.parseInt(request.getParameter("id"));
            adminDao.deleteAdmin(adminDao.getAdminById(id));

            // get id and go to delete admin
            request.getRequestDispatcher("/list.admin").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }
}
