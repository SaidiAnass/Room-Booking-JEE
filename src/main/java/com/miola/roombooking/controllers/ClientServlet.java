package com.miola.roombooking.controllers;

import com.miola.roombooking.dao.ClientDao;
import com.miola.roombooking.models.Admin;
import com.miola.roombooking.models.Client;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.LinkedList;

@WebServlet(name = "ClientServlet", urlPatterns = "*.client")
public class ClientServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String Path = request.getServletPath();
        ClientDao clientDao = new ClientDao();

        //========================== Admin's Actions ============================\\
        if (Path.equalsIgnoreCase("/list.client")) {
            // get admins list
            LinkedList<Client> cLientsList = clientDao.getAllCLients();
            request.setAttribute("cLientsList" , cLientsList);

            request.getRequestDispatcher("admin/manage-clients.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/add.client")) {
            Client client = new Client();
            client.setFirstName(request.getParameter("firstname"));
            client.setLastName(request.getParameter("lastname"));
            client.setPhoneNumber(request.getParameter("phonenumber"));
            client.setPhoneNumber(request.getParameter("address"));
            client.setEmail(request.getParameter("email"));
            client.setPassword(request.getParameter("password"));

            clientDao.addClient(client);

            request.getRequestDispatcher("/list.client").forward(request, response);

        }if (Path.equalsIgnoreCase("/save.client")) {
            // get infos and save action (add,edit,delete) to database
            Client client = new Client();
            client.setFirstName(request.getParameter("firstname"));
            client.setLastName(request.getParameter("lastname"));
            client.setPhoneNumber(request.getParameter("phonenumber"));
            client.setPhoneNumber(request.getParameter("address"));
            client.setEmail(request.getParameter("email"));
            client.setPassword(request.getParameter("password"));
            client.setClientId(Integer.parseInt(request.getParameter("id")));
            clientDao.updateCLient(client);
            request.getRequestDispatcher("/list.client").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/edit.client")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id to edit: "+ id);
//             get id and go to edit admin
            Client clientToEdit = clientDao.getClientById(id);
            request.setAttribute("clientToEdit" , clientToEdit);
            request.getRequestDispatcher("admin/edit-client.jsp").forward(request, response);
        }
        //=========================================================================\\
        else if (Path.equalsIgnoreCase("/delete.client")) {
            int id = Integer.parseInt(request.getParameter("id"));
            clientDao.deleteClient(clientDao.getClientById(id));

            // get id and go to delete admin
            request.getRequestDispatcher("/list.client").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
