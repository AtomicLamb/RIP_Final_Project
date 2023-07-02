package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.Models.Administration.Email;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/controllerServlet"})
public class controllerServlet extends HttpServlet {
    private Email e;
    private ImpService imp;
    private HttpSession session;
    private ServiceLayerClass service;
    private String email;
    
    public controllerServlet()
    {
        e = new Email();
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
           case"Verified Email":
               String message = imp.emailVerification(request.getParameter("email"));
               request.setAttribute("message", message);
               request.getRequestDispatcher("EmailVerification.jsp").forward(request,response);
               break;
           case"GO TO LOGIN":
               dispatcher =  request.getRequestDispatcher("index.jsp");
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
           case"Submit Genres":
               selectGenre(request,response);
               break;
       }
    }
    
   public void registerReader(HttpServletRequest request, HttpServletResponse response)
    {
            String firstName = request.getParameter("readerFirstName");
            String surname = request.getParameter("readerSurname");
           email = request.getParameter("readerEmail");
            String phoneNum = request.getParameter("readerPhoneNum");
            String password = request.getParameter("readerPassword");
            
            Reader reader = new Reader(firstName,surname,email,phoneNum,password);
            String message = imp.registerReader(reader);
            request.setAttribute("genreList",service.getGenres());
            
            if(imp.registerReader(reader).equalsIgnoreCase("Reader successfully added, Please check your emails to verify your account."))
            {
                request.setAttribute("message", message);
                var dispatcher =  request.getRequestDispatcher("SelectGenre.jsp");
                try {
                    dispatcher.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            else
            {
                request.setAttribute("message", message);
                var dispacther =  request.getRequestDispatcher("index.jsp");
                try {
                    dispacther.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
    }
   public void addWriter(HttpServletRequest request, HttpServletResponse response)
   {
      String firstName = request.getParameter("writerFirstName");
            String surname = request.getParameter("writerSurname");
            email = request.getParameter("writerEmail");
            String phoneNum = request.getParameter("writerPhoneNum");
            String password = request.getParameter("writerPassword");
            String motivation = request.getParameter("writerMotivation");
            
       WriterApplication writer = (new WriterApplication(firstName,surname,email,phoneNum,password,motivation));    
       String message = imp.registerWriter(writer);
       request.setAttribute("genreList",service.getGenres());
       
            if (imp.registerWriter(writer).equalsIgnoreCase("Application successfully submitted."))
            {
                request.setAttribute("message", message);
                var dispacther =  request.getRequestDispatcher("SelectGenre.jsp");
                try {
                    dispacther.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            else
            {
                request.setAttribute("message", message);
                var dispacther =  request.getRequestDispatcher("index.jsp");
                try {
                    dispacther.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
   }
    public void login(HttpServletRequest request, HttpServletResponse response) {
        String email = request.getParameter("loginEmail");
        String password = request.getParameter("loginPassword");
        User user = imp.login(new User(email,password));
        
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
                   List<Story>genreStories=service.getStoriesFromGenres(user);
                   
                   request.setAttribute("stories", genreStories);
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
    public void selectGenre(HttpServletRequest request, HttpServletResponse response)
    {
        String[] genres = request.getParameterValues("choice");
        User user = new User(email);
        
        if (genres.length >= 3)
        {
            for(int i = 0; i < genres.length; i++)
            {
                request.setAttribute("message", service.selectGenre(user,new Genre(genres[i])));
            }
            var dispacther =  request.getRequestDispatcher("index.jsp");
            try {
                dispacther.forward(request, response);
            } catch (ServletException | IOException ex) {
                Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else
        {
            request.setAttribute("message", "You must select 3 or more genres");
            request.setAttribute("genreList",service.getGenres());
            var dispacther =  request.getRequestDispatcher("SelectGenre.jsp");
            try {
                dispacther.forward(request, response);
            } catch (ServletException | IOException ex) {
                Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
