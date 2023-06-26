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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/editorServlet"})
public class editorServlet extends HttpServlet {


    
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
            case"ANALYSE DATA":
                 dispacther =  request.getRequestDispatcher("AnalyticChoice.jsp");
                        dispacther.forward(request, response);   
                break;
            case"REVIEW COMMENTS":
              
                 dispacther =  request.getRequestDispatcher("ReviewComments.jsp");
                        dispacther.forward(request, response);   
                break;
            case"REVIEW PENDING STORIES":
                 dispacther =  request.getRequestDispatcher("ReviewPendingStories.jsp");
                        dispacther.forward(request, response);   
                break;
            case"REVOKE WRITER PRIVILEGES":
              
                  dispacther =  request.getRequestDispatcher("RevokeWriterPrivileges.jsp");
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
             case"IGNORE":
                 
                 break;
             case"REMOVE COMMENT":
                 
                 break;
             case"REVOKE WRITER PRIVILEGE":
                 
                 break;
             case"Submit Analytic Choice":
                 var dispacther =  request.getRequestDispatcher("AnalyseData.jsp");
                        dispacther.forward(request, response);  
                 break;
         }
    }
}
