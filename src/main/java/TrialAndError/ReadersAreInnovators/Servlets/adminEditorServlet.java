package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
          case"EDITOR PAGE":
              var dispacther =  request.getRequestDispatcher("Editors.jsp");
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
             
               dispacther =  request.getRequestDispatcher("RemoveEditor.jsp");
               dispacther.forward(request, response);
              break;
          case"ADD GENRE":
               dispacther =  request.getRequestDispatcher("AddGenre.jsp");
                        dispacther.forward(request, response);
              break;
          case"REMOVE GENRE":
              getGenres(request,response);
              break;
       }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"Add Genre":
               addGenre(request,response);
               break;
               
           case"Add Editor":
               addEditor(request,response);    
               break;
           case"REMOVE GENRE":
               removeGenre(request,response);
               break;
           case"REMOVE EDITOR":
               
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
        request.setAttribute("getGenre", imp.getGenres());
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
        String email = request.getParameter("editorPhoneNum");
        String phoneNum = request.getParameter("editorEmail");
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
}
