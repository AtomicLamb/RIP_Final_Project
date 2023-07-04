package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/adminEditorServlet"})
public class adminEditorServlet extends HttpServlet {
    
    private ImpService imp;
    HttpSession session;
    public adminEditorServlet()
    {
        imp = new ImpService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
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
               var dispacther =  request.getRequestDispatcher("HomePage.jsp");
               dispacther.forward(request, response);
               break;
          case"EDITOR PAGE":
              dispacther =  request.getRequestDispatcher("Editors.jsp");
                        dispacther.forward(request, response);
              break;
          case"MANAGE GENRES":
              dispacther =  request.getRequestDispatcher("ManageGenres.jsp");
                        dispacther.forward(request, response);
              break;
          case"ADD EDITOR":
               dispacther =  request.getRequestDispatcher("AddEditor.jsp");
                        dispacther.forward(request, response);
              break;
              
          case"REMOVE EDITOR":
              viewEditors(request,response);
              break;
          case"ADD GENRE":
               dispacther =  request.getRequestDispatcher("AddGenre.jsp");
                        dispacther.forward(request, response);
              break;
          case"REMOVE GENRE":
              getGenres(request,response);
              break;
           case"BACK TO ADMIN EDITOR PAGE":
               dispacther =  request.getRequestDispatcher("Admin-Editor.jsp");
               dispacther.forward(request, response);    
           //
       }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"ADD GENRE":
               addGenre(request,response);
               break;
               
           case"ADD EDITOR":
               addEditor(request,response);    
               break;
           case"REMOVE GENRE":
               removeGenre(request,response);
               break;
           case"REMOVE EDITOR":
               removeEditor(request,response);
               break;
       }
    }
    public void addGenre(HttpServletRequest request, HttpServletResponse response)
    {
        String genreName =request.getParameter("genreName");
        
        request.setAttribute("message", imp.addGenre(new Genre(genreName)));
        var dispatcher =  request.getRequestDispatcher("Admin-Editor.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void removeGenre(HttpServletRequest request, HttpServletResponse response)
    {
        Integer genreID = Integer.valueOf(request.getParameter("removeGenreID"));
        
        request.setAttribute("message", imp.removeGenre(new Genre(genreID)));
        var dispatcher =  request.getRequestDispatcher("Admin-Editor.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void getGenres(HttpServletRequest request, HttpServletResponse response)
    {
        request.setAttribute("getGenres", imp.getGenres());
        var dispatcher =  request.getRequestDispatcher("RemoveGenre.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void addEditor(HttpServletRequest request, HttpServletResponse response)
    {
        String firstName = request.getParameter("editorFirstName");
        String surname = request.getParameter("editorSurname");
        String email = request.getParameter("editorEmail");
        String phoneNum = request.getParameter("editorPhoneNum");
        String password = "password";
        
        request.setAttribute("message", imp.addEditor(new Editor(firstName,surname,email,phoneNum,password)));
        var dispatcher =  request.getRequestDispatcher("Admin-Editor.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //removeEditor
    public void removeEditor(HttpServletRequest request, HttpServletResponse response)
    {
        String email = request.getParameter("removeEditorEmail");
        
        request.setAttribute("message", imp.removeEditor(new Editor(email)));
        var dispatcher =  request.getRequestDispatcher("Admin-Editor.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void viewEditors(HttpServletRequest request, HttpServletResponse response)
    {
        request.setAttribute("getEditor", imp.viewEditors());
        var dispatcher =  request.getRequestDispatcher("RemoveEditor.jsp");
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
