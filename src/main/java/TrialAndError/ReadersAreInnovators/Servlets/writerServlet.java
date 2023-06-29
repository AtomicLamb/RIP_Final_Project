package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.DAOs.StoryDAOInterface;
import TrialAndError.ReadersAreInnovators.DAOs.StoryImplementation;
import TrialAndError.ReadersAreInnovators.DAOs.WriterDAOInterface;
import TrialAndError.ReadersAreInnovators.DAOs.WriterImplementation;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
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
      private final ServiceLayer_Interface slc=new ServiceLayerClass();
    private Part filePart; 
    private InputStream image;
    private String newCoverImage;
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
               session= request.getSession(false);
               writer=new Writer((Integer) session.getAttribute("UserID"));
              List<Story> publishedStories=slc.getPublishedStories(writer);
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
               List<Story>drafts=slc.getAllDrafts(writer);
               request.setAttribute("drafts",drafts);
                dispacther =  request.getRequestDispatcher("ViewDrafts.jsp");
                        dispacther.forward(request, response);
               break;
               
           case"editDraft":
               story=new Story();
                story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                  request.setAttribute("draft",slc.getDraft(story));
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
                  
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                story = new Story();
                story.setAuthorID(Integer.valueOf(request.getParameter("draftId")));
                newCoverImage = Base64.getEncoder().encodeToString(image.readAllBytes());
                session= request.getSession(false);
                            
                request.setAttribute("message",slc.submitStory(new Story(request.getParameter("storyTitle"),(Integer)session.getAttribute("UserID")
                        ,request.getParameter("storySynopsis"), newCoverImage, "",request.getParameter("storyBody"))));
                var dispatcher=request.getRequestDispatcher("ViewDrafts.jsp");
                dispatcher.forward(request,response);
                break;
            case"Save Story":
                //Title, AuthorID, StoryBody, Synopsis, CoverImage, CommentsEnabled
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                story=new Story();
                story.setAuthorID(Integer.valueOf(request.getParameter("draftId")));
                 newCoverImage = Base64.getEncoder().encodeToString(image.readAllBytes());
                saveAsDraft(getCoverImage(newCoverImage),request,response);
                break;
            case"Submit Draft":
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                story=new Story();
                story.setAuthorID(Integer.valueOf(request.getParameter("draftId")));
                
                newCoverImage = Base64.getEncoder().encodeToString(image.readAllBytes());
                
                if(newCoverImage!=null){
                    submitStory(getCoverImage(newCoverImage),request,response);
                }
                else {
                    submitStory(getCoverImage(slc.getDraft(story).getCoverImage()),request,response);
                }
               
                
                break;
            case"Save Draft":
                filePart = request.getPart("fileImage");
                image = filePart.getInputStream();
                 
               
                newCoverImage = Base64.getEncoder().encodeToString(image.readAllBytes());
               
                if(newCoverImage!=null){
                    saveDraft2Database(getCoverImage(newCoverImage),request,response);
                }
                else {
                    saveDraft2Database(getCoverImage(slc.getDraft(story).getCoverImage()),request,response);
                }
                break;
            case"Private book":
                story=new Story();
                story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                request.setAttribute("message",slc.privatizeStory(story));
                var dispacther =  request.getRequestDispatcher("ViewStories.jsp");
                dispacther.forward(request, response);
                break;
            case "Publicise book":
                story=new Story();
                story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                request.setAttribute("message",slc.publiciseStory(story));
                var dispacther2 =  request.getRequestDispatcher("ViewStories.jsp");
                dispacther2.forward(request, response);
                break;
        }
    }
    public void saveAsDraft(String coverImage,HttpServletRequest request,HttpServletResponse response){
        session= request.getSession(false);
        
        request.setAttribute("message",slc.saveAsDraft(new Story(request.getParameter("storyTitle"),(Integer)session.getAttribute("UserID"),coverImage, "", Boolean.parseBoolean(request.getParameter("draftCommentsEnabled")),
                request.getParameter("storySynopsis"),request.getParameter("storyBody"))));
        var dispatcher=request.getRequestDispatcher("ViewDrafts.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    public String getCoverImage(String CoverImage){
          return CoverImage;
    }
    public void submitStory(String coverImage,HttpServletRequest request,HttpServletResponse response){
         
        request.setAttribute("message",slc.submitStory(new Story(request.getParameter("draftTitle"),Integer.valueOf(request.getParameter("authorId")),coverImage, "",Boolean.parseBoolean(request.getParameter("draftCommentsEnabled")),
                request.getParameter("draftSynopsis"),request.getParameter("draftStoryBody"))));
        var dispatcher=request.getRequestDispatcher("ViewDrafts.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void saveDraft2Database(String coverImage,HttpServletRequest request,HttpServletResponse response){
        request.setAttribute("message",slc.editDraft(new Story(request.getParameter("draftTitle"),Integer.valueOf(request.getParameter("draftId")),coverImage, "", Boolean.parseBoolean(request.getParameter("draftCommentsEnabled")),
                                                                request.getParameter("draftSynopsis"),request.getParameter("draftStoryBody"))));
        var dispatcher=request.getRequestDispatcher("ViewDrafts.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
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
