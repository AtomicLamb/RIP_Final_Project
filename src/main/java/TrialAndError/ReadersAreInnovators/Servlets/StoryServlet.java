/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package TrialAndError.ReadersAreInnovators.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Rating;
import TrialAndError.ReadersAreInnovators.Models.RESTModels.StoryUserREST;
import TrialAndError.ReadersAreInnovators.Models.RESTModels.UserWriterREST;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.*;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayer_Interface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;

/**
 *
 * @author user
 */
@WebServlet(name = "StoryServlet", urlPatterns = {"/StoryServlet"})
public class StoryServlet extends HttpServlet {
    private HttpSession session;
    private ImpService imp;
    private final ServiceLayer_Interface service =new ServiceLayerClass();
    private Boolean follow;
    private  Writer writer;
    private Story story;
    public StoryServlet()
    {
        imp = new ImpService();
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *
     *
     */
    
    
   
    public Story getChosenStory(HttpServletRequest request){
         
        
        Story chosenStory=new Story();
                chosenStory.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                return imp.displayStoryDetails(chosenStory);
   }
    public List<User>getUsers(){
        List<User>users=new ArrayList();
        users.add(new User(2,"Bucky","Trucky"));
        users.add(new User(3,"The Wild","One"));
       return users;
    }
    public Comment getComment(HttpServletRequest request){
        
       
        Story story=new Story();
        story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
        imp.getComments(imp.displayStoryDetails(story));
         
        List<Comment>comments=imp.getComments(imp.displayStoryDetails(story));
        for(Comment comment:comments){
            if(comment.getCommentID()==(Integer.valueOf(request.getParameter("commentId")))) {
                
                return comment;
            }
            
        }
        
        return null;
    }
    
    public String flagComment(HttpServletRequest request){
        Comment comment=getComment(request);
        if(comment!=null){
            comment.setFlagged(true);
            return "Comment reported";
        }
        else{
            return "Comment not reported an error occurred";
        }
        
    }
     
    public void fillStoryDetailsPage(HttpServletRequest request, HttpServletResponse response,String attributeName,Object value){
         
        Story chosenStory=getChosenStory(request);
        Writer writer=new Writer(chosenStory.getAuthorID());
        request.setAttribute("storyDetails", chosenStory);
        request.setAttribute("chosenWriter", imp.getAuthor(writer));
        request.setAttribute("comments",imp.getComments(chosenStory));
        request.setAttribute(attributeName, value);
        
        var dispatcher=request.getRequestDispatcher("StoryDetails.jsp");
        
        try {
            dispatcher.forward(request,response);
            
        } catch (ServletException ex) {
            Logger.getLogger(StoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(StoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public User getUserSessionJustId(HttpServletRequest request){
        session= request.getSession(false);
        User user=new User();
        user.setUserID((Integer)session.getAttribute("UserID"));
        return user;
    }
    public String rateStory(HttpServletRequest request){
        
        if(imp.checkRatingExists(new Rating(getUserSessionJustId(request).getUserID(),Integer.valueOf(request.getParameter("storyId")),Integer.valueOf(request.getParameter("rating"))))){
             return imp.changeRating(new Rating(getUserSessionJustId(request).getUserID(),Integer.valueOf(request.getParameter("storyId")),Integer.valueOf(request.getParameter("rating"))));
        }
       else {
          return imp.rateStory(new Rating(getUserSessionJustId(request).getUserID(),Integer.valueOf(request.getParameter("storyId")),Integer.valueOf(request.getParameter("rating"))));
        }
            
    }
    public String addComment(HttpServletRequest request){
         
          session=request.getSession(false);
         
           Comment comment=new Comment(Integer.valueOf(request.getParameter("storyId")),
                   (Integer) session.getAttribute("UserID"),request.getParameter("commentArea"));
         //StoryID, UserID, Comment
        return imp.addComment(comment);
       
    }
    public Comment getNewComment(HttpServletRequest request){
         Story story=new Story();
        story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
        List<Comment>comments=imp.getComments(imp.displayStoryDetails(story));
        if(!comments.isEmpty()){
            return comments.get(comments.size()-1);
        }
         else {
             return null;
        }
    }
    public String followOrUnfollow(HttpServletRequest request){
        if(imp.checkIfAuthorFollowed(new UserWriterREST(getUserSessionJustId(request),new Writer(Integer.valueOf(request.getParameter("authorId")))))){
                  return unFollowAuthor(request);
                          }
        else{
            return followAuthor(request);
        }
    }
    public Boolean followed(HttpServletRequest request){
       return imp.checkIfAuthorFollowed(new UserWriterREST(getUserSessionJustId(request),new Writer(Integer.valueOf(request.getParameter("authorId")))));
    }
    public String unFollowAuthor(HttpServletRequest request){
        return imp.unfollowAuthor(new UserWriterREST(getUserSessionJustId(request),new Writer(Integer.valueOf(request.getParameter("authorId")))));
    }
    public String followAuthor(HttpServletRequest request){
        return imp.followAuthor(new UserWriterREST(getUserSessionJustId(request),new Writer(Integer.valueOf(request.getParameter("authorId")))));
      }
     public void authorDetails(HttpServletRequest request, HttpServletResponse response){
         writer=new Writer();
         writer.setUserID(Integer.valueOf(request.getParameter("authorId")));
         request.setAttribute("authorStories", imp.getPublishedStories(writer));
         request.setAttribute("chosenWriter",imp.getAuthor(writer));
         request.setAttribute("followed",followed(request));
         var dispatcher=request.getRequestDispatcher("AuthorDetails.jsp");
         try {
             dispatcher.forward(request,response);
           } catch (ServletException ex) {
             Logger.getLogger(StoryServlet.class.getName()).log(Level.SEVERE, null, ex);
         } catch (IOException ex) {
             Logger.getLogger(StoryServlet.class.getName()).log(Level.SEVERE, null, ex);
         }
     }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        switch(request.getParameter("submit")){
            
            case"storyDetails":
                fillStoryDetailsPage(request,response,"", null);
                break;
           
            case "AuthorDetails":
                authorDetails(request,response);
                 break;
            
            case "read":
                   story=new Story();
                     story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                request.setAttribute("chosenStory", getChosenStory(request));
                var dispatcher=request.getRequestDispatcher("StoryBody.jsp");
                
                imp.readStory(new StoryUserREST(story,getUserSessionJustId(request)));
                dispatcher.forward(request, response);
                
                break;
            case"like":
                response.sendRedirect("postResultServlet?submit=like&storyId="+request.getParameter("storyId")+"&likeMessage="+likeOrUnlike(request));
                break;
            case"unlike":
                response.sendRedirect("postResultServlet?submit=unlike&storyId="+request.getParameter("storyId")+"&unlikeMessage="+unLikeStory(request));
                break;
            case "storyOfTheDay":
                story=service.getBookOfTheDay();
                writer=new Writer(story.getAuthorID());
                
                request.setAttribute("storyDetails",story);
                request.setAttribute("chosenWriter", imp.getAuthor(writer));
                request.setAttribute("comments",imp.getComments(story));
                dispatcher= request.getRequestDispatcher("StoryDetails.jsp");
                dispatcher.forward(request,response);
                break;
        }
        
        
    }
   public String likeStory(HttpServletRequest request){
        story=new Story();
        story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
        session= request.getSession(false);
        User user=new User((Integer)session.getAttribute("UserID"));
       return imp.likeStory(new StoryUserREST(story,user));
   }
   public String likeOrUnlike(HttpServletRequest request){
       story=new Story();
       story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
        if (imp.checkIfLiked(new StoryUserREST(story,getUserSessionJustId(request)))){
            return unLikeStory(request);
        }
        else {
            return likeStory(request);
        }
   
   }
    public String unLikeStory(HttpServletRequest request){
        story=new Story();
        story.setStoryID(Integer.valueOf(request.getParameter("storyId")));
        return imp.unlikeStory(new StoryUserREST(story,getUserSessionJustId(request)));
    }
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch(request.getParameter("submit")){
            case "comment":
                response.sendRedirect("postResultServlet?submit=comment&storyId="+request.getParameter("storyId")+"&addCommentMessage="+addComment(request));
                break;
            
            case"reportComment":
               response.sendRedirect("postResultServlet?submit=reportComment&storyId="+request.getParameter("storyId")+"&reportMessage="+flagComment(request));
                break;
                
              case"rateStory":
                response.sendRedirect("postResultServlet?submit=rateStory&storyId="+request.getParameter("storyId")+"&rateMessage="+rateStory(request));
                break;
                
            case "followAuthor":
                response.sendRedirect("postResultServlet?submit=followAuthor&authorId="+request.getParameter("authorId")+"&followMessage="+followOrUnfollow(request));
                break;
            case"like":
                response.sendRedirect("postResultServlet?submit=like&storyId="+request.getParameter("storyId")+"&like="+followAuthor(request));
                break;
            case"unlike":
                response.sendRedirect("postResultServlet?submit=unlike&storyId="+request.getParameter("storyId")+"&unlikeMessage="+unLikeStory(request));
                break;
        }
    }
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}
