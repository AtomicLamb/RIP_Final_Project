package TrialAndError.ReadersAreInnovators.Models.UserTypes;


/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class User {
    
    
    private Integer userID;
    private String name;
    private String surname;
    private String email;
    private String phoneNumber;
    private String password;
    private Integer userTypeID;
    private String userType;
    private Boolean isBanned;
    private Boolean emailVerified;
    private Integer timesLoggedIn;
    private Double data;
    
    
    public User() {
        
    }
    
    public User(Integer userID) {
        
        this.userID = userID;
        
    }
    
    public User(String email) {
        
        this.email = email;
        
    }
    
    public User(String email, String password) {
        
        this.email = email;
        this.password = password;
        
    }
    
    public User(Integer userID, String name, String surname) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        
    }
    
    public User(String name, String surname, String email, String phoneNumber, String password) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        
    }
    
    public User(Integer userID, String name, String surname, String email, String phoneNumber, String password) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        
    }
    
    public User(String name, String surname, String email, String phoneNumber, String password, Integer userTypeID) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userTypeID = userTypeID;
        
    }
    
    public User(String name, String surname, String email, String phoneNumber, String password, Integer userTypeID, String userType, Boolean isBanned, Boolean emailVerified) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userTypeID = userTypeID;
        this.userType = userType;
        this.isBanned = isBanned;
        this.emailVerified = emailVerified;
        
    }
    
    public User(Integer userID, String name, String surname, String email, String phoneNumber, String password, Integer userTypeID, String userType, Boolean isBanned, Boolean emailVerified, Integer timesLoggedIn) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userTypeID = userTypeID;
        this.userType = userType;
        this.isBanned = isBanned;
        this.emailVerified = emailVerified;
        this.timesLoggedIn = timesLoggedIn;
        
    }
    
    public User(Integer userID, String name, String surname, String email, String phoneNumber, String password, Integer userTypeID, String userType, Boolean isBanned, Boolean emailVerified, Double data) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userTypeID = userTypeID;
        this.userType = userType;
        this.isBanned = isBanned;
        this.emailVerified = emailVerified;
        this.data = data;
       
    }
    
    public Integer getUserID() {
        return userID;
    }
    
    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getSurname() {
        return surname;
    }
    
    public void setSurname(String surname) {
        this.surname = surname;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPhoneNumber() {
        return phoneNumber;
    }
    
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public Integer getUserTypeID() {
        return userTypeID;
    }
    
    public void setUserTypeID(Integer userTypeID) {
        this.userTypeID = userTypeID;
    }
    
    public String getUserType() {
        return userType;
    }
    
    public void setUserType(String userType) {
        this.userType = userType;
    }
    
    public Boolean getBanned() {
        return isBanned;
    }
    
    public void setBanned(Boolean banned) {
        isBanned = banned;
    }
    
    public Boolean getEmailVerified() {
        return emailVerified;
    }
    
    public void setEmailVerified(Boolean emailVerified) {
        this.emailVerified = emailVerified;
    }
    
    public Integer getTimesLoggedIn() {
        return timesLoggedIn;
    }
    
    public void setTimesLoggedIn(Integer timesLoggedIn) {
        this.timesLoggedIn = timesLoggedIn;
    }
    
    public Double getData() {
        return data;
    }
    
    public void setData(Double data) {
        this.data = data;
    }
    
    
    @Override
    public String toString() {
        
        return "User{" +
                "userID=" + userID +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", password='" + password + '\'' +
                ", userTypeID=" + userTypeID +
                ", userType='" + userType + '\'' +
                ", isBanned=" + isBanned +
                ", emailVerified=" + emailVerified +
                ", timesLoggedIn=" + timesLoggedIn +
                ", data=" + data +
                '}';
        
    }
    
    
}
