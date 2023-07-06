package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.DAOs.StoryDAOInterface;
import TrialAndError.ReadersAreInnovators.DAOs.StoryImplementation;
import TrialAndError.ReadersAreInnovators.DAOs.WriterDAOInterface;
import TrialAndError.ReadersAreInnovators.DAOs.WriterImplementation;
import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.RESTModels.StoryApplicationGenreREST;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayer_Interface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.List;
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
    private HttpSession session;
    private Writer writer;
    private Story story;
    private ServiceLayerClass slc;
    private ImpService imp;
    private Part filePart; 
    private InputStream image;
    private String newCoverImage;
    FunctionsClass functionsClass = new FunctionsClass();
    private String title;
    private Integer storyId;
    
    public writerServlet(){
        slc = new ServiceLayerClass();
        imp = new ImpService();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"HOME PAGE":
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
           case"VIEW STORIES":
               session= request.getSession(false);
               writer=new Writer((Integer) session.getAttribute("UserID"));
              List<Story> publishedStories=imp.getPublishedStories(writer);
                request.setAttribute("writersPublishedStories",publishedStories);
                dispacther =  request.getRequestDispatcher("ViewStories.jsp");
                        dispacther.forward(request, response);
               break;
           case"CREATE NEW STORY":
                dispacther =  request.getRequestDispatcher("CreateNewStory.jsp");
                        dispacther.forward(request, response);
               break;
           case"VIEW DRAFTS":
               session= request.getSession(false);
               writer=new Writer((Integer) session.getAttribute("UserID"));
               List<Story>drafts=imp.getAllDrafts(writer);
               request.setAttribute("drafts",drafts);
                dispacther =  request.getRequestDispatcher("ViewDrafts.jsp");
                        dispacther.forward(request, response);
               break;
               
           case"editDraft":
               story=new Story();
               storyId = Integer.valueOf(request.getParameter("storyId"));
                story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                  request.setAttribute("draft",imp.getDraft(story));
              
               dispacther =  request.getRequestDispatcher("EditDraft.jsp");
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
                  //Title, AuthorID, StoryBody, Synopsis, CoverImage
                session = request.getSession(false);
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                newCoverImage = functionsClass.encodeBase64(image);
                title = request.getParameter("storyTitle");
                boolean commentsEnabled = true;
                
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("yes"))
                {
                    commentsEnabled = true;
                }
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("no"))
                {
                    commentsEnabled = false;
                }
                
                request.setAttribute("genreList",imp.getGenres());
                request.setAttribute("message",imp.submitStory(new Story(title,(Integer)session.getAttribute("UserID")
                        ,request.getParameter("storySynopsis"), request.getParameter("storyBody"), newCoverImage, commentsEnabled)));
                var dispatcher=request.getRequestDispatcher("SelectStoryGenre.jsp");
                dispatcher.forward(request,response);
                break;
            case"Save Story":
                
                session = request.getSession(false);
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                newCoverImage = functionsClass.encodeBase64(image);
                commentsEnabled = true;
                
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("yes"))
                {
                    commentsEnabled = true;
                }
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("no"))
                {
                    commentsEnabled = false;
                }
                
                request.setAttribute("message",imp.saveAsDraft(new Story(request.getParameter("storyTitle"),(Integer)session.getAttribute("UserID")
                        ,request.getParameter("storySynopsis"), request.getParameter("storyBody"), newCoverImage, commentsEnabled)));
                dispatcher=request.getRequestDispatcher("Writers.jsp");
                dispatcher.forward(request,response);
                break;
            case"Submit Draft":
                session = request.getSession(false);
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                title = request.getParameter("storyTitle");
                commentsEnabled = true;
                
                if (filePart != null)
                {
                    
                    newCoverImage = functionsClass.encodeBase64(image);
                }
                
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("yes"))
                {
                    commentsEnabled = true;
                }
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("no"))
                {
                    commentsEnabled = false;
                }
                
                request.setAttribute("genreList",imp.getGenres());
                request.setAttribute("message",imp.submitStory(new Story(request.getParameter("storyTitle"),(Integer)session.getAttribute("UserID")
                        ,request.getParameter("storySynopsis"), request.getParameter("storyBody"), newCoverImage, commentsEnabled)));
                dispatcher=request.getRequestDispatcher("SelectStoryGenre.jsp");
                dispatcher.forward(request,response);
                
                break;
            case"Save Draft":
                session = request.getSession(false);
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                title = request.getParameter("storyTitle");
                commentsEnabled = true;
                
                if (filePart.getSize()>0)
                {
                    newCoverImage = functionsClass.encodeBase64(image);
                }
                else {
                    newCoverImage=request.getParameter("cover");
                }
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("yes"))
                {
                    commentsEnabled = true;
                }
                if (request.getParameter("commentsEnabled").equalsIgnoreCase("no"))
                {
                    commentsEnabled = false;
                }
                
                request.setAttribute("message",imp.updateDraft(new Story(storyId,title,(Integer)session.getAttribute("UserID")
                        ,request.getParameter("storySynopsis"), request.getParameter("storyBody"), newCoverImage, commentsEnabled)));
                dispatcher=request.getRequestDispatcher("Writers.jsp");
                dispatcher.forward(request,response);
                break;
            case"Make Story Private":
                story=new Story();
                story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                request.setAttribute("message",imp.privatizeStory(story));
                session= request.getSession(false);
                writer=new Writer((Integer) session.getAttribute("UserID"));
                List<Story> publishedStories=imp.getPublishedStories(writer);
                request.setAttribute("writersPublishedStories",publishedStories);
                var dispacther =  request.getRequestDispatcher("ViewStories.jsp");
                dispacther.forward(request, response);
                break;
            case "Make Story Public":
                story=new Story();
                story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                request.setAttribute("message",imp.publiciseStory(story));
                session= request.getSession(false);
                writer=new Writer((Integer) session.getAttribute("UserID"));
                List<Story>publishedStories2=imp.getPublishedStories(writer);
                request.setAttribute("writersPublishedStories",publishedStories2);
                var dispacther2 =  request.getRequestDispatcher("ViewStories.jsp");
                dispacther2.forward(request, response);
                break;
            case"SUBMIT STORY GENRES":
                selectStoryGenre(request,response);
                break;
            case"Delete Draft":
                request.setAttribute("message",imp.deleteDraft(new Story(storyId)));
                dispatcher=request.getRequestDispatcher("Writers.jsp");
                dispatcher.forward(request,response);
                break;
            case"BACK TO WRITER PAGE":
                dispacther =  request.getRequestDispatcher("Writers.jsp");
                dispacther.forward(request, response);    
        }
    }
    
   
    public void selectStoryGenre(HttpServletRequest request, HttpServletResponse response)
    {
        String[] genres = request.getParameterValues("choice");
        
        if (genres!=null) 
        {
            if (genres.length >= 1 && genres.length <= 3) {
                for (int i = 0; i < genres.length; i++) {
                    request.setAttribute("message", imp.addGenreToPendingStory(new StoryApplicationGenreREST(new StoryApplication(title, (Integer) session.getAttribute("UserID")), new Genre(genres[i]))));
                }
                var dispacther = request.getRequestDispatcher("Writers.jsp");
                try {
                    dispacther.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            } 
            else 
            {
                request.setAttribute("message", "You must select 1 to 3 genres");
                request.setAttribute("genreList", imp.getGenres());
                var dispacther = request.getRequestDispatcher("SelectStoryGenre.jsp");
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
            request.setAttribute("genreList", imp.getGenres());
            var dispacther = request.getRequestDispatcher("SelectStoryGenre.jsp");
            try {
                dispacther.forward(request, response);
            } catch (ServletException | IOException ex) {
                Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
