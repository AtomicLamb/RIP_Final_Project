package TrialAndError.ReadersAreInnovators.Servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Writer;
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
            case "refer":
                session= request.getSession(false);
               request.setAttribute("message",service.referFriend(request.getParameter("email"),
                       (String)session.getAttribute("Name")+" "+(String)session.getAttribute("Surname")));
                dispatcher=request.getRequestDispatcher("HomePage.jsp");
                dispatcher.forward(request,response);
                break;
            case "send":
                request.setAttribute("message",service.forgotPassword(request.getParameter("email"),request.getParameter("number")));
                dispatcher=request.getRequestDispatcher("OneTimeLogin.jsp");
                dispatcher.forward(request,response);
                break;
                
            case "login" :
                
                break;
        }
    }
}
