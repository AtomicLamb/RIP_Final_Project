package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
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
@WebServlet(urlPatterns = {"/editorServlet"})
public class editorServlet extends HttpServlet {

private ImpService imp;
private ServiceLayerClass slc;
    
    public editorServlet()
    {
    slc = new ServiceLayerClass();
        imp = new ImpService();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        switch(request.getParameter("submit"))
        {
            case"HOME":
                var dispacther =  request.getRequestDispatcher("HomePage.jsp");
                        dispacther.forward(request, response);
                break;
            case"ANALYSE DATA":
                 dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                        dispacther.forward(request, response);   
                break;
            case"REVIEW COMMENTS":
              viewFlaggedComments(request,response); 
                break;
            case"REVIEW PENDING STORIES":
                 dispacther =  request.getRequestDispatcher("ReviewPendingStories.jsp");
                        dispacther.forward(request, response);   
                break;
            case"REVOKE WRITER PRIVILEGES":
              viewWriters(request,response);
                break;
                
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
         switch(request.getParameter("submit"))
         {
             case"UNFLAG COMMENT":
                 unFlagComment(request,response);
                 break;
             case"REMOVE COMMENT":
                 deleteComment(request,response);
                 break;
             case"REVOKE WRITER PRIVILEGE":
                 revokeWriterPrivileges(request,response);
                 break;
             case"Submit Analytic Choice":
                 var dispacther =  request.getRequestDispatcher("AnalyseData.jsp");
                        dispacther.forward(request, response);  
                 break;
         }
    }
     public void viewWriters(HttpServletRequest request, HttpServletResponse response)
       {
               request.setAttribute("writerList", imp.viewWriters());
                                       var dispatcher =  request.getRequestDispatcher("RevokeWriterPrivileges.jsp");
                                      try {
                                          dispatcher.forward(request, response);
                                      } catch (ServletException | IOException ex) {
                                          Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                                      }
       }
       public void revokeWriterPrivileges(HttpServletRequest request, HttpServletResponse response)
              {
                      String email = request.getParameter("removeWriterPrivileges");
                      
                      request.setAttribute("message", imp.revokeWriterPrivileges(new Writer(email)));
                                              var dispatcher =  request.getRequestDispatcher("Editors.jsp");
                                             try {
                                                 dispatcher.forward(request, response);
                                             } catch (ServletException | IOException ex) {
                                                 Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                                             }
              }
       public void viewFlaggedComments(HttpServletRequest request, HttpServletResponse response)
       {
         request.setAttribute("flaggedCommentsList", imp.viewFlaggedComments());
               var dispatcher =  request.getRequestDispatcher("ReviewComments.jsp");
                 try 
                 {
                    dispatcher.forward(request, response);
                 }
                 catch (ServletException | IOException ex) 
                 {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
       }
    public void deleteComment(HttpServletRequest request, HttpServletResponse response)
    {
        Integer commentID = Integer.valueOf(request.getParameter("reviewCommentID"));
                
        request.setAttribute("message", imp.deleteComment(new Comment(commentID)));
        var dispatcher =  request.getRequestDispatcher("Editors.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void unFlagComment(HttpServletRequest request, HttpServletResponse response)
    {
        Integer commentID = Integer.valueOf(request.getParameter("reviewCommentID"));
        
        request.setAttribute("message", imp.unFlagComment(new Comment(commentID)));
        var dispatcher =  request.getRequestDispatcher("Editors.jsp");
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
