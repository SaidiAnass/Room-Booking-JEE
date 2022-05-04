package com.miola.roombooking.dao;

import com.miola.roombooking.models.Booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BookingDao {
    private Connection con;

    public BookingDao() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/room-booking","root","");
    }

    public Booking getBookingById(){
        return  null;
    }
    public Booking getBookingByCLientId(){
        return  null;
    }
    public Booking getBookingByRoomId(){
        return  null;
    }
}
