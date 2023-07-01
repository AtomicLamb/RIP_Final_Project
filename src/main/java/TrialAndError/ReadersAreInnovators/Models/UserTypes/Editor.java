package TrialAndError.ReadersAreInnovators.Models.UserTypes;


/**
 * @Desctripion:    The concrete implementation of the AnalyticsDAO.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class Editor extends Reader {
    
    
    private Integer userID;
    private String name;
    private String surname;
    private String email;
    private String phoneNumber;
    private String password;
    private Integer userTypeID;
    private String userType;
    private Double data;
    

    public Editor(){
        
    }
    public Editor(String email) {
        
        this.email = email;
    }
    public Editor(String name, String surname, String email) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        
    }
    
    public Editor(Integer userID, String name, String surname, Double data) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        this.data = data;
        
    }
    
    public Editor(String name, String surname, String email, String phoneNumber, String password) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        
    }
    
    public Editor(Integer userID, String name, String surname, String email, String phoneNumber, String password, Integer userTypeID, String userType) {
        
        this.userID = userID;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userTypeID = userTypeID;
        this.userType = userType;
        
    }
    
    public Editor(String name, String surname, String email, String phoneNumber, String password, Integer userTypeID, String userType) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userTypeID = userTypeID;
        this.userType = userType;
        
    }
    
    public Editor(String name, String surname, String email, String phoneNumber, String password, Integer userTypeID, String userType, Double data) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.userTypeID = userTypeID;
        this.userType = userType;
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
        return 3;
    }
    
    public void setUserTypeID() {
        this.userTypeID = 3;
    }
    
    @Override
    public String getUserType() {
        return "Editor";
    }
    
    public void setUserType() {
        this.userType = "Editor";
    }
    
    public Double getData() {
        return data;
    }
    
    public void setData(Double data) {
        this.data = data;
    }
    
    
    @Override
    public String toString() {
        
        return "Editor{" +
                "userID=" + userID +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", password='" + password + '\'' +
                ", userTypeID=" + userTypeID +
                ", userType='" + userType + '\'' +
                ", data=" + data +
                '}';
        
    }
    
    
}
