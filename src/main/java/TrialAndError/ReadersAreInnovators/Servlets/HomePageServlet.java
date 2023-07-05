package TrialAndError.ReadersAreInnovators.Servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.FunctionsClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.Functions_Interface;
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

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;


/**
 *
 * @author user
 */
@WebServlet(urlPatterns = {"/HomePageServlet"})
public class HomePageServlet extends HttpServlet {
    private HttpSession session;
    private ImpService imp;
    private ServiceLayerClass service;
   
    public HomePageServlet()
    {
        imp = new ImpService();
        service = new ServiceLayerClass();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch (request.getParameter("submit")) {
            case "Search":
                
                String userSearch=request.getParameter("search");
                List<Story> storiesByTitle=imp.searchByTitle(userSearch);
                List<Story>storiesByAuthor=imp.searchByAuthor(userSearch);
                List<Story> storiesByGenres=imp.searchByGenre(userSearch);
                List<Writer> authorsByName=imp.searchByName(userSearch);
                List<Writer>authorsByStoryTitle=imp.searchByStories(userSearch);
                request.setAttribute("searchByTitle",storiesByTitle);
                request.setAttribute("searchByAuthor",storiesByAuthor);
                request.setAttribute("searchByGenres",storiesByGenres);
                request.setAttribute("searchAuthors",authorsByName);
                request.setAttribute("searchAuthorByTitle",authorsByStoryTitle);
                var dispatcher = request.getRequestDispatcher("Search.jsp");
                dispatcher.forward(request, response);
                
                
                break;
            case "REFER A FRIEND":
                session= request.getSession(false);
               request.setAttribute("message2",service.referFriend(request.getParameter("email"),
                       (String)session.getAttribute("Name")+" "+(String)session.getAttribute("Surname")));
                
                session= request.getSession(false);
                Integer num = (Integer) session.getAttribute("UserTypeID");
                request.setAttribute("message", num);
                
                List<Story>genreStories=imp.getStoriesFromGenres(new User((Integer) session.getAttribute("UserID")));
                List<Story>topWeekPicksStories=imp.getWeeksTopPicks();
                List<Story>recommendedBooks=imp.getRecommendedBooks();
                request.setAttribute("recommendedBooks",recommendedBooks);
                request.setAttribute("topPicks",topWeekPicksStories);
                request.setAttribute("stories", genreStories);
               
                dispatcher=request.getRequestDispatcher("HomePage.jsp");
                dispatcher.forward(request,response);
                break;
            case "SEND":
                User user=new User();
                user.setEmail(request.getParameter("email"));
                user.setPhoneNumber(request.getParameter("number"));
                request.setAttribute("message",service.forgotPassword(user));
                dispatcher=request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request,response);
                break;
                
             
        }
    }
}
