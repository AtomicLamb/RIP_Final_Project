package TrialAndError.ReadersAreInnovators.Servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import TrialAndError.ReadersAreInnovators.Models.StoryElements.Story;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayerClass;
import TrialAndError.ReadersAreInnovators.ServiceLayers.ServiceLayer_Interface;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
            case "HomePage":
                BufferedImage img = null;
                
                List<Story>storyList=new ArrayList();
                storyList.add(new Story());
                ServiceLayer_Interface service=new ServiceLayerClass();
                
                
                img=ImageIO.read(new File("C:\\Users\\user\\Documents\\NetBeansProjects\\RIP_system2\\web\\images\\ffxiv_06022022_151541_540.png"));
                BufferedImage img2=ImageIO.read(new File("C:\\Users\\user\\Documents\\NetBeansProjects\\RIP_system2\\web\\images\\ffxiv_05022022_223708_933.png"));
                ByteArrayOutputStream output = new ByteArrayOutputStream();
                ImageIO.write(img, "png", output);
                String imageAsBase64=Base64.getEncoder().encodeToString(output.toByteArray());
                ByteArrayOutputStream output2 = new ByteArrayOutputStream();
                ImageIO.write(img2, "png", output);
                String imageAsBase64_2=Base64.getEncoder().encodeToString(output2.toByteArray());
                List<Story>stories=new ArrayList();
                stories.add(new Story("Past the far edge of fate",5,"In the beginning","Some crazy story",imageAsBase64,true));
                stories.add(new Story("A Tale Of Loss And Faith",6,"In the beginning","Some crazy story",imageAsBase64_2,true));
                request.setAttribute("stories", stories);
                var dispatcher=request.getRequestDispatcher("HomePage2.jsp");
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
