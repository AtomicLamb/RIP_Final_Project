package TrialAndError.ReadersAreInnovators.Servlets;/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import TrialAndError.ReadersAreInnovators.Models.UserTypes.Editor;
import TrialAndError.ReadersAreInnovators.Models.UserTypes.User;
import TrialAndError.ReadersAreInnovators.RESTService.ImpService;
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
@WebServlet(urlPatterns = {"/editPersonalInformationServlet"})
public class editPersonalInformationServlet extends HttpServlet {
    
    private ImpService imp;
    
    public editPersonalInformationServlet()
    {
        imp = new ImpService();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        switch(request.getParameter("submit"))
        {
            case"Apply for writer":
                var dispacther =  request.getRequestDispatcher("applyForWriter.jsp");
                        dispacther.forward(request, response);
                break;
            case"EDIT PERSONAL INFORMATION":
                dispacther =  request.getRequestDispatcher("editPersonalData.jsp");
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
           case"Edit Personal Information":
               
               break;
           case"Confirm Writer Application":
                   
               break;
       }
    }
    //editPersonalInfo
    public void addEditor(HttpServletRequest request, HttpServletResponse response)
    {
        String firstName = request.getParameter("editFirstName");
        String surname = request.getParameter("editSurname");
        String email = request.getParameter("editPhoneNum");
        String phoneNum = request.getParameter("editEmail");
        String password = request.getParameter("editPassword");
        
        request.setAttribute("message", imp.editPersonalInfo(new User(firstName,surname,email,phoneNum,password)));
        var dispatcher =  request.getRequestDispatcher("editPersonalData.jsp");
        try
        {
            dispatcher.forward(request, response);
        }
        catch (ServletException | IOException ex)
        {
            Logger.getLogger(controllerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
