package com.miola.roombooking.models;

import java.sql.Date;

public class Booking {
    private int bookingId;
    private int clientId;
    private int roomId;
    private Date startDate;
    private Date endDate;


    public Booking(int bookingId, int clientId, int roomId, Date startDate, Date endDate) {
        this.bookingId = bookingId;
        this.clientId = clientId;
        this.roomId = roomId;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getBookingId() {
        return bookingId;
    }

    public int getClientId() {
        return clientId;
    }

    public int getRoomId() {
        return roomId;
    }    public Date getStartDate() {
        return startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

}
