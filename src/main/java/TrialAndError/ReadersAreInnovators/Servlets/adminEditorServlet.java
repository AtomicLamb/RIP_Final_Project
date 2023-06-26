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
@WebServlet(urlPatterns = {"/adminEditorServlet"})
public class adminEditorServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       switch(request.getParameter("submit"))
       {
          case"EDITOR PAGE":
              var dispacther =  request.getRequestDispatcher("Editors.jsp");
                        dispacther.forward(request, response);
              break;
          case"MANAGE GENRES":
              dispacther =  request.getRequestDispatcher("ManageGenres.jsp");
                        dispacther.forward(request, response);
              break;
          case"ADD EDITOR":
               dispacther =  request.getRequestDispatcher("AddEditor.jsp");
                        dispacther.forward(request, response);
              break;
              
          case"REMOVE EDITOR":
             
               dispacther =  request.getRequestDispatcher("RemoveEditor.jsp");
               dispacther.forward(request, response);
              break;
          case"ADD GENRE":
               dispacther =  request.getRequestDispatcher("AddGenre.jsp");
                        dispacther.forward(request, response);
              break;
          case"REMOVE GENRE":
              
                dispacther =  request.getRequestDispatcher("RemoveGenre.jsp");
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
           case"Add Genre":
               
               break;
               
           case"Add Editor":
                   
               break;
           case"REMOVE GENRE":
               
               break;
           case"REMOVE EDITOR":
               
               break;
       }
    }

}
