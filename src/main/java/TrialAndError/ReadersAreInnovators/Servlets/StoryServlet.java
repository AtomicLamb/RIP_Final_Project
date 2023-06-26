/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package TrialAndError.ReadersAreInnovators.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import TrialAndError.ReadersAreInnovators.Models.StoryElements.Comment;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.*;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
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
     * @param authorId servlet request
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * 
     * 
     */
    public Writer getChosenAuthor(Integer authorId){
        List<Writer>writers=new ArrayList();
                  
                  
                  Writer myWriter=null;
                 
                  for(Writer writer:writers){  
                      if(authorId==writer.getUserID()){
                          myWriter=writer;
                          return myWriter;
                      }
                      
                  }
       return null;             
    } 
    public Story getChosenStory(HttpServletRequest request){
                    BufferedImage img=null;
                    
              return null;
     }
    public List<Story>getAllStories(){
                   BufferedImage img=null;
        List<Story>storyList=new ArrayList();
            List<Story>stories=new ArrayList();
            
            Integer count=0;
            for(Story story:storyList){
                       
            } 
              return stories;
    }
    
    public List<Story>getAuthorsStories(Integer authorId){
        List<Story>storyList=getAllStories();
        List<Story>authorStories=new ArrayList();
        for(Story story:storyList){
            if(story.getAuthorID()==authorId){
                authorStories.add(story);
            }
        }
       return authorStories;
    }
    public List<Comment> getEveryStoryComment(){
                 Calendar cal = Calendar.getInstance();
        cal.clear();

        cal.set(Calendar.YEAR, 2009);
        cal.set(Calendar.MONTH, 4);
        cal.set(Calendar.DATE, 15);
        cal.set(Calendar.HOUR_OF_DAY,9);
        Date date = cal.getTime();
        
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
                   
                  
                  List<Comment>comments=new ArrayList();
                  
          return comments;                                             
    }
    public List<Comment> getChosenStoryComments(HttpServletRequest request){
        
                  List<Comment>comments=getEveryStoryComment();
               
                  List<Comment>chosenStoryComments=new ArrayList();
                  
                  for(Comment comment:comments){  ;
                    if(comment.getStoryID()==(Integer.valueOf(request.getParameter("storyId")))){
                            chosenStoryComments.add(comment);
                            
                            
                  }
                  }
                  return chosenStoryComments;
    }
    
    public List<User>getUsers(){
          List<User>users=new ArrayList();
                 
                  
                  return users;
    }
    public Comment getComment(HttpServletRequest request){
        List<Comment>comments=getEveryStoryComment();
        String message="";
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
            return "Comment not reported an error occured";
        }
       
    }
    public Writer getStoryAuthor(Story chosenStory){
        List<Writer>writers=new ArrayList();
                  
                  Writer myWriter=null;
                 
                  for(Writer writer:writers){  
                      if(chosenStory.getAuthorID()==writer.getUserID()){
                          myWriter=writer;
                          return myWriter;
                      }
                      
                  }
                    return null;
    }
    public void fillStoryDetailsPage(HttpServletRequest request, HttpServletResponse response,String attributeName,Object value){
        Story chosenStory=getChosenStory(request);
                  Writer myWriter=getStoryAuthor(chosenStory);
             List<Comment>chosenStoryComments=getChosenStoryComments(request);
                   List<User>users=getUsers();
                 
                 request.setAttribute("storyDetails", chosenStory);
                 request.setAttribute("chosenWriter", myWriter);
                 request.setAttribute("comments",chosenStoryComments);
                 request.setAttribute("users", users);
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
    
    public String rateStory(HttpServletRequest request){
       Story story=getChosenStory(request);
       
       story.setRatingAverage(Double.valueOf(request.getParameter("rating")));
       return "Story rated";      
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             
         switch(request.getParameter("submit")){
           
            case"storyDetails": 
       
                Story chosenStory=getChosenStory(request);
                  Writer myWriter=getStoryAuthor(chosenStory);
             List<Comment>chosenStoryComments=getChosenStoryComments(request);
                   List<User>users=getUsers();
                HttpSession session=request.getSession(true);
                      session.setAttribute("currentUser", users.get(0)); 
                 fillStoryDetailsPage(request,response,"", null);
               break;
                
       

         
                 case "rateStoryPage":
                    
         request.setAttribute("storyId", request.getParameter("storyId"));
                      var dispatcher=request.getRequestDispatcher("RateStory.jsp");
             {
                 try {
                     dispatcher.forward(request,response);
                 } catch (IOException ex) {
                     Logger.getLogger(StoryServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
             }
                     break;
                 case "AuthorDetails":
                      
                     Writer chosenWriter=getChosenAuthor(Integer.valueOf(request.getParameter("writerId")));
                     request.setAttribute("authorStories", getAuthorsStories(chosenWriter.getUserID()));
                     request.setAttribute("chosenWriter", chosenWriter);
                     dispatcher=request.getRequestDispatcher("AuthorDetails.jsp");
                      dispatcher.forward(request,response);
                      
                     break;
                 case "followAuthor":
                     
                     break;
                 case "read":
                    
                     request.setAttribute("chosenStory", getChosenStory(request));
                     dispatcher=request.getRequestDispatcher("StoryBody.jsp");
                     dispatcher.forward(request, response);
                     break;
           }
                  
                  
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
                        
                         
                         Calendar cal = Calendar.getInstance();
        cal.clear();

        cal.set(Calendar.YEAR, 2009);
        cal.set(Calendar.MONTH, 4);
        cal.set(Calendar.DATE, 15);
        cal.set(Calendar.HOUR_OF_DAY,9);
        Date date = cal.getTime();
        
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
                  
                  List<Comment>comments=getEveryStoryComment();
                  
                     
                      HttpSession session=request.getSession(false);
                      User user=(User)session.getAttribute("currentUser"); 
                      Comment comment=new Comment();
                      comment.setCommentID(comments.size()+1);
                      comment.setUserID(user.getUserID());
                      comment.setStoryID(Integer.valueOf(request.getParameter("storyId")));
                      comment.setComment(request.getParameter("commentArea"));
                      comment.setFlagged(false);
                      comment.setDateAdded(String.valueOf(sqlDate));
                      
                      Story chosenStory=getChosenStory(request);
                      Writer myWriter=getChosenAuthor(chosenStory.getAuthorID());
                      List<Comment>chosenStoryComments=getChosenStoryComments(request);
                       List<User>users=getUsers();
                      request.setAttribute("newComment", comment);
                        request.setAttribute("storyDetails", chosenStory);
                         request.setAttribute("chosenWriter", myWriter);
                          request.setAttribute("comments",chosenStoryComments);
                          request.setAttribute("users", users);
        var dispatcher=request.getRequestDispatcher("StoryDetails.jsp");
         dispatcher.forward(request,response);
         response.sendRedirect("StoryDetails.jsp");
                     break;
                     
                 case"reportComment":
                      String message=flagComment(request);
                      fillStoryDetailsPage(request,response,"reportMessage",message);
                         break;
                 
                 case"rateStory":
                     
                     System.out.println("HERE IN THE NOQ number 2"+request.getParameter("storyId"));
                     
           fillStoryDetailsPage(request,response,"rateMessage", rateStory(request));
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
