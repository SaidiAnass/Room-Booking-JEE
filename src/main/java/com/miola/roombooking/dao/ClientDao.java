package com.miola.roombooking.dao;

import com.miola.roombooking.models.Client;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.LinkedList;

public class ClientDao {

    private Connection con;

    public ClientDao() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/room-booking","root","");
    }

    public Client getClientById(int id){
        return  null;
    }

    public Client getClientByEmailAndPassword(String email, String password){
        return  null;
    }

    public LinkedList<Client> getAllCLients(){
        return  null;
    }
    public Client getCLientByBookingId(int bookingId){
        return  null;
    }

    public boolean addClient(Client c){
        return false;
    }

    public boolean deleteClient(Client c){
        return false;
    }

    public Client updateCLient(Client c){
        return null;
    }
}
