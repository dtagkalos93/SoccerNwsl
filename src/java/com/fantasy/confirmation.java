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
public class confirmation extends HttpServlet {

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
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String team = request.getParameter("team");
        if (team.equals("")) {
            request.setAttribute("firstname", firstName);
            request.setAttribute("lastname", lastName);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("gender", gender);
            request.setAttribute("country", country);
            RequestDispatcher rd = request.getRequestDispatcher("favteam.jsp");
            rd.forward(request, response);
        } else {

            System.out.println(password + "here");

            dbCredentials exist = new dbCredentials();
            exist.addUser(firstName, lastName, email, password, gender, country, team);
            fixtureData fixture = new fixtureData();
            fixture.fixture();
            request.setAttribute("data", fixture.getdataList());
            request.setAttribute("date", fixture.getdateList());
            request.setAttribute("home", fixture.gethomeList());
            request.setAttribute("homebadge", fixture.gethomebadgeList());
            request.setAttribute("time", fixture.gettimeList());
            request.setAttribute("away", fixture.getawayList());
            request.setAttribute("awaybadge", fixture.getawaybadgeList());
            RequestDispatcher rd = request.getRequestDispatcher("rosterSelection.jsp");
            rd.forward(request, response);
        }
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
