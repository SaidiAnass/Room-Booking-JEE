package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.ClientDao;
import com.miola.roombooking.models.Client;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Login", value = "*.auth")
public class Login extends HttpServlet {
    ClientDao clientDao = new ClientDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        //========================== CLient's Actions ============================\\
        if (Path.equalsIgnoreCase("/client-login.auth")) {
            // get infos and authenticate
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Client loggedIn = clientDao.getClientByEmailAndPassword(email,password);
            if(loggedIn != null ){
                request.getSession().setAttribute("loggedIn" , loggedIn);
            }


            request.getRequestDispatcher("index.jsp").forward(request, response);
            //=========================================================================\\
        }else if (Path.equalsIgnoreCase("/client-logout.auth")) {
            request.getSession().invalidate();
            request.getRequestDispatcher("index.jsp").forward(request, response);
            //=========================================================================\\
        } else if (Path.equalsIgnoreCase("/client-register.auth")) {
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
            client = clientDao.getClientByEmailAndPassword(email, password);
            if (client != null) {
                request.getSession().setAttribute("loggedIn", client);
            }


            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
            //=========================================================================\\
//        if (Path.equalsIgnoreCase("/admin-login.auth")) {
//            // get infos and authenticate
//            String email = request.getParameter("email");
//            String password = request.getParameter("password");
//
//            Client loggedIn = clientDao.getClientByEmailAndPassword(email,password);
//            request.getSession().setAttribute("loggedIn" , loggedIn);
//
//            request.getRequestDispatcher("index.jsp").forward(request, response);
//            //=========================================================================\\
//        }else if (Path.equalsIgnoreCase("/admin-logout.auth")) {
//            request.getSession().invalidate();
//            request.getRequestDispatcher("index.jsp").forward(request, response);
//            //=========================================================================\\
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
