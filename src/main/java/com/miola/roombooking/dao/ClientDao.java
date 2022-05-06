package com.miola.roombooking.dao;

import com.miola.roombooking.models.Admin;
import com.miola.roombooking.models.Client;

import java.sql.*;
import java.util.LinkedList;

public class ClientDao {

    private Connection con;

    public ClientDao()  {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/room-booking","root","");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Client getClientById(int id){
        String query = "SELECT * FROM client WHERE clientId like '" + id +"'";
        Statement stmt ;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                System.out.println("Here");
                return new Client(rs.getInt("clientId"), rs.getString("firstName"), rs.getString("lastName"),rs.getString("phoneNumber"),rs.getString("address"), rs.getString("email"), rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Admin not  found");
        return null;
    }

    public Client getClientByEmail(String email){
        String query = "SELECT * FROM client WHERE email like '" + email +"'";
        Statement stmt ;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                System.out.println("Here");
                return new Client(rs.getInt("clientId"), rs.getString("firstName"), rs.getString("lastName"),rs.getString("phoneNumber"),rs.getString("address"), rs.getString("email"), rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Client not  found");
        return null;
    }

    public LinkedList<Client> getAllCLients(){
        LinkedList<Client> clients= new LinkedList<>();


        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from client");


            while (rs.next()) {
                Client cli= new Client(rs.getInt("clientId"), rs.getString("firstName"), rs.getString("lastName"),rs.getString("phoneNumber"),rs.getString("address"), rs.getString("email"), rs.getString("password"));
                clients.add(cli);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return clients;
    }

    public Client getCLientByBookingId(int bookingId){
        return  null;
    }

    public boolean addClient(Client cli){
        if(getClientByEmail(cli.getEmail()) != null){
            System.out.println("CLient existe");
            return false;
        }
        if(cli.getEmail() == null || cli.getPassword() == null){
            return false;
        }
        String query = "INSERT INTO admin (firstName,lastName,phoneNumber,address,email,password) VALUES" +
                "('"+cli.getFirstName()+"','"+cli.getLastName()+"','"+cli.getEmail()+"','"+cli.getPhoneNumber()+"','"+cli.getAddress()+"','"+cli.getPassword()+"')";
        Statement stmt = null;
        int rs=0;
        try {
            stmt = con.createStatement();
            rs = stmt.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rs > 0;
    }

    public boolean deleteClient(Client c){
        String query = "DELETE FROM client WHERE clientId like '"+c.getClientId()+"'";
        Statement stmt = null;
        int rs=0;
        try {
            stmt = con.createStatement();
            rs = stmt.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rs > 0;
    }

    public Client updateCLient(Client c){
        return null;
    }
}
