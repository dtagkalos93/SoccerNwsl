/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class sign extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

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
        processRequest(request, response);
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
         response.setContentType("text/html;charset=UTF-8");
        String errorMessage;
        String firstName=request.getParameter("firstname");
        System.out.println(firstName);
        if(firstName.equals("")){
    
            request.setAttribute("errorfirst","firstname");
            
        }
        else{
            request.setAttribute("firstname",firstName);
        }
        String lastName=request.getParameter("lastname");
        System.out.println(lastName);
        if(lastName.equals("")){

            request.setAttribute("errorlast","lastname");

        }
        else{
            request.setAttribute("lastname",lastName);
        }
        String email=request.getParameter("email");
        //sunartihsh gia gia elegxo email..
        dbCredentials exist=new dbCredentials();
        boolean check=exist.emailExist(email);
        System.out.println(email);
        if(email.equals("")){

            request.setAttribute("erroremail","email");

        }
        if(check){
            request.setAttribute("erroremail","exist");
        }
        String password=request.getParameter("pwd");
        System.out.println(password);
        if(password.equals("")){

            request.setAttribute("errorpwd","pwd");

        }
        

        String gender=request.getParameter("gender");
        System.out.println(gender);
        if(gender == null){

            request.setAttribute("errorgender","gender");

        }
        String country=request.getParameter("country");
        
        
        if(firstName.equals("") || lastName.equals("") || email.equals("") || gender==null || password.equals("") || check    ){
            
            RequestDispatcher rd = request.getRequestDispatcher("signError.jsp");
            rd.forward(request,response);
        }
        
        
        request.setAttribute("email",email);
        request.setAttribute("password",password);
        request.setAttribute("gender", gender);
        request.setAttribute("country",country);
        RequestDispatcher rd = request.getRequestDispatcher("favteam.jsp");
        rd.forward(request,response);
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
