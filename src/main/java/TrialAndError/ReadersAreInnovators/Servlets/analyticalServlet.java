package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import TrialAndError.ReadersAreInnovators.Models.AnalyticalData.Analytics;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Genre;
import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/analyticalServlet"})
public class analyticalServlet extends HttpServlet {
    HttpSession session;
   String analyticChoice;
    private ImpService imp;
    private ServiceLayerClass service;
    
    public analyticalServlet()
    {
        imp = new ImpService();
        service = new ServiceLayerClass();
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
             case"MOST VIEWED BOOKS":
                 analyticChoice = "MOST VIEWED BOOKS";
                 dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                 dispacther.forward(request, response);
                 break;
            
            case"MOST RATED BOOKS":
                analyticChoice = "MOST RATED BOOKS";
                dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                        dispacther.forward(request, response);
                break;
            case"MOST LIKED BOOKS":
                analyticChoice = "MOST LIKED BOOKS";
                dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                        dispacther.forward(request, response);
                break;
            case"TOP CATEGORIES":
                analyticChoice = "TOP CATEGORIES";
                dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                        dispacther.forward(request, response);
                break;
            case"TOP WRITERS":
                analyticChoice = "TOP WRITERS";
                dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                        dispacther.forward(request, response);
                break;
            case"TOP EDITORS":
               
                dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                        dispacther.forward(request, response);
                break;
         }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
         switch(request.getParameter("submit"))
         {
             case"Submit Analytic Choice":
                 Integer dataChoice = Integer.valueOf(request.getParameter("analyticNum"));
                 String startDateString = request.getParameter("analyticDateStart");
                 String endDateString = request.getParameter("analyticDateEnd");
                 
                 Date startDate = null;
                 Date endDate= null;
                 try {
                     startDate=new SimpleDateFormat("yyyy-MM-dd").parse(startDateString);
                     endDate = new SimpleDateFormat("yyyy-MM-dd").parse(endDateString);
                 } catch (ParseException ex) {
                     Logger.getLogger(analyticalServlet.class.getName()).log(Level.SEVERE, null, ex);
                 }
                 
                 if(startDate.after(endDate))
                 {
                     request.setAttribute("message", "End date should be greater than Start date");
                     
                     var dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                     dispacther.forward(request, response);
                 }
                 else
                 {
                     switch (analyticChoice)
                     {
                         case"MOST VIEWED BOOKS":
                            request.setAttribute("message", service.getMostViewedStories(new Analytics(dataChoice,startDateString,endDateString)));
                            var dispatcher = request.getRequestDispatcher("MostViewedBooks.jsp");
                            dispatcher.forward(request, response);
                            break;
                         case"MOST RATED BOOKS":
                             request.setAttribute("message", service.getHighestRatedStories(new Analytics(dataChoice,startDateString,endDateString)));
                             dispatcher = request.getRequestDispatcher("MostRatedBooks.jsp");
                             dispatcher.forward(request, response);
                             break;
                         case"MOST LIKED BOOKS":
                             request.setAttribute("message", service.getMostLikedStories(new Analytics(dataChoice,startDateString,endDateString)));
                             dispatcher = request.getRequestDispatcher("MostLikedBooks.jsp");
                             dispatcher.forward(request, response);
                             break;
                         case"TOP CATEGORIES":
                             request.setAttribute("message", service.getTopGenres(new Analytics(dataChoice,startDateString,endDateString)));
                             dispatcher = request.getRequestDispatcher("TopCategories.jsp");
                             dispatcher.forward(request, response);
                             break;
                         case"TOP WRITERS":
                             request.setAttribute("message", service.getTopWriters(new Analytics(dataChoice,startDateString,endDateString)));
                             dispatcher = request.getRequestDispatcher("TopWriters.jsp");
                             dispatcher.forward(request, response);
                             break;
                     }
                     
                 }
                 break;
         }
    }
}
