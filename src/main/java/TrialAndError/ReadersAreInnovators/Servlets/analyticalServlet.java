package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/analyticalServlet"})
public class analyticalServlet extends HttpServlet {

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
             
                dispacther =  request.getRequestDispatcher("AnalyticCharts.jsp");
                        dispacther.forward(request, response);
                break;
            case"MOST RATED BOOKS":
              
                dispacther =  request.getRequestDispatcher("AnalyticCharts.jsp");
                        dispacther.forward(request, response);
                break;
            case"MOST LIKED BOOKS":
              
                dispacther =  request.getRequestDispatcher("AnalyticCharts.jsp");
                        dispacther.forward(request, response);
                break;
            case"TOP CATEGORIES":
                 
                dispacther =  request.getRequestDispatcher("AnalyticCharts.jsp");
                        dispacther.forward(request, response);
                break;
            case"TOP WRITERS":
               
                dispacther =  request.getRequestDispatcher("AnalyticCharts.jsp");
                        dispacther.forward(request, response);
                break;
            case"TOP EDITORS":
               
                dispacther =  request.getRequestDispatcher("AnalyticCharts.jsp");
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
                
                break;
         }
    }
}
