package com.miola.roombooking.dao;

import com.miola.roombooking.models.Admin;

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
    public void getAdminById(){}
    public void addAdmin(Admin ad){}
    public void deleteAdmin(Admin ad){}
    public void updateAdmin(Admin ad){}
}
