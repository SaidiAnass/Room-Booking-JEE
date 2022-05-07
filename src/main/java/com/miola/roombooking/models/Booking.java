package com.miola.roombooking.models;

import java.sql.Date;

public class Booking {
    private int bookingId;
    private int clientId;
    private int roomId;
    private String startDate;
    private String endDate;
    private int numberONights;
    private float price;

    public Booking() {
    }

    public Booking(int bookingId, int clientId, int roomId, String startDate, String endDate, int numberONights, float price) {
        this.bookingId = bookingId;
        this.clientId = clientId;
        this.roomId = roomId;
        this.startDate = startDate;
        this.endDate = endDate;
        this.numberONights = numberONights;
        this.price = price;
    }

    public Booking(int clientId, int roomId, String startDate, String endDate, int numberONights, float price) {
        this.clientId = clientId;
        this.roomId = roomId;
        this.startDate = startDate;
        this.endDate = endDate;
        this.numberONights = numberONights;
        this.price = price;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public int getNumberONights() {
        return numberONights;
    }

    public void setNumberONights(int numberONights) {
        this.numberONights = numberONights;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
