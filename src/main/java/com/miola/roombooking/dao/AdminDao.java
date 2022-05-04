package com.miola.roombooking.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AdminDao {
    private Connection con;

    public AdminDao() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/room-booking","root","");
    }
}
