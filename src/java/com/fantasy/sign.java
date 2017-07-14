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
            errorMessage="Please Give First Name!";
            System.out.println(errorMessage);
            request.setAttribute("error","firstname");
            RequestDispatcher rd = request.getRequestDispatcher("signUp.jsp");
            rd.forward(request,response);
        }
        String lastName=request.getParameter("lastname");
        System.out.println(lastName);
        if(lastName.equals("")){
            errorMessage="Please Give Last Name!";
            request.setAttribute("error","lastname");
            RequestDispatcher rd = request.getRequestDispatcher("signUp.jsp");
            rd.forward(request,response);
        }
        String email=request.getParameter("email");
        //sunartihsh gia gia elegxo email..
        //boolean check=emailExist(email);
        System.out.println(email);
        if(email.equals("")){
            errorMessage="Please Give email!";
            request.setAttribute("error","email");
            RequestDispatcher rd = request.getRequestDispatcher("signUp.jsp");
            rd.forward(request,response);
        }
        String password=request.getParameter("pwd");
        System.out.println(password);
        if(password.equals("")){
            errorMessage="Please Give password!";
            request.setAttribute("error","pwd");
            RequestDispatcher rd = request.getRequestDispatcher("signUp.jsp");
            rd.forward(request,response);
        }
        String gender=request.getParameter("gender");
        System.out.println(gender);
        if(gender.equals("")){
            errorMessage="Please Give gender!";
            request.setAttribute("error","gender");
            RequestDispatcher rd = request.getRequestDispatcher("signUp.jsp");
            rd.forward(request,response);
        }
        String country=request.getParameter("country");
        System.out.println(country);
        if(country.equals("")){
            errorMessage="Please Give country!";
            request.setAttribute("error","country");
            RequestDispatcher rd = request.getRequestDispatcher("signUp.jsp");
            rd.forward(request,response);
        }
        request.setAttribute("firstname",firstName);
        request.setAttribute("lastname",lastName);
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
