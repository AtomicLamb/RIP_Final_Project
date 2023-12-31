package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.RESTModels.UserGenreListREST;
import TrialAndError.ReadersAreInnovators.Models.RESTModels.UserGenreREST;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.Functions_Interface;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayer_Interface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
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
    private final Functions_Interface functions=new FunctionsClass();
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
            case"BACK TO EDIT PERSONAL INFORMATION PAGE":
                getUser(request,response);
            case"APPLY FOR WRITER":
                  var dispacther =  request.getRequestDispatcher("applyForWriter.jsp");
                        dispacther.forward(request, response);
                break;
            case"PROFILE":
                session = request.getSession(false);
                
                Integer userID = (Integer) session.getAttribute("UserID");
                User user = new User(userID);
                List<Story> readFavorites=imp.getReadFavorites(user);
                List<Story>unreadFavourites=imp.getUnreadFavorites(user);
                List<Genre>userGenres=imp.getUserGenres(user);
                List<Writer>followedAuthors=imp.getFollowedAuthors(user);
                request.setAttribute("readFavourites",readFavorites);
                request.setAttribute("unreadFavourites",unreadFavourites);
                request.setAttribute("userGenres",userGenres);
                request.setAttribute("followedAuthors",followedAuthors);
                dispacther =  request.getRequestDispatcher("Profile.jsp");
                dispacther.forward(request, response);
                break;
            case"HOME":
                session= request.getSession(false);
                Integer num = (Integer) session.getAttribute("UserTypeID");
                request.setAttribute("message", num);
                
                List<Story>genreStories=imp.getStoriesFromGenres(new User((Integer) session.getAttribute("UserID")));
                List<Story>topWeekPicksStories=imp.getWeeksTopPicks();
                List<Story>recommendedBooks=imp.getRecommendedBooks();
                request.setAttribute("recommendedBooks",recommendedBooks);
                request.setAttribute("topPicks",topWeekPicksStories);
                request.setAttribute("stories", genreStories);
                
                dispacther =  request.getRequestDispatcher("HomePage.jsp");
                dispacther.forward(request, response);
                break;
            case"BACK TO PROFILE":
                session = request.getSession(false);
                
                userID = (Integer) session.getAttribute("UserID");
                user = new User(userID);
                readFavorites=imp.getReadFavorites(user);
                unreadFavourites=imp.getUnreadFavorites(user);
                userGenres=imp.getUserGenres(user);
                followedAuthors=imp.getFollowedAuthors(user);
                request.setAttribute("readFavourites",readFavorites);
                request.setAttribute("unreadFavourites",unreadFavourites);
                request.setAttribute("userGenres",userGenres);
                request.setAttribute("followedAuthors",followedAuthors);
                dispacther =  request.getRequestDispatcher("Profile.jsp");
                dispacther.forward(request, response);
                break;
            case"CHANGE GENRES":
                request.setAttribute("genreList",imp.getGenres());
                dispacther =  request.getRequestDispatcher("changeGenres.jsp");
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
           case"EDIT PERSONAL INFORMATION":
               session = request.getSession(false);
               
               Integer userID = (Integer) session.getAttribute("UserID");
               User user = new User(userID);
               List<Story> readFavorites=imp.getReadFavorites(user);
               List<Story>unreadFavourites=imp.getUnreadFavorites(user);
               List<Genre>userGenres=imp.getUserGenres(user);
               List<Writer>followedAuthors=imp.getFollowedAuthors(user);
               request.setAttribute("readFavourites",readFavorites);
               request.setAttribute("unreadFavourites",unreadFavourites);
               request.setAttribute("userGenres",userGenres);
               request.setAttribute("followedAuthors",followedAuthors);
               var dispacther =  request.getRequestDispatcher("Profile.jsp");
               dispacther.forward(request, response);
               
               editPersonalInfo(request,response);
               
               break;
           case"CONFIRM WRITER APPLICATION":
               applyForWriter(request,response);    
               break;
           case"SUBMIT CHANGED GENRES":
               String[] genres = request.getParameterValues("choice");
               List<Genre> genreList = new ArrayList<>();
               user = new User((String) session.getAttribute("Email"));
               
               if (genres != null) {
                   if (genres.length >= 3) {
                       for (int i = 0; i < genres.length; i++) {
                           genreList.add(new Genre(genres[i]));
                       }
                       request.setAttribute("message", imp.editUserGenres(new UserGenreListREST(user, genreList)));
                       session = request.getSession(false);
                       
                       userID = (Integer) session.getAttribute("UserID");
                       user = new User(userID);
                       readFavorites = imp.getReadFavorites(user);
                       unreadFavourites = imp.getUnreadFavorites(user);
                       userGenres = imp.getUserGenres(user);
                       followedAuthors = imp.getFollowedAuthors(user);
                       request.setAttribute("readFavourites", readFavorites);
                       request.setAttribute("unreadFavourites", unreadFavourites);
                       request.setAttribute("userGenres", userGenres);
                       request.setAttribute("followedAuthors", followedAuthors);
                       dispacther = request.getRequestDispatcher("Profile.jsp");
                       try {
                           dispacther.forward(request, response);
                       } catch (ServletException | IOException ex) {
                           Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                       }
                   } else {
                       request.setAttribute("message", "You must select 3 or more genres");
                       request.setAttribute("genreList", imp.getGenres());
                       dispacther = request.getRequestDispatcher("changeGenres.jsp");
                       try {
                           dispacther.forward(request, response);
                       } catch (ServletException | IOException ex) {
                           Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                       }
                   }
               }
               else {
                   request.setAttribute("message", "You must select 3 or more genres");
                   request.setAttribute("genreList", imp.getGenres());
                   dispacther = request.getRequestDispatcher("changeGenres.jsp");
                   try {
                       dispacther.forward(request, response);
                   } catch (ServletException | IOException ex) {
                       Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                   } 
               }
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
        
        request.setAttribute("message", imp.editPersonalInfo(new User(userID,firstName,surname,email,phoneNum, functions.passwordEncryption(password))));
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
        
        request.setAttribute("personalInfo", imp.getUser(new User(userID)));
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
        
        Integer userID = (Integer) session.getAttribute("UserID");
        User user = new User(userID);
        List<Story> readFavorites=imp.getReadFavorites(user);
        List<Story>unreadFavourites=imp.getUnreadFavorites(user);
        List<Genre>userGenres=imp.getUserGenres(user);
        List<Writer>followedAuthors=imp.getFollowedAuthors(user);
        request.setAttribute("readFavourites",readFavorites);
        request.setAttribute("unreadFavourites",unreadFavourites);
        request.setAttribute("userGenres",userGenres);
        request.setAttribute("followedAuthors",followedAuthors);
        
        String firstName = (String) session.getAttribute("Name");
        String surname = (String) session.getAttribute("Surname");
        String email = (String) session.getAttribute("Email");
        String phoneNum = (String) session.getAttribute("PhoneNumber");
        String motivation = request.getParameter("motivation");
        user = (User) session.getAttribute("User");
        
        request.setAttribute("message", imp.applyForWriter(new WriterApplication(firstName,surname,email,phoneNum,user.getPassword(),motivation)));
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
}
