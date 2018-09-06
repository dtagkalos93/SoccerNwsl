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
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 *
 * @author Mitsos
 */
public class btnPoints extends HttpServlet {

    private Map<String, List<String>> list;
    private List<String> gklist;
    private List<String> deflist;
    private List<String> midlist;
    private List<String> fwdlist;
    private List<String> benlist;
    private List<String> other;
    private int total;

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
        try {
            HttpSession session = request.getSession(true);
            String teamemail = session.getAttribute("email").toString();
            rosterPlayer players = new rosterPlayer(teamemail);
            String gk = players.getGoalkeeper();
            String def = players.getDefence();
            String mid = players.getMidfielder();
            String fwd = players.getForward();
            
            String ben = players.getbench();
            
            String captain = players.getCaptain().split("-")[0];
            System.out.println(captain);
            list = new HashMap<>();
            total = 0;
            int weeks = Integer.parseInt(request.getParameter("fix"));
            String fix = "GW" + weeks;
            deadLIne line = new deadLIne();
            int gw = Integer.parseInt(line.getGameweek().split(" ")[1]);
            other = new ArrayList<>();
            gklist = new ArrayList<>();
            deflist = new ArrayList<>();
            midlist = new ArrayList<>();
            fwdlist = new ArrayList<>();
            benlist = new ArrayList<>();
            other.add(weeks - 1 + "");
            other.add((weeks + 1) + "");
            other.add(gw + "");
            goalkeeper(gk, fix, captain);
            list.put("gk", gklist);
            defender(def, fix, captain);
            list.put("def", deflist);
            midfielder(mid, fix, captain);
            list.put("mid", midlist);
            forward(fwd, fix, captain);
            list.put("fwd", fwdlist);
            bench(ben, fix);
            list.put("ben", benlist);
            other.add(total + "");

            list.put("other", other);

            String json = new Gson().toJson(list);
            System.out.println(json);
            response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
            response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
            response.getWriter().write(json);
        } catch (SQLException ex) {
            Logger.getLogger(btnPoints.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void goalkeeper(String gk, String fixture, String captain) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String gkName = gk.split("-")[0];
        boolean cpt = false;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            if (gkName.equals(captain)) {
                cpt = true;
            }
            if (gkName.contains("'")) {
                String[] nameSTR = gkName.split("'");

                sql = "SELECT " + fixture + " FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
            } else {
                sql = "SELECT " + fixture + " FROM players where  name='" + gkName + "'";

            }
            //Select the data from the database

            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            if (resultSet.next()) {
                if (cpt) {

                    gklist.add(Integer.parseInt(resultSet.getString(fixture)) * 2 + "");
                    total = total + Integer.parseInt(resultSet.getString(fixture)) * 2;
                } else {
                    gklist.add(resultSet.getString(fixture));
                    total = total + Integer.parseInt(resultSet.getString(fixture));

                }

            }

            resultSet.close();

            s.close();
            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
    }

    private void defender(String def, String fixture, String captain) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] defName = def.split(",");
        boolean cpt = false;
        for (int i = 0; i < defName.length; i++) {
            String defnameSTR = defName[i].split("-")[0];

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                if (defnameSTR.equals(captain)) {
                    cpt = true;
                }
                if (defnameSTR.contains("'")) {
                    String[] nameSTR = defnameSTR.split("'");
                    sql = "SELECT " + fixture + " FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT " + fixture + " FROM players where  name='" + defnameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {
                    if (cpt) {
                        deflist.add(Integer.parseInt(resultSet.getString(fixture)) * 2 + "");
                        total = total + Integer.parseInt(resultSet.getString(fixture)) * 2;

                    } else {
                        deflist.add(resultSet.getString(fixture));
                        total = total + Integer.parseInt(resultSet.getString(fixture));

                    }
                }

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

    private void midfielder(String mid, String fixture, String captain) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] midName = mid.split(",");
        boolean cpt = false;
        for (int i = 0; i < midName.length; i++) {
            String midNameSTR = midName[i].split("-")[0];

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                if (midNameSTR.equals(captain)) {
                    cpt = true;
                }
                if (midNameSTR.contains("'")) {
                    String[] nameSTR = midNameSTR.split("'");
                    sql = "SELECT " + fixture + " FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT " + fixture + " FROM players where  name='" + midNameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {
                    if (cpt) {
                        midlist.add(Integer.parseInt(resultSet.getString(fixture)) * 2 + "");
                        total = total + Integer.parseInt(resultSet.getString(fixture)) * 2;

                    } else {
                        midlist.add(resultSet.getString(fixture));
                        total = total + Integer.parseInt(resultSet.getString(fixture));

                    }

                }

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

    private void forward(String fwd, String fixture, String captain) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] fwdName = fwd.split(",");
        boolean cpt = false;
        for (int i = 0; i < fwdName.length; i++) {
            String fwdNameSTR = fwdName[i].split("-")[0];

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                if (fwdNameSTR.equals(captain)) {
                    cpt = true;
                }
                if (fwdNameSTR.contains("'")) {
                    String[] nameSTR = fwdNameSTR.split("'");
                    sql = "SELECT " + fixture + " FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT " + fixture + " FROM players where  name='" + fwdNameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {
                    if (cpt) {
                        fwdlist.add(Integer.parseInt(resultSet.getString(fixture)) * 2 + "");
                        total = total + Integer.parseInt(resultSet.getString(fixture)) * 2;

                    } else {
                        fwdlist.add(resultSet.getString(fixture));
                        total = total + Integer.parseInt(resultSet.getString(fixture)) ;

                    }

                }

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

    private void bench(String ben, String fixture) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] benName = ben.split(",");
        for (int i = 0; i < benName.length; i++) {
            String benNameSTR = benName[i].split("-")[0];
            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                if (benNameSTR.contains("'")) {
                    String[] nameSTR = benNameSTR.split("'");
                    sql = "SELECT " + fixture + " FROM players where  name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT " + fixture + " FROM players where  name='" + benNameSTR + "'";

                }
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                if (resultSet.next()) {

                    benlist.add(resultSet.getString(fixture));

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
