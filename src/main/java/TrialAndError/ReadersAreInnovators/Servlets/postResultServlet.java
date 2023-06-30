/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package TrialAndError.ReadersAreInnovators.Servlets;


import TrialAndError.ReadersAreInnovators.Models.Administration.StoryApplication;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayer_Interface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


/**
 *
 * @author user
 */
@WebServlet(name = "postResultServlet", urlPatterns = {"/postResultServlet"})
public class postResultServlet extends HttpServlet {
    StoryApplication story;
    private final ServiceLayer_Interface slc=new ServiceLayerClass(); 
    private final List<StoryApplication> pendingStories=slc.viewPendingStories();
    private final StoryServlet storyServlet=new StoryServlet();
    HttpSession session;
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch(request.getParameter("submit")){
            case "rateStory":
                  storyServlet.fillStoryDetailsPage(request, response, "message", request.getParameter("rateMessage"));
                break;
              case "reportComment":
                storyServlet.fillStoryDetailsPage(request, response, "message", request.getParameter("reportMessage"));
                break;
            case "comment":
                 request.setAttribute("addCommentMessage",request.getParameter("addCommentMessage"));
                storyServlet.fillStoryDetailsPage(request,response,"newComment",request.getParameter("newComment"));
                break;
            case"followAuthor":
                storyServlet.fillStoryDetailsPage(request,response,"message",request.getParameter("followMessage"));
                break;
            case"like":
                session= request.getSession(false);
                 
                storyServlet.fillStoryDetailsPage(request,response,"message",request.getParameter("likeMessage"));
                break;
            case"unlike":
                session= request.getSession(false);
                
                storyServlet.fillStoryDetailsPage(request,response,"message",request.getParameter("unlikeMessage"));
                break;
            case"Accept":
                story=new StoryApplication();
                story.setTitle(request.getParameter("storyTitle"));
                story.setStoryBody(request.getParameter("storyBody"));
                story.setAuthorID(Integer.valueOf(request.getParameter("authorId")));
                story.setSynopsis(request.getParameter("storySynopsis"));
                story.setCoverImage(request.getParameter("storyCover"));
                story.setCommentsEnabled(Boolean.parseBoolean(request.getParameter("storyCommentsEnabled")));
                session= request.getSession(false);
                Editor editor=new Editor();
                
                editor.setUserID((Integer)session.getAttribute("UserID"));
                 request.setAttribute("message",slc.approvePendingStory(story,editor));
                  request.setAttribute("pendingStories",pendingStories);
                  var dispatcher=request.getRequestDispatcher("ReviewPendingStories.jsp");
                  dispatcher.forward(request,response);
                break;
            case "Deny":
                story=new StoryApplication();
                story.setPendingStoryID(Integer.valueOf(request.getParameter("storyId")));
                request.setAttribute("message",slc.removePendingStory(story));
                request.setAttribute("pendingStories",pendingStories);
                dispatcher=request.getRequestDispatcher("ReviewPendingStories.jsp");
                dispatcher.forward(request,response);
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
