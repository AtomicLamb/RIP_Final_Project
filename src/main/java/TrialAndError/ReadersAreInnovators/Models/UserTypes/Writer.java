package TrialAndError.ReadersAreInnovators.Models.UserTypes;


/**
 * @Desctripion:    The model for a Writer Object.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class Writer extends Reader {
    
    
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
    private Double data;
    
    
    public Writer() {
        
    }
    
    public Writer(Integer userID) {
        
        this.userID = userID;
        
    }
    
    public Writer(String email) {
        
        this.email = email;
        
    }
    
    public Writer(Integer userID, String name, String surname) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        
    }
    
    public Writer(String name, String surname, String email) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        
    }
    
    public Writer(Integer userID, String name, String surname, String email) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        this.email = email;
        
    }
    
    public Writer(Integer userID, String name, String surname, Double data) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        this.data = data;
        
    }
    
    
    @Override
    public Integer getUserID() {
        return userID;
    }
    
    @Override
    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    
    @Override
    public String getName() {
        return name;
    }
    
    @Override
    public void setName(String name) {
        this.name = name;
    }
    
    @Override
    public String getSurname() {
        return surname;
    }
    
    @Override
    public void setSurname(String surname) {
        this.surname = surname;
    }
    
    @Override
    public String getEmail() {
        return email;
    }
    
    @Override
    public void setEmail(String email) {
        this.email = email;
    }
    
    @Override
    public String getPhoneNumber() {
        return phoneNumber;
    }
    
    @Override
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    @Override
    public String getPassword() {
        return password;
    }
    
    @Override
    public void setPassword(String password) {
        this.password = password;
    }
    
    @Override
    public Integer getUserTypeID() {
        return userTypeID;
    }
    
    @Override
    public void setUserTypeID(Integer userTypeID) {
        this.userTypeID = userTypeID;
    }
    
    @Override
    public String getUserType() {
        return userType;
    }
    
    @Override
    public void setUserType(String userType) {
        this.userType = userType;
    }
    
    @Override
    public Boolean getBanned() {
        return isBanned;
    }
    
    @Override
    public void setBanned(Boolean banned) {
        isBanned = banned;
    }
    
    @Override
    public Boolean getEmailVerified() {
        return emailVerified;
    }
    
    @Override
    public void setEmailVerified(Boolean emailVerified) {
        this.emailVerified = emailVerified;
    }
    
    @Override
    public Double getData() {
        return data;
    }
    
    @Override
    public void setData(Double data) {
        this.data = data;
    }
    
    
    @Override
    public String toString() {
        
        return "Writer{" +
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
                ", data=" + data +
                '}';
        
    }
    
    
}
