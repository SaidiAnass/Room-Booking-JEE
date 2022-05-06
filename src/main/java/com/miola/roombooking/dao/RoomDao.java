package com.miola.roombooking.dao;

import com.miola.roombooking.models.Room;

import java.sql.*;
import java.util.LinkedList;

public class RoomDao {
    private Connection con;

    public RoomDao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/room-booking","root","");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    /* All Rooms */
    public LinkedList<Room> getAllRooms() {
        LinkedList<Room> roomsList= new LinkedList<>();

        System.out.println("Getting all rooms..");
        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from room");

            while (rs.next()) {
                Room room= new Room(rs.getInt("roomId") ,rs.getString("name"), rs.getString("description"), rs.getString("type"), rs.getFloat("price"),rs.getBoolean("isBooked"));
                roomsList.add(room);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roomsList;
    }
}
