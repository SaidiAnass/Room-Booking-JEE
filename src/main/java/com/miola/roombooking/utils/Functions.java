package com.miola.roombooking.utils;

import com.miola.roombooking.dao.BookingDao;
import com.miola.roombooking.models.Booking;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;

public class Functions {
    public static int getNumberOfNights(String CurrentDate,String  FinalDate){

        Date date1;
        Date date2;

        int numberOfNights ;

        SimpleDateFormat dates = new SimpleDateFormat("MM/dd/yyyy");

        //Setting dates
        try {
            date1 = dates.parse(CurrentDate);
            date2 = dates.parse(FinalDate);
            long difference = Math.abs(date1.getTime() - date2.getTime());
            long differenceDates = difference / (24 * 60 * 60 * 1000);
            String dayDifference = Long.toString(differenceDates);
            numberOfNights = Integer.parseInt(dayDifference);
            if(numberOfNights <0) return-1;
            return  numberOfNights;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static boolean checkValidBooking(Booking booking){
        BookingDao bookingDao = new BookingDao();
        LinkedList<Booking> bookings = bookingDao.getBookingsByRoomId(booking.getRoomId());
        int newBookingStartMonth= Integer.parseInt(booking.getStartDate().split("/")[0]);
        int newBookingStartDay= Integer.parseInt(booking.getStartDate().split("/")[1]);
        int newBookingEndMonth= Integer.parseInt(booking.getEndDate().split("/")[0]);
        int newBookingEndDay= Integer.parseInt(booking.getEndDate().split("/")[1]);

        for(Booking bk: bookings){
            int startMonth= Integer.parseInt(bk.getStartDate().split("/")[0]);
            int startDay= Integer.parseInt(bk.getStartDate().split("/")[1]);
            int endMonth= Integer.parseInt(bk.getEndDate().split("/")[0]);
            int endDay= Integer.parseInt(bk.getEndDate().split("/")[1]);
            if(newBookingStartMonth == startMonth){
                if(startDay < newBookingStartDay){
                    if(endMonth == newBookingEndMonth){
                        if(endDay > newBookingStartDay){
                            return false;
                        }
                    }

                }
            }
            if(newBookingStartMonth == endMonth){
                if (newBookingStartDay<endDay) return false;
            }
        }
        return true;
    }
}
