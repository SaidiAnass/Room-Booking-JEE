package com.miola.roombooking.dao;

import com.miola.roombooking.models.Booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class BookingDao {
    private Connection con;

    public BookingDao(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/room-booking","root","");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public boolean addBooking(Booking booking){
//        if(getClientByEmail(cli.getEmail()) != null){
//            System.out.println("CLient existe");
//            return false;
//        }
//        if(cli.getEmail() == null || cli.getPassword() == null){
//            return false;
//        }
        String query = "INSERT INTO booking (clientId,roomId,numberOfNights,startDate,endDate,price) VALUES" +
                "('"+booking.getClientId()+"','"+booking.getRoomId()+"','"+booking.getNumberONights()+"','"+booking.getStartDate()+"','"+booking.getEndDate()+"','"+booking.getPrice()+"')";
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
