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
            request.getRequestDispatcher("admin/manage-admins.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.admin")) {
            int id = Integer.parseInt(request.getParameter("id"));
//             get id and go to edit admin
            Admin adminToEdit = adminDao.getAdminById(id);
            System.out.printf("Admin to Edit id: ", id);
            request.setAttribute("adminToEdit" , adminToEdit);
            if(adminToEdit.getAdminId() == id ){
                request.getRequestDispatcher("admin/index.jsp").forward(request, response);
            }
            request.getRequestDispatcher("admin/manage-admins.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.admin")) {


            // get id and go to delete admin
            request.getRequestDispatcher("admin/manage-admins.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }
}
