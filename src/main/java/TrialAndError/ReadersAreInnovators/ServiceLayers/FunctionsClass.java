package TrialAndError.ReadersAreInnovators.ServiceLayers;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;

public class FunctionsClass implements Functions_Interface{
    
    
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    private String message;
    
    
    public FunctionsClass() {
        
    }
    
    
    @Override
    public Boolean verifyLoginDetails(String password, String pw) {
        
        if (password.equals(pw)){
            
            return true;
            
        }else{
            
            return false;
                    
        }
        
    }
    
    @Override
    public Boolean isNumber(String value) {
        
        try{
            
            Integer.parseInt(value);
            
        }catch (NumberFormatException n){
            
            return true;
            
        }
        
        return false;
        
    }
    
    @Override
    public Boolean phoneNumberVerification(String phoneNum) {
        
        Boolean b = true;
        
        if (!isNumber(phoneNum)){
            
            b = false;
            
        }
        
        if (phoneNum.charAt(0) != 0){
            
            b = false;
            
        }
        
        if (phoneNum.length() != 10){
            
            b = false;
            
        }
        
        return b;
        
    }
    
    @Override
    public Boolean emailVerification(String email) {
        
        boolean b = true;
        
        
        
        return b;
        
    }
    
    @Override
    public Boolean passwordVerification(String password) {
        return null;
    }
    
    @Override
    public Boolean wordCountVerification(String storyBody) {
        return null;
    }
    
    @Override
    public Boolean integerToBoolean(Integer value) {
        
        Boolean b;
        
        if (value == 0){
            
            b = false;
            
        }else{
            
            b = true;
            
        }
        
        return b;
        
    }
    
    @Override
    public Integer booleanToInteger(Boolean bool) {
        if(bool == false){
            return 0;
        } else {
            return 1;
        }
    }
    
    @Override
    public Double getAverage(ArrayList<Integer> values) {
        
        Integer total = 0;
        Double ratingAverage;
        Integer noRatings = 0;
        
        for (Integer rating :values) {
            
            noRatings++;
            total = total + rating;
            
        }
        
        ratingAverage = Double.valueOf(total/noRatings);
        return ratingAverage;
        
    }
    
    @Override
    public String dateToString(Date date) {
        
        return date.toString();
        
    }
    
    @Override
    public Date stringToDate(String string) {
        
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        format.setTimeZone(TimeZone.getTimeZone("UTC"));
        
        java.util.Date date = null;
        
        try {
            
            date = format.parse(string);
            
        } catch (ParseException e) {
            
            throw new RuntimeException(e);
            
        }
        
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        
        return sqlDate;
        
    }
    
    
}
