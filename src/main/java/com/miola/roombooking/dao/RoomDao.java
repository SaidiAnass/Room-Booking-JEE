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
                Room room= new Room(rs.getInt("roomId") ,rs.getString("name"), rs.getString("description"),rs.getString("image"), rs.getString("type"), rs.getFloat("price"),rs.getBoolean("isBooked"));
                roomsList.add(room);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roomsList;
    }

    /* Id => Room */
    public Room getRoomById(int id){
        String query = "SELECT * FROM room WHERE roomId like '" + id +"'";
        Statement stmt = null;
        try {
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                System.out.println("Here");
                return new Room(rs.getInt("roomId") ,rs.getString("name"), rs.getString("description"),rs.getString("image"), rs.getString("type"), rs.getFloat("price"),rs.getBoolean("isBooked"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Room not  found");
        return null;
    }

    /* Delete Room */
    public boolean deleteRoom(Room room){
        String query = "DELETE FROM room WHERE roomId like '"+room.getRoomId()+"'";
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

    /* Add Room */
    public boolean addRoom(Room room){

        String query = "INSERT INTO room (name,description,image,type,price) VALUES" +
                "('"+room.getName()+"','"+room.getDescription()+"','"+room.getImage()+"','"+room.getRoomType()+"','"+room.getPrice()+"')";
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

    /* Update Room */
    public void updateRoom(Room room){
        String query = "UPDATE room SET name = '"+room.getName()+"', description = '"+room.getDescription()+"', image = '"+room.getImage()+"', type = '"+room.getRoomType()+"', price = "+room.getPrice()+" WHERE roomId LIKE "+room.getRoomId();
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

