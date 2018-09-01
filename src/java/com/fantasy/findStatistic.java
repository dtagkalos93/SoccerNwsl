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
 * @author Mitsos-Laptop
 */
public class findStatistic extends HttpServlet {

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
        System.out.println("Find Statistics");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        list = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String name = request.getParameter("name");
        if (name.contains("'")) {
            name = name.split("'")[0] + "\\'" + name.split("'")[1];
        }
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            for (int i = 1; i <= 24; i++) {
                sql = "SELECT * FROM gw" + i + "stats where name='" + name + "'";
                //Select the data from the database

                System.out.println(sql);
                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                while (resultSet.next()) {
                    list.add(resultSet.getString("opponent"));
                    list.add(resultSet.getString("points"));

                    list.add(resultSet.getString("minutes"));
                    list.add(resultSet.getString("Goal"));
                    list.add(resultSet.getString("assist"));
                    list.add(resultSet.getString("cleanSheet"));
                    list.add(resultSet.getString("ownGoal"));

                    list.add(resultSet.getString("goalConceded"));
                    list.add(resultSet.getString("pkCommitted"));
                    list.add(resultSet.getString("pkEarned"));
                    list.add(resultSet.getString("pkSaved"));
                    list.add(resultSet.getString("pkMissed"));
                    list.add(resultSet.getString("yellow"));
                    list.add(resultSet.getString("red"));
                    list.add(resultSet.getString("saves"));
                }
                s.close();

            }

            resultSet.close();

            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

        String json = new Gson().toJson(list);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);
    }

}