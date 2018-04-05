/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mitsos
 */
public class transfers extends HttpServlet {
      private String gk;
      private String def;
      private String mid;
      private String fwd;
      private String ben;
      private String formation;
      private String captain;
      private String vcaptain;
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
        HttpSession session = request.getSession(false);
        String email = session.getAttribute("email").toString();
        String gkTeam = request.getParameter("gk");
        String defTeam = request.getParameter("def");
        String midTeam = request.getParameter("mid");
        String fwdTeam = request.getParameter("fwd");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            PreparedStatement preparedStmt = connection.prepareStatement(
                    "UPDATE teams SET gk = ?, def = ?, mid=?,fwd=?,bench=?,formation=?,captain=?,viceCaptain=? WHERE email = ? ");
            // execute the preparedstatement
            preparedStmt.setString(1, gk);
            preparedStmt.setString(2, def);
            preparedStmt.setString(3, mid);
            preparedStmt.setString(4, fwd);
            preparedStmt.setString(5, ben);
            preparedStmt.setString(6, formation);
             preparedStmt.setString(7, captain);
            preparedStmt.setString(8, vcaptain);
            preparedStmt.setString(9, email);

            preparedStmt.execute();

            preparedStmt.close();
            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
