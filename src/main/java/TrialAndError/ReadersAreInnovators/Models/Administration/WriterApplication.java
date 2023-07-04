package TrialAndError.ReadersAreInnovators.Models.Administration;


/**
 * @Desctripion:    The model for a Writer Application Object.
 * @Author:         Tyler Schwegler.
 * @Version:        v.1.0.0
 * @Date:           2023-07-05.
 * @Completed:      True.
 */

public class WriterApplication {
    
    
    private String name;
    private String surname;
    private String email;
    private String phoneNumber;
    private String password;
    private String motivation;
    private String applicationDate;
    
    
    public WriterApplication() {
        
    }
    
    public WriterApplication(String email) {
        
        this.email = email;
        
    }
    
    public WriterApplication(String name, String surname, String email,String motivation, String applicationDate) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.motivation = motivation;
        this.applicationDate = applicationDate;
        
    }
    
    public WriterApplication(String name, String surname, String email, String phoneNumber, String password,String motivation) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.motivation = motivation;
        
    }
    
    public WriterApplication(String name, String surname, String email, String phoneNumber, String password, String motivation, String applicationDate) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.motivation = motivation;
        this.applicationDate = applicationDate;
        
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
    
    public String getMotivation() {
        return motivation;
    }
    
    public void setMotivation(String motivation) {
        this.motivation = motivation;
    }
    
    public String getApplicationDate() {
        return applicationDate;
    }
    
    public void setApplicationDate(String applicationDate) {
        this.applicationDate = applicationDate;
    }
    
    
    @Override
    public String toString() {
        
        return "WriterApplication{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", password='" + password + '\'' +
                ", motivation='" + motivation + '\'' +
                ", applicationDate='" + applicationDate + '\'' +
                '}';
        
    }
    
    
}
