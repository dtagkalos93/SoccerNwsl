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
        System.out.println("login");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        HttpSession session;
        session = request.getSession();
        String login = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        PrintWriter pw = response.getWriter();

        JsonObject obj = new JsonObject();
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
                String passwordSQL = resultSet.getString("password");

                if (passwordSQL.equals(pwd)) {
                    if (rember == null) {
                        String fullnamestr = resultSet.getString("firstname") + " " + resultSet.getString("lastname");
                        session.setAttribute("email", email);
                        session.setAttribute("fullname", fullnamestr);
                        session.setAttribute("teamBadge", resultSet.getString("team"));
                        resultSet.close();
                        s.close();
                        login = "success";

                    } else {
                        String fullnamestr = resultSet.getString("firstname") + " " + resultSet.getString("lastname");
                        session.setAttribute("email", email);
                        session.setAttribute("fullname", fullnamestr);
                        session.setAttribute("teamBadge", resultSet.getString("team"));
                        session.setMaxInactiveInterval(60 * 60);
                        Cookie emailName = new Cookie("email", email);
                        emailName.setMaxAge(24 * 60 * 60);
                        response.addCookie(emailName);
                        int cookieID = 0;
                        obj.addProperty("email", email);
                        pw.write(obj.toString());
                        login = "success";

                    }

                } else {
                    resultSet.close();
                    s.close();
                    connection.close();
                    login = "fail";

                }
            } else {
                resultSet.close();
                s.close();
                connection.close();
                login = "fail";
            }

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(login);
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
