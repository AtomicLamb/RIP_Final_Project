package TrialAndError.ReadersAreInnovators.Models.Administration;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;
import java.util.Date;

public class smsreq {
     
    private String datetime;
     private String user;
     private String pass;
     private String msisdn;
     private String message;
    
    
    public String getDateTime() {
        return datetime;
    }
    
    public void setDateTime() {
        datetime = currentDate();
    }
    
    public String getUser() {
        return user;
    }
    
    public void setUser(String user) {
        this.user = user;
    }
    
    public String getPassword() {
        return pass;
    }
    
    public void setPassword(String password) {
        this.pass= password;
    }
    
    public String getMsidn() {
        return msisdn;
    }
    
    public void setMsidn(String msidn) {
        this.msisdn = msidn;
    }
    
    public String getMessage() {
        return message;
    }
    
    public void setMessage(String message) {
        this.message = message;
    }
    
    
    @Override
    public String toString() {
        
        return "smsreq{" +
                "dateTime=" + datetime +
                ", user='" + user + '\'' +
                ", password='" + pass + '\'' +
                ", msidn='" + msisdn + '\'' +
                ", message='" + message + '\'' +
                '}';
        
    }
    
    public smsreq(String dateTime, String user, String password, String msisdn, String message){
         this.datetime=dateTime;
         this.user=user;
         this.pass=password;
         this.msisdn=msisdn;
         this.message=message;
         
     }
    public smsreq(){}
   public String currentDate(){
       DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd,HH:mm:ss");
       LocalDateTime now = LocalDateTime.now();
       return dtf.format(now);
        
   }
    }
     


