package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.Reader;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author matth
 */
@WebServlet(urlPatterns = {"/controllerServlet"})
public class controllerServlet extends HttpServlet {

    

    public controllerServlet() 
    {
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
           case"Writer":
               var dispacther =  request.getRequestDispatcher("WriterSign-Up.jsp");
                        dispacther.forward(request, response);
                break;
               case"Continue to homescreen":
                   Integer num = 2;
                   request.setAttribute("message", num);
                   dispacther =  request.getRequestDispatcher("HomePage.jsp");
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
           case"Login":
               login(request,response);
               break;
           
           case"Confirm Reader":
               addReader(request, response);
               break;
           case"Confirm Writer":
               addWriter(request,response);
               break;
       }
    }
    
   public void addReader(HttpServletRequest request, HttpServletResponse response)
    {
            String firstName = request.getParameter("readerFirstName");
            String surname = request.getParameter("readerSurname");
            String email = request.getParameter("readerEmail");
            String phoneNum = request.getParameter("readerPhoneNum");
            String password = request.getParameter("readerPassword");
            
            Reader reader = new Reader(firstName, surname, email, phoneNum, password, false);

                 
                        var dispacther =  request.getRequestDispatcher("index.html");
                       try {
                           dispacther.forward(request, response);
                       } catch (ServletException | IOException ex) {
                           Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                       }
    }
   public void addWriter(HttpServletRequest request, HttpServletResponse response)
   {
      String firstName = request.getParameter("writerFirstName");
            String surname = request.getParameter("writerSurname");
            String email = request.getParameter("writerEmail");
            String phoneNum = request.getParameter("writerPhoneNum");
            String password = request.getParameter("writerPassword");
            String motivation = request.getParameter("writerMotivation");
            
            request.setAttribute("message", "The joke has been deleted");
                        var dispacther =  request.getRequestDispatcher("index.html");
                       try {
                           dispacther.forward(request, response);
                       } catch (ServletException | IOException ex) {
                           Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
                       }
   }
   public void login(HttpServletRequest request, HttpServletResponse response)
   {
       String email = request.getParameter("loginEmail");
       String password = request.getParameter("loginPassword");
       
      
   }
}
