package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayer_Interface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/editPersonalInformationServlet"})
public class editPersonalInformationServlet extends HttpServlet {
    
    private ImpService imp;
    private HttpSession session;
    private ServiceLayerClass service;
    
    public editPersonalInformationServlet()
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
            case"EDIT PERSONAL INFORMATION":
                getUser(request,response);
                break;
            case"Apply for writer":
                var dispacther =  request.getRequestDispatcher("applyForWriter.jsp");
                        dispacther.forward(request, response);
                break;
            case"Profile":
                session = request.getSession(false);
                
                Integer userID = (Integer) session.getAttribute("UserID");
                User user = new User(userID);
                List<Story> readFavorites=service.getReadFavorites(user);
                List<Story>unreadFavourites=service.getUnreadFavorites(user);
                List<Genre>userGenres=service.getUserGenres(user);
                List<Writer>followedAuthors=service.getFollowedAuthors(user);
                request.setAttribute("readFavourites",readFavorites);
                request.setAttribute("unreadFavourites",unreadFavourites);
                request.setAttribute("userGenres",userGenres);
                request.setAttribute("followedAuthors",followedAuthors);
                dispacther =  request.getRequestDispatcher("Profile.jsp");
                dispacther.forward(request, response);
                
                break;
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"Edit Personal Information":
               session = request.getSession(false);
               
               Integer userID = (Integer) session.getAttribute("UserID");
               User user = new User(userID);
               List<Story> readFavorites=service.getReadFavorites(user);
               List<Story>unreadFavourites=service.getUnreadFavorites(user);
               List<Genre>userGenres=service.getUserGenres(user);
               List<Writer>followedAuthors=service.getFollowedAuthors(user);
               request.setAttribute("readFavourites",readFavorites);
               request.setAttribute("unreadFavourites",unreadFavourites);
               request.setAttribute("userGenres",userGenres);
               request.setAttribute("followedAuthors",followedAuthors);
               var dispacther =  request.getRequestDispatcher("Profile.jsp");
               dispacther.forward(request, response);
               
               editPersonalInfo(request,response);
               
               break;
           case"Confirm Writer Application":
               applyForWriter(request,response);    
               break;
           
       }
    }
    public void editPersonalInfo(HttpServletRequest request, HttpServletResponse response)
    {
        session = request.getSession(false);
        
        Integer userID = (Integer) session.getAttribute("UserID");
        String firstName = request.getParameter("editFirstName");
        String surname = request.getParameter("editSurname");
        String email = request.getParameter("editEmail");
        String phoneNum = request.getParameter("editPhoneNum");
        String password = request.getParameter("editPassword");
        
        request.setAttribute("message", imp.editPersonalInfo(new User(userID,firstName,surname,email,phoneNum,password)));
        var dispatcher =  request.getRequestDispatcher("Profile.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void getUser(HttpServletRequest request, HttpServletResponse response)
    {
        session = request.getSession(false);
        
        Integer userID = (Integer) session.getAttribute("UserID");
        
        request.setAttribute("personalInfo", service.getUser(new User(userID)));
        var dispatcher =  request.getRequestDispatcher("editPersonalData.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void applyForWriter(HttpServletRequest request, HttpServletResponse response)
    {
        session = request.getSession(false);
        
        String firstName = (String) session.getAttribute("Name");
        String surname = (String) session.getAttribute("Surname");
        String email = (String) session.getAttribute("Email");
        String phoneNum = (String) session.getAttribute("PhoneNumber");
        String motivation = request.getParameter("motivation");
        
        request.setAttribute("message", imp.applyForWriter(new WriterApplication(firstName,surname,email,phoneNum,motivation)));
        var dispatcher =  request.getRequestDispatcher("editPersonalData.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
