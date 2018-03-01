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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class findPosition extends HttpServlet {

    private List<String> list;

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
        System.out.println("Find Position");
        String name = request.getParameter("name");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        list=new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            String sql="";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            if(name.contains("'")){
                String[] nameSTR=name.split("'");
                
                 sql = "SELECT position,fullname,price FROM players where name='" + nameSTR[0]+"\\'"+nameSTR[1] + "'";
            }
            else{
                 sql = "SELECT position,fullname,price FROM players where name='" + name + "'";
            }
            int i = 1;
            //Select the data from the database
            
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);
 
            resultSet = s.getResultSet();
             while (resultSet.next ()){
                 list.add(resultSet.getString("fullname"));
                 list.add(resultSet.getString("position"));
                 list.add(resultSet.getString("price"));
                 
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

}
