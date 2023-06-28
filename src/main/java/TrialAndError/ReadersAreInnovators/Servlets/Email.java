package TrialAndError.ReadersAreInnovators.Servlets;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
    
    
    public static void sendEmail(String to)
    {
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
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        
        try {
            
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("localhost"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(to));
            message.setSubject("Readers are innovators Welcome you");
            message.setText("Welcome to readers are innovators. We hope you have a wonderful time on our platform. Please click the link below to verify your email \n" +
                    "fakelink.jsp");
            
            Transport.send(message);        //Error happened here....
            
            System.out.println("Email sent?");
            
        }
        
        catch (MessagingException e)
        {
            // throw new RuntimeException(e);
            System.out.println("Username or Password are incorrect ... exiting !");
            e.printStackTrace();
        }
    }
    
    
    public static void main(String[] args)
    {
        String to = "tksrex@gmail.com";
        String email = "totoroseefort25@gmail.com";
        String email2 = "luaanrobinson@gmail.com";
        String email3 = "cosmosjoker56@gmail.com";
        sendEmail(email3);
    }
}
