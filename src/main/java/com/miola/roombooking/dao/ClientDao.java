package com.miola.roombooking.dao;

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


    /* ID => Client */
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
        System.out.println("Client not  found");
        return null;
    }

    /* Email and Password => Client */
    public Client getClientByEmailAndPassword(String email , String password){
        String query = "SELECT * FROM client WHERE email like '" + email +"' AND password like '"+password+"'";
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

    /* Email => Client */
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

    /* All Client */
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

    /* Add Client */
    public boolean addClient(Client cli){
        if(getClientByEmail(cli.getEmail()) != null){
            System.out.println("CLient existe");
            return false;
        }
        if(cli.getEmail() == null || cli.getPassword() == null){
            return false;
        }
        String query = "INSERT INTO client (firstName,lastName,phoneNumber,address,email,password) VALUES" +
                "('"+cli.getFirstName()+"','"+cli.getLastName()+"','"+cli.getPhoneNumber()+"','"+cli.getAddress()+"','"+cli.getEmail()+"','"+cli.getPassword()+"')";
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

    /* Delete Client */
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

    /* Update Client */
    public void updateClient(Client c){
        String query = "UPDATE client SET firstName = '"+c.getFirstName()+"', lastName = '"+c.getLastName()+"', phoneNumber = '"+c.getPhoneNumber()+"', address = '"+ c.getAddress()+"', email = '"+c.getEmail()+"', password = '"+c.getPassword()+"' WHERE clientId LIKE "+c.getClientId();
        System.out.println("Updatiing 2 ..");

        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate(query);
        } catch (SQLException e) {
            System.out.println(e);
            e.printStackTrace();
        }
    }
}
