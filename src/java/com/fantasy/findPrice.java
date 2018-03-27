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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos-Laptop
 */
public class findPrice extends HttpServlet {

    private Map<String, List<String>> list;
    private List<String> gklist;
    private List<String> deflist;
    private List<String> midlist;
    private List<String> fwdlist;

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

        String gk = request.getParameter("gk");
        String def = request.getParameter("def");
        String mid = request.getParameter("mid");
        String fwd = request.getParameter("fwd");

        list = new HashMap<>();

        gklist = new ArrayList<>();
        deflist = new ArrayList<>();
        midlist = new ArrayList<>();
        fwdlist = new ArrayList<>();

        goalkeeper(gk);
        list.put("gk", gklist);
        defender(def);
        list.put("def", deflist);
        midfielder(mid);
        list.put("mid", midlist);
        forward(fwd);
        list.put("fwd", fwdlist);

        String json = new Gson().toJson(list);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);
    }

    private void goalkeeper(String gk) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] gkName = gk.split(",");
        for (int i = 0; i < gkName.length; i++) {
            String gknameSTR = gkName[i].split("-")[0];
            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);

                if (gknameSTR.contains("'")) {
                    String[] nameSTR = gknameSTR.split("'");

                    sql = "SELECT price FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT price FROM players where  name='" + gknameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {
                    gklist.add(resultSet.getString("price"));

                }

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }


        }
    }

    private void defender(String def) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] defName = def.split(",");

        for (int i = 0; i < defName.length; i++) {
            String defnameSTR = defName[i].split("-")[0];

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);

                if (defnameSTR.contains("'")) {
                    String[] nameSTR = defnameSTR.split("'");
                    sql = "SELECT price FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT price FROM players where  name='" + defnameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {

                    deflist.add(resultSet.getString("price"));

                }

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

    private void midfielder(String mid) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] midName = mid.split(",");
        for (int i = 0; i < midName.length; i++) {
            String midNameSTR = midName[i].split("-")[0];

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                
                if (midNameSTR.contains("'")) {
                    String[] nameSTR = midNameSTR.split("'");
                    sql = "SELECT price FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT price FROM players where  name='" + midNameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {
                    
                        midlist.add(resultSet.getString("price"));
                    

                }

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

    private void forward(String fwd) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] fwdName = fwd.split(",");
        for (int i = 0; i < fwdName.length; i++) {
            String fwdNameSTR = fwdName[i].split("-")[0];

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
               
                if (fwdNameSTR.contains("'")) {
                    String[] nameSTR = fwdNameSTR.split("'");
                    sql = "SELECT price FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT price FROM players where  name='" + fwdNameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {
                    
                        fwdlist.add(resultSet.getString("price"));

                    

                }

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

}
