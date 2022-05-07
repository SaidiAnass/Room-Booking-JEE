package com.miola.roombooking.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
}
