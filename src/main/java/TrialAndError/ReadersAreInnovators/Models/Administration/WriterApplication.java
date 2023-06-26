package TrialAndError.ReadersAreInnovators.Models.Administration;


public class WriterApplication {
    
    private String name;
    private String surname;
    private String email;
    private String phoneNumber;
    private String motivation;
    private String applicationDate;
    
    public WriterApplication() {
        
    }
    
    public WriterApplication(String name, String surname, String email, String phoneNumber, String motivation) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.motivation = motivation;
        
    }
    
    public WriterApplication(String name, String surname, String email, String phoneNumber, String motivation, String applicationDate) {
        
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
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
                ", motivation='" + motivation + '\'' +
                ", applicationDate=" + applicationDate +
                '}';
        
    }
    
    
}
