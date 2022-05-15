package com.miola.roombooking.dao;

import com.miola.roombooking.models.Booking;
import com.miola.roombooking.utils.Functions;

import java.sql.*;
import java.util.LinkedList;

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

    /* Add Booking */
    public boolean addBooking(Booking booking){
        /* See if the room is Availabale */
        if(!Functions.checkValidBooking(booking)){
            return false;
        }

        String query = "INSERT INTO booking (clientId,roomId,endDate,numberOfNights,startDate,price) VALUES" +
                "('"+booking.getClientId()+"','"+booking.getRoomId()+"','"+booking.getEndDate()+"','"+booking.getNumberONights()+"','"+booking.getStartDate()+"','"+booking.getPrice()+"')";
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

    /* All Bookings */
    public LinkedList<Booking> getAllBookings(){
        LinkedList<Booking> bookings= new LinkedList<>();


        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from booking");

            while (rs.next()) {
                Booking booking= new Booking(rs.getInt("bookingId"),rs.getInt("clientId"), rs.getInt("roomId"), rs.getString("startDate"),rs.getString("endDate"),rs.getInt("numberOfNights"),rs.getFloat("price")) ;
                bookings.add(booking);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }

    /* RoomID => All Bookings with this ID */
    public LinkedList<Booking> getBookingsByRoomId(int id){
        LinkedList<Booking> bookings= new LinkedList<>();

        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from booking WHERE roomId = '"+id+"'");


            while (rs.next()) {
                Booking booking= new Booking(rs.getInt("bookingId"),rs.getInt("clientId"), rs.getInt("roomId"), rs.getString("startDate"),rs.getString("endDate"),rs.getInt("numberOfNights"),rs.getFloat("price")) ;
                bookings.add(booking);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;

    }

    /* ClientID => All Bookings with this ID */
    public LinkedList<Booking> getBookingByCLientId(int id){
        LinkedList<Booking> bookings= new LinkedList<>();


        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from booking WHERE clientId = '"+id+"'");


            while (rs.next()) {
                Booking booking= new Booking(rs.getInt("bookingId"),rs.getInt("clientId"), rs.getInt("roomId"), rs.getString("startDate"),rs.getString("endDate"),rs.getInt("numberOfNights"),rs.getFloat("price")) ;
                bookings.add(booking);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }

    /* Delete Booking */
    public boolean deleteBooking(Booking booking){
        String query = "DELETE FROM booking WHERE bookingId like '"+booking.getBookingId()+"'";
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

    /* Update Booking */
    public boolean updateBooking(Booking booking){
        /* See if the room is Availabale */
        if(!Functions.checkValidBooking(booking)){
            return false;
        }



        String query = "UPDATE booking SET clientId = '"+booking.getClientId()+"', roomId = '"+booking.getRoomId()+"', startDate = '"+booking.getStartDate()+"', endDate = '"+booking.getEndDate()+"', price = "+booking.getPrice()+", numberOfNights = "+booking.getNumberONights()+" WHERE bookingId LIKE "+booking.getBookingId();
        System.out.println("Updatiing 2 ..");
        int res=0;
        try {
            Statement stmt = con.createStatement();
            res = stmt.executeUpdate(query);
        } catch (SQLException e) {
            System.out.println(e);
            e.printStackTrace();
        }
        return res>0;
    }
}
