/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mitsos
 */
public class login extends HttpServlet {

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
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String rember = request.getParameter("checkbox");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        PrintWriter pw = response.getWriter();

        JsonObject  obj = new JsonObject ();
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            String sql = "SELECT * FROM user where email='" + email + "'";
            Statement s = connection.createStatement();

            s.executeQuery(sql);

            resultSet = s.getResultSet();

            if (resultSet.next()) {
                String passwordSQL=resultSet.getString("password");
                if(passwordSQL.equals(pwd)){
                    if(rember==null){
                        resultSet.close();
                        s.close();
                        RequestDispatcher rd = request.getRequestDispatcher("points.jsp");
                        rd.forward(request, response);
                    }
                    else{
                        HttpSession session;
                        session = request.getSession();
                        session.setAttribute("email", email);
                        session.setMaxInactiveInterval(60 * 60);
                        Cookie emailName = new Cookie("email", email);
                        emailName.setMaxAge(24 * 60 * 60);
                        response.addCookie(emailName);
                        int cookieID = 0;
                        obj.addProperty("email", email);
                        pw.write(obj.toString());
                        RequestDispatcher rd = request.getRequestDispatcher("points.jsp");
                        rd.forward(request, response);
                    }
                    
                }
                else{
                    resultSet.close();
                    s.close();
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                }
            } else {
                resultSet.close();
                s.close();
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

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
