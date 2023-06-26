package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.DAOs.StoryDAOInterface;
import TrialAndError.ReadersAreInnovators.DAOs.StoryImplementation;
import TrialAndError.ReadersAreInnovators.DAOs.WriterDAOInterface;
import TrialAndError.ReadersAreInnovators.DAOs.WriterImplementation;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/writerServlet"})
@MultipartConfig
public class writerServlet extends HttpServlet 
{

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"HOME PAGE":
               var dispacther =  request.getRequestDispatcher("HomePage.jsp");
                        dispacther.forward(request, response);
               break;
           case"VIEW STORIES":
               Writer writer=new Writer(29);
              StoryDAOInterface storyDAO=new StoryImplementation();
                request.setAttribute("writersPublishedStories",storyDAO.getPublishedStories(writer));
                dispacther =  request.getRequestDispatcher("ViewStories.jsp");
                        dispacther.forward(request, response);
               break;
           case"CREATE NEW STORY":
                dispacther =  request.getRequestDispatcher("CreateNewStory.jsp");
                        dispacther.forward(request, response);
               break;
           case"VIEW DRAFTS":
                dispacther =  request.getRequestDispatcher("ViewDrafts.jsp");
                        dispacther.forward(request, response);
               break;
                   
       }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        switch(request.getParameter("submit")){
            case"Submit Story":
                
                break;
            case"Save Story":
                saveDraft(request, response);    
                break;
            case"Submit Draft":
               
                break;
            case"Save Draft":
                 
                break;
        }
    }
    public void saveDraft(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        String title = request.getParameter("storyTitle");
            Part filePart = request.getPart("fileImage");
            File file = (File) filePart;
            String synopsis = request.getParameter("storySynopsis");
            String storyBody = request.getParameter("storyBody");
            
            request.setAttribute("message", "");
                        var dispacther =  request.getRequestDispatcher("Writers.jsp");
                       try {
                           dispacther.forward(request, response);
                       } catch (ServletException | IOException ex) {
                           Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                       }
    }
}
