package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;


import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;



/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/controllerServlet"})
public class controllerServlet extends HttpServlet {
    
    private ImpService imp;
    private HttpSession session;
    private ServiceLayerClass service;
    
    public controllerServlet()
    {
        imp = new ImpService();
        service = new ServiceLayerClass();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"Writer":
               var dispatcher =  request.getRequestDispatcher("WriterSign-Up.jsp");
                        dispatcher.forward(request, response);
                break;
               case"Continue to Homepage":
                   Integer num = 0;
                   request.setAttribute("message", num);
                   dispatcher =  request.getRequestDispatcher("HomePage.jsp");
                        dispatcher.forward(request, response);
               break;
          
       }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"Login":
               login(request,response);
               break;
           case"Confirm Reader":
               registerReader(request, response);
               break;
           case"Confirm Writer":
               addWriter(request,response);
               break;
       }
    }
    
   public void registerReader(HttpServletRequest request, HttpServletResponse response)
    {
            String firstName = request.getParameter("readerFirstName");
            String surname = request.getParameter("readerSurname");
            String email = request.getParameter("readerEmail");
            String phoneNum = request.getParameter("readerPhoneNum");
            String password = request.getParameter("readerPassword");
        
        request.setAttribute("message", imp.registerReader(new Reader(firstName,surname,email,phoneNum,password)));
                        var dispatcher =  request.getRequestDispatcher("index.jsp");
                       try {
                           dispatcher.forward(request, response);
                       } catch (ServletException | IOException ex) {
                           Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                       }
                       
                       //TODO email stuff
                       String mail = (String) session.getAttribute("Email");
                       String smtp = "smtp.gmail.com";
                       
                       
    }
   public void addWriter(HttpServletRequest request, HttpServletResponse response)
   {
      String firstName = request.getParameter("writerFirstName");
            String surname = request.getParameter("writerSurname");
            String email = request.getParameter("writerEmail");
            String phoneNum = request.getParameter("writerPhoneNum");
            String password = request.getParameter("writerPassword");
            String motivation = request.getParameter("writerMotivation");
            
            request.setAttribute("message", imp.registerWriter(new WriterApplication(firstName,surname,email,phoneNum,password,motivation)));
                        var dispacther =  request.getRequestDispatcher("index.jsp");
                       try {
                           dispacther.forward(request, response);
                       } catch (ServletException | IOException ex) {
                           Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                       }
   }
   public void login(HttpServletRequest request, HttpServletResponse response)
   {
       String email = request.getParameter("loginEmail");
       String password = request.getParameter("loginPassword");
       User user = service.login(new User(email,password));
       
       var dispatcher = request.getRequestDispatcher("HomePage.jsp");
           
           try {
               if (user != null) {
                   session = request.getSession(true);
                   
                   session.setAttribute("UserID", user.getUserID());
                   session.setAttribute("Name", user.getName());
                   session.setAttribute("Surname", user.getSurname());
                   session.setAttribute("Email", user.getEmail());
                   session.setAttribute("PhoneNumber", user.getPhoneNumber());
                   session.setAttribute("UserTypeID", user.getUserTypeID());
                   session.setAttribute("UserType", user.getUserType());
                   
                   request.setAttribute("message", user.getUserTypeID());
                   dispatcher.forward(request, response);
               }
                else
               {
                   request.setAttribute("message", "Incorrect email or password. Please try login again or register if you do not have an account");
                   dispatcher =  request.getRequestDispatcher("index.jsp");
                   
                   dispatcher.forward(request, response);
                   
               }
           } 
           catch (ServletException | IOException ex) 
           {
               Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
           }
       
      
   }
}
