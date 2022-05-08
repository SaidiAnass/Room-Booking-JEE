package com.miola.roombooking.dao;

import com.miola.roombooking.models.Admin;
import com.miola.roombooking.models.Client;

import java.sql.*;
import java.util.LinkedList;

public class AdminDao {
    private Connection con;

    public AdminDao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/room-booking","root","");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /* All Admins */
    public LinkedList<Admin> getAllAdmins() {
        LinkedList<Admin> adminsList= new LinkedList<>();


        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from admin");


            while (rs.next()) {
                Admin ad= new Admin(rs.getInt("adminId") ,rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"), rs.getString("password"));
                adminsList.add(ad);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adminsList;
    }

    /* Email => Admin */
    public Admin getAdminByEmail(String email){
        String query = "SELECT * FROM admin WHERE email like '" + email +"'";
        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()) {
                return new Admin(rs.getInt("adminId"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"), rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    /* Id => Admin */
    public Admin getAdminById(int id){
        String query = "SELECT * FROM admin WHERE adminId like '" + id +"'";
        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                System.out.println("Here");
                return new Admin(rs.getInt("adminId"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"), rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Admin not  found");
        return null;
    }

    /* Email and Password => Admin */
    public Admin getAdminByEmailAndPassword(String email , String password){
        String query = "SELECT * FROM admin WHERE email like '" + email +"' AND password like '"+password+"'";
        Statement stmt ;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                System.out.println("Here");
                return new Admin(rs.getInt("adminId"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email"), rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Admin not  found");
        return null;
    }

    /* Add Admin */
    public boolean addAdmin(Admin ad){
        if(getAdminByEmail(ad.getEmail()) != null){
            System.out.println("Admin existe");
            return false;
        }
        if(ad.getEmail() == null || ad.getPassword() == null){
            return false;
        }
        String query = "INSERT INTO admin (firstName,lastName,email,password) VALUES" +
                "('"+ad.getFirstName()+"','"+ad.getLastName()+"','"+ad.getEmail()+"','"+ad.getPassword()+"')";
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

    /* Delete Admin */
    public boolean deleteAdmin(Admin ad){
        String query = "DELETE FROM admin WHERE adminId like '"+ad.getAdminId()+"'";
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

    /* Update Admin */
    public void updateAdmin(Admin ad){
        String query = "UPDATE admin SET firstName = '"+ad.getFirstName()+"', lastName = '"+ad.getLastName()+"', email = '"+ad.getEmail()+"', password = '"+ad.getPassword()+"' WHERE adminId LIKE "+ad.getAdminId();
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
