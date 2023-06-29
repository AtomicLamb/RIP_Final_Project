package TrialAndError.ReadersAreInnovators.Models.Administration;

import TrialAndError.ReadersAreInnovators.DAOs.StoryImplementation;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Email {
    
    public void sendEmail(String email, String subject, String text) {
        
        final String username = "trialanderror.moderator@gmail.com";
        final String password = "yzpetiurliaxpqrn";
        
        Properties props = new Properties();
        
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
        
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        
        
        Session session = Session.getInstance(props,
                new jakarta.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        
        try {
            
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("localhost"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(email));
            message.setSubject(subject);
            message.setText(text);
            
            Transport.send(message);        //Error happened here....
            
            System.out.println("Email sent");
            
        }
        
        catch (Exception e)
        {
            // throw new RuntimeException(e);
            System.out.println("Username or Password are incorrect ... exiting !");
            Logger.getLogger(Email.class.getName()).log(Level.SEVERE, "Error getting pending Story.", e);
        
        }
    }
    
    
//    public static void main(String[] args)
//    {
//        String to = "tksrex@gmail.com";
//        String email = "totoroseefort25@gmail.com";
//        String email2 = "luaanrobinson@gmail.com";
//        String email3 = "cosmosjoker56@gmail.com";
//        String email4 = "jontymileham@gmail.com";
//        sendEmail(email4, "Juicy get over here", "You better come and sign up to our RIP program");
//    }
}
