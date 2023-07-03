package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.Administration.WriterApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.InputStream;
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
private Integer pendingStoryID;
    private Part filePart;
    private InputStream image;
    private String newCoverImage;
private final FunctionsClass functionsClass = new FunctionsClass();

    HttpSession session;
    Integer authorId;
    String title;
    
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
                session= request.getSession(false);
                Integer num = (Integer) session.getAttribute("UserTypeID");
                request.setAttribute("message", num);
                
                List<Story>genreStories=slc.getStoriesFromGenres(new User((Integer) session.getAttribute("UserID")));
                List<Story>topWeekPicksStories=slc.getWeeksTopPicks();
                List<Story>recommendedBooks=slc.getRecommendedBooks();
                request.setAttribute("recommendedBooks",recommendedBooks);
                request.setAttribute("topPicks",topWeekPicksStories);
                request.setAttribute("stories", genreStories);
                var dispacther =  request.getRequestDispatcher("HomePage.jsp");
                        dispacther.forward(request, response);
                break;
            case"ANALYSE DATA":
                 dispacther =  request.getRequestDispatcher("AnalyseData.jsp");
                        dispacther.forward(request, response);   
                break;
            case"REVIEW COMMENTS":
              viewFlaggedComments(request,response); 
                break;
            case"REVIEW PENDING STORIES":
                 List<StoryApplication>pendingStories=slc.viewPendingStories();
                request.setAttribute("pendingStories",pendingStories);
                  dispacther =  request.getRequestDispatcher("ReviewPendingStories.jsp");
                        dispacther.forward(request, response);   
                break;
            case"REVOKE WRITER PRIVILEGES":
              viewWriters(request,response);
                break;
            case"reviewPendingStory":
                
               StoryApplication storyApplication = new StoryApplication();
               storyApplication.setPendingStoryID(Integer.valueOf(request.getParameter("storyId")));
               request.setAttribute("pendingStory",slc.reviewPendingStory(storyApplication));
               
               dispacther= request.getRequestDispatcher("reviewPendingStory.jsp");
               dispacther.forward(request,response);
                break;
            case"REVIEW PENDING WRITERS":
                viewWriterApplications(request,response);
                break;
            case"BACK TO EDITORS PAGE":
                dispacther =  request.getRequestDispatcher("Editors.jsp");
                dispacther.forward(request, response);
            case"BACK TO Analyse Data PAGE":
                dispacther =  request.getRequestDispatcher("Editors.jsp");
                dispacther.forward(request, response);
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
             case"Accept":
                 title = request.getParameter("storyTitle");
                 authorId = Integer.valueOf(request.getParameter("authorId"));
                 
                        session = request.getSession(false);
                 request.setAttribute("message",slc.approvePendingStory(new StoryApplication(Integer.valueOf(request.getParameter("pendingstoryId")),
                           request.getParameter("storyTitle"), Integer.valueOf(request.getParameter("authorId")),
                                 request.getParameter("email"),request.getParameter("number") ,request.getParameter("storyBody"), request.getParameter("storySynopsis"),
                                 request.getParameter("coverImagePath") , Boolean.parseBoolean(request.getParameter("storyCommentsEnabled"))),
                         new Editor((Integer)session.getAttribute("UserID"))));
                 
                 request.setAttribute("genreList", slc.getGenres());
                 List<String> genres = new ArrayList<>();
                 genres.add(request.getParameter("genre1"));
                 
                 if (!request.getParameter("genre2").equalsIgnoreCase("null")) {
                     genres.add(request.getParameter("genre2"));
                 }
                 if (!request.getParameter("genre3").equalsIgnoreCase("null")) {
                     genres.add(request.getParameter("genre3"));
                 }
                     
                 
                 
                 request.setAttribute("checkedGenreList", genres);
                 
                
                 
                 var dispacther= request.getRequestDispatcher("StoryGenre.jsp");
                 dispacther.forward(request,response);
                 
                 break;
             case"Deny":
                 request.setAttribute("message",slc.removePendingStory(new StoryApplication(Integer.valueOf(request.getParameter("pendingstoryId")))));
                 dispacther= request.getRequestDispatcher("Editors.jsp");
                 dispacther.forward(request,response);
                 break;
             case"Approve Writer":
                 approveWriter(request,response);
                 break;
             case"Deny Writer":
                 denyWriter(request,response);
                 break;
             case"Submit Genres":
                 selectPendingStoryGenre(request,response);
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
    public void approveWriter(HttpServletRequest request, HttpServletResponse response)
    {
        String email = request.getParameter("writerEmail");
        
        request.setAttribute("message", imp.approveWriter(new WriterApplication(email)));
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
    //
    public void viewWriterApplications(HttpServletRequest request, HttpServletResponse response)
    {
        
        request.setAttribute("pendingWritersList", imp.viewWriterApplications());
        var dispatcher =  request.getRequestDispatcher("ReviewPendingWriters.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //
    public void denyWriter(HttpServletRequest request, HttpServletResponse response)
    {
        String email = request.getParameter("writerEmail");
        
        request.setAttribute("message", imp.denyWriter(new Writer(email)));
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
    public void selectPendingStoryGenre(HttpServletRequest request, HttpServletResponse response)
    {
        String[] genres = request.getParameterValues("choice");
        
        if (genres!=null)
        {
            if (genres.length >= 1 && genres.length <= 3) {
                for (int i = 0; i < genres.length; i++) {
                    request.setAttribute("message", slc.addGenreToStory(new Story(title,authorId),new Genre(genres[i])));
                }
                var dispacther = request.getRequestDispatcher("Editors.jsp");
                try {
                    dispacther.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            else
            {
                request.setAttribute("message", "You must select 1 to 3 genres");
                request.setAttribute("genreList", slc.getGenres());
                var dispacther = request.getRequestDispatcher("StoryGenre.jsp");
                try {
                    dispacther.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        else
        {
            request.setAttribute("message", "You must select 1 to 3 genres");
            request.setAttribute("genreList", slc.getGenres());
            var dispacther = request.getRequestDispatcher("StoryGenre.jsp");
            try {
                dispacther.forward(request, response);
            } catch (ServletException | IOException ex) {
                Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        
    }
    
    
}
