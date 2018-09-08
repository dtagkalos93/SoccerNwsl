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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class injPlayer extends HttpServlet {

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
        System.out.println("Injury");
        String injuries = "";
        String inj = request.getParameter("inj");
        
        String cat = request.getParameter("cat");
        if(cat.equals("pos")){
            if(inj.equals("Goalkeeper")){
                inj="GK";
            }
            else if(inj.equals("Defender")){
                inj="DEF";
            }
            else if(inj.equals("Midfielder")){
                inj="MID";
            }
            else if(inj.equals("Forward")){
                inj="FWD";
            }
        }
        String sql = "";

        try {
            String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
            String dbName = "fantasy";
            String userId = "root";
            String password = "";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection(connectionUrl, userId, password);
            if (cat.equals("all")) {
                sql = "SELECT * FROM injuries";
            } else if (cat.equals("pos")) {
                sql = "SELECT * FROM injuries Where position='" + inj + "'";
            } else if (cat.equals("team")) {
                sql = "SELECT * FROM injuries Where team='" + inj + "'";

            }
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            while (resultSet.next()) {
                injuries = injuries + resultSet.getString("name") + "_";
                injuries = injuries + resultSet.getString("position") + "_";
                injuries = injuries + resultSet.getString("team") + "_";
                injuries = injuries + resultSet.getString("description") + "_";
                injuries = injuries + resultSet.getString("availability") + ",";

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(injuries);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(injuries);
    }

}
