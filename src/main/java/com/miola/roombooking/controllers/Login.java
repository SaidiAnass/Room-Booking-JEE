package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.AdminDao;
import com.miola.roombooking.dao.ClientDao;
import com.miola.roombooking.models.Admin;
import com.miola.roombooking.models.Client;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@MultipartConfig
@WebServlet(name = "Login", urlPatterns = "*.auth")
public class Login extends HttpServlet {
    // This servlet handles auth of both clients and admins
    ClientDao clientDao = new ClientDao();
    AdminDao adminDao =new AdminDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        //========================== CLient's Actions ============================\\
        // Client login
        if (Path.equalsIgnoreCase("/client-login.auth")) {
            // get infos and authenticate
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Client loggedIn = clientDao.getClientByEmailAndPassword(email,password);
            if(loggedIn != null ){
                // store user in session
                request.getSession().setAttribute("loggedIn" , loggedIn);
            }
            request.getRequestDispatcher("index.jsp").forward(request, response);

        // Client logout
        }else if (Path.equalsIgnoreCase("/client-logout.auth")) {
            // clear session & logout
            request.getSession().invalidate();
            request.getRequestDispatcher("index.jsp").forward(request, response);

        // Client Register
        } else if (Path.equalsIgnoreCase("/client-register.auth")) {
            // create client object
            Client client = new Client();
            client.setFirstName(request.getParameter("firstname"));
            client.setLastName(request.getParameter("lastname"));
            client.setPhoneNumber(request.getParameter("phonenumber"));
            client.setAddress(request.getParameter("address"));
            client.setEmail(request.getParameter("email"));
            client.setPassword(request.getParameter("password"));
            clientDao.addClient(client);

            // authenticate
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            client = clientDao.getClientByEmailAndPassword(email, password);
            if (client != null) {
                // store client in session if succesful
                request.getSession().setAttribute("loggedIn", client);
            }
            request.getRequestDispatcher("index.jsp").forward(request, response);

        // Admin login
        } else if (Path.equalsIgnoreCase("/admin-login.auth")) {
            // get infos and authenticate
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            // auth
            Admin loggedIn = adminDao.getAdminByEmailAndPassword(email,password);
            String returnPage = ("admin");
            if(loggedIn != null){
                request.getSession().setAttribute("adminAuth" , loggedIn);
            }else {
                returnPage=("admin/login.jsp");
            }


            request.getRequestDispatcher(returnPage).forward(request, response);

        // Admin logout
        } else if (Path.equalsIgnoreCase("/admin-logout.auth")) {
            request.getSession().invalidate();
            request.getRequestDispatcher("admin/login.jsp").forward(request, response);
        }
        // No register for admin
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
