package com.miola.roombooking.models;

public class Room {
    private int roomId;
    private String name;
    private String description;
    private String roomType;
    private float price;
    private boolean isBooked;


    public Room() {
    }

    public Room(int roomId, String name, String description, String roomType, float price, boolean isBooked) {
        this.roomId = roomId;
        this.name = name;
        this.description = description;
        this.roomType = roomType;
        this.price = price;
        this.isBooked = isBooked;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public boolean isBooked() {
        return isBooked;
    }

    public void setBooked(boolean booked) {
        isBooked = booked;
    }
}
