package TrialAndError.ReadersAreInnovators.Servlets;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
class Mailer{
    public static void send(String from,String password,String to,String sub,String msg){
        //Get properties object    
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        //get Session   
        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(from,password);
                    }
                });
        //compose message    
        try {
            MimeMessage message = new MimeMessage(session);
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject(sub);
            message.setText(msg);
            //send message  
            Transport.send(message);
            System.out.println("message sent successfully");
        } catch (MessagingException e) {
            System.out.println("I dunno man emails are tough to code");
            e.printStackTrace();
        }
        
    }
}
public class EmailAttempt3{
    public static void main(String[] args) {
        //from,password,to,subject,message  
        Mailer.send("luaanrobinson@gmail.com","luaan1402","tksrex@gmail.com","Automated Emails","Knock kock, is this this working?");
        //change from, password and to  
    }
}    
