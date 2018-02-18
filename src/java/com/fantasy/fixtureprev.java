/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class fixtureprev extends HttpServlet {

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
    String text =request.getParameter("previous");
    String[] parts = text.split(" ");
   
    
    int fixNo=Integer.parseInt(parts[1]);
    String prevBtnvalue="Gameweek "+(fixNo-1);
    String nextBtnvalue="Gameweek "+(fixNo+1);
     List<String> list = new ArrayList<>();
     list.add(text);
     list.add(prevBtnvalue);
     list.add(nextBtnvalue);
     String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String badge = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
           
            
            //Select the data from the database
            String sql = "SELECT * FROM fixture where fixture='" + text + "'";
            Statement s = connection.createStatement();

            s.executeQuery(sql);

            resultSet = s.getResultSet();

            while (resultSet.next()) {

                //Add records into data list
                list.add(resultSet.getString("date"));

                list.add(resultSet.getString("home"));
                if (resultSet.getString("home").equals("Houston Dash")) {
                    badge = "Houston_Dash2.png";
                } else if (resultSet.getString("home").equals("Chicago Red Stars")) {
                    badge = "ChicagoRedStars1.png";
                } else if (resultSet.getString("home").equals("Portland Thorns FC")) {
                    badge = "Portland1.png";
                } else if (resultSet.getString("home").equals("Orlando Pride")) {
                    badge = "OrlandoPride2.png";
                } else if (resultSet.getString("home").equals("Washington Spirit")) {
                    badge = "spirit.png";
                } else if (resultSet.getString("home").equals("North Carolina Courage")) {
                    badge = "North_Carolina_Courage1.png";
                } else if (resultSet.getString("home").equals("Seattle Reign FC")) {
                    badge = "SeattleReignFC2.png";
                } else if (resultSet.getString("home").equals("Sky Blue FC")) {
                    badge = "Sky_Blue_FC1.png";
                } else if (resultSet.getString("home").equals("FC Kansas City")) {
                    badge = "kansasCity2.png";
                } else if (resultSet.getString("home").equals("Boston Breakers")) {
                    badge = "Boston_Breakers1.png";
                }
                list.add(badge);
                list.add(resultSet.getString("time"));
                list.add(resultSet.getString("away"));
                if (resultSet.getString("away").equals("Houston Dash")) {
                    badge = "Houston_Dash2.png";
                } else if (resultSet.getString("away").equals("Chicago Red Stars")) {
                    badge = "ChicagoRedStars1.png";
                } else if (resultSet.getString("away").equals("Portland Thorns FC")) {
                    badge = "Portland1.png";
                } else if (resultSet.getString("away").equals("Orlando Pride")) {
                    badge = "OrlandoPride2.png";
                } else if (resultSet.getString("away").equals("Washington Spirit")) {
                    badge = "spirit.png";
                } else if (resultSet.getString("away").equals("North Carolina Courage")) {
                    badge = "North_Carolina_Courage1.png";
                } else if (resultSet.getString("away").equals("Seattle Reign FC")) {
                    badge = "SeattleReignFC2.png";
                } else if (resultSet.getString("away").equals("Sky Blue FC")) {
                    badge = "Sky_Blue_FC1.png";
                } else if (resultSet.getString("away").equals("FC Kansas City")) {
                    badge = "kansasCity2.png";
                } else if (resultSet.getString("away").equals("Boston Breakers")) {
                    badge = "Boston_Breakers1.png";
                }
                list.add(badge);
                

            }

            resultSet.close();

            s.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

     String json = new Gson().toJson(list);
     System.out.println(json);
    response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
    response.getWriter().write(json); 
    
        
        

        
        
        
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
        processRequest(request, response);
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
