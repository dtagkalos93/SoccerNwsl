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
public class findOpp extends HttpServlet {

    private Map<String, List<String>> list;
    private List<String> gklist;
    private List<String> deflist;
    private List<String> midlist;
    private List<String> fwdlist;
    private List<String> benlist;
    private List<String> templist;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        System.out.println("Find Opponent");
        String gk = request.getParameter("gk");
        String def = request.getParameter("def");
        String mid = request.getParameter("mid");
        String fwd = request.getParameter("fwd");
        String ben = request.getParameter("ben");
        list = new HashMap<>();

        deadLIne line = new deadLIne();
        String gw = line.getGameweek();
        int weeks = Integer.parseInt(gw.split(" ")[1]);
        //int weeks = 4;
        String fix = "Gameweek " + weeks;
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        gklist = new ArrayList<>();
        deflist = new ArrayList<>();
        midlist = new ArrayList<>();
        fwdlist = new ArrayList<>();
        benlist = new ArrayList<>();
        templist = new ArrayList<>();
        goalkeeper(gk, fix);
        list.put("gk", gklist);
        templist = new ArrayList<>();
        defender(def, fix);
        list.put("def", deflist);
        templist = new ArrayList<>();
        midfielder(mid, fix);
        list.put("mid", midlist);
        templist = new ArrayList<>();
        forward(fwd, fix);
        list.put("fwd", fwdlist);
        templist = new ArrayList<>();
        bench(ben, fix);
        list.put("ben", benlist);

        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    private void goalkeeper(String gk, String fixture) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String gkTeam = gk.split("-")[1];
        if (gkTeam.equals("HOU")) {
            gkTeam = "Houston Dash";

        } else if (gkTeam.equals("CHI")) {
            gkTeam = "Chicago Red Stars";
        } else if (gkTeam.equals("POR")) {
            gkTeam = ("Portland Thorns FC");
        } else if (gkTeam.equals("ORL")) {
            gkTeam = ("Orlando Pride");
        } else if (gkTeam.equals("WAS")) {
            gkTeam = ("Washington Spirit");
        } else if (gkTeam.equals("NC")) {
            gkTeam = ("North Carolina Courage");
        } else if (gkTeam.equals("SEA")) {
            gkTeam = ("Seattle Reign FC");
        } else if (gkTeam.equals("NJ")) {
            gkTeam = ("Sky Blue FC");
        } else if (gkTeam.equals("UTA")) {
            gkTeam = ("Utah Royals FC");
            //gkTeam = "FC Kansas City";
        } else if (gkTeam.equals("BOS")) {
            gkTeam = ("Boston Breakers");
        }

        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            sql = "SELECT * FROM fixture where  fixture='" + fixture + "'&& (home='" + gkTeam + "' || away='" + gkTeam + "')";
            //Select the data from the database

            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            while (resultSet.next()) {

                if (resultSet.getString("home").equals(gkTeam)) {
                    String awayTeam = resultSet.getString("away");
                    if (awayTeam.equals("Houston Dash")) {
                        templist.add("vs HOU");

                    } else if (awayTeam.equals("Chicago Red Stars")) {
                        templist.add("vs CHI");
                    } else if (awayTeam.equals("Portland Thorns FC")) {
                        templist.add("vs POR");
                    } else if (awayTeam.equals("Orlando Pride")) {
                        templist.add("vs ORL");
                    } else if (awayTeam.equals("Washington Spirit")) {
                        templist.add("vs WAS");
                    } else if (awayTeam.equals("North Carolina Courage")) {
                        templist.add("vs NC");
                    } else if (awayTeam.equals("Seattle Reign FC")) {
                        templist.add("vs SEA");
                    } else if (awayTeam.equals("Sky Blue FC")) {
                        templist.add("vs NJ");
                    } else if (awayTeam.equals("Utah Royals FC")) {
                        templist.add("vs UTA");
                    } else if (awayTeam.equals("Boston Breakers")) {
                        templist.add("vs BOS");
                    } else if (awayTeam.equals("FC Kansas City")) {
                        templist.add("vs UTA");
                    } else if (awayTeam.equals("-")) {
                        templist.add("-");
                    }
                } else {

                    String homeTeam = resultSet.getString("home");
                    if (homeTeam.equals("Houston Dash")) {
                        templist.add("@ HOU");

                    } else if (homeTeam.equals("Chicago Red Stars")) {
                        templist.add("@ CHI");
                    } else if (homeTeam.equals("Portland Thorns FC")) {
                        templist.add("@ POR");
                    } else if (homeTeam.equals("Orlando Pride")) {
                        templist.add("@ ORL");
                    } else if (homeTeam.equals("Washington Spirit")) {
                        templist.add("@ WAS");
                    } else if (homeTeam.equals("North Carolina Courage")) {
                        templist.add("@ NC");
                    } else if (homeTeam.equals("Seattle Reign FC")) {
                        templist.add("@ SEA");
                    } else if (homeTeam.equals("Sky Blue FC")) {
                        templist.add("@ NJ");
                    } else if (homeTeam.equals("Utah Royals FC")) {
                        templist.add("@ UTA");
                    } else if (homeTeam.equals("Boston Breakers")) {
                        templist.add("@ BOS");
                    } else if (homeTeam.equals("FC Kansas City")) {
                        templist.add("@ UTA");
                    }
                }

            }
            String temp = "";
            for (int i = 0; i < templist.size(); i++) {
                if (i == (templist.size() - 1)) {
                    temp = temp + templist.get(i);
                } else {
                    temp = temp + templist.get(i) + ", ";
                }
            }
            gklist.add(temp);
            resultSet.close();

            s.close();
            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
    }

    private void defender(String def, String fixture) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] defTeamArray = def.split(",");
        for (int i = 0; i < defTeamArray.length; i++) {
            String defTeam = defTeamArray[i].split("-")[1];
            if (defTeam.equals("HOU")) {
                defTeam = "Houston Dash";

            } else if (defTeam.equals("CHI")) {
                defTeam = "Chicago Red Stars";
            } else if (defTeam.equals("POR")) {
                defTeam = ("Portland Thorns FC");
            } else if (defTeam.equals("ORL")) {
                defTeam = ("Orlando Pride");
            } else if (defTeam.equals("WAS")) {
                defTeam = ("Washington Spirit");
            } else if (defTeam.equals("NC")) {
                defTeam = ("North Carolina Courage");
            } else if (defTeam.equals("SEA")) {
                defTeam = ("Seattle Reign FC");
            } else if (defTeam.equals("NJ")) {
                defTeam = ("Sky Blue FC");
            } else if (defTeam.equals("UTA")) {
                defTeam = ("Utah Royals FC");
            } else if (defTeam.equals("BOS")) {
                defTeam = ("Boston Breakers");
            }

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                sql = "SELECT * FROM fixture where  fixture='" + fixture + "'&& (home='" + defTeam + "' || away='" + defTeam + "')";
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                while (resultSet.next()) {

                    if (resultSet.getString("home").equals(defTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            templist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            templist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            templist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            templist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            templist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            templist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            templist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            templist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            templist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            templist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            templist.add("-");
                        }
                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            templist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            templist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            templist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            templist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            templist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            templist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            templist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            templist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            templist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            templist.add("@ BOS");
                        }
                    }

                }

                String temp = "";
                for (int j = 0; j < templist.size(); j++) {
                    if (j == (templist.size() - 1)) {
                        temp = temp + templist.get(j);
                    } else {
                        temp = temp + templist.get(j) + ", ";
                    }
                }
                templist = new ArrayList<>();
                deflist.add(temp);

                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

    private void midfielder(String mid, String fixture) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] midTeamArray = mid.split(",");
        for (int i = 0; i < midTeamArray.length; i++) {
            String midTeam = midTeamArray[i].split("-")[1];
            if (midTeam.equals("HOU")) {
                midTeam = "Houston Dash";

            } else if (midTeam.equals("CHI")) {
                midTeam = "Chicago Red Stars";
            } else if (midTeam.equals("POR")) {
                midTeam = ("Portland Thorns FC");
            } else if (midTeam.equals("ORL")) {
                midTeam = ("Orlando Pride");
            } else if (midTeam.equals("WAS")) {
                midTeam = ("Washington Spirit");
            } else if (midTeam.equals("NC")) {
                midTeam = ("North Carolina Courage");
            } else if (midTeam.equals("SEA")) {
                midTeam = ("Seattle Reign FC");
            } else if (midTeam.equals("NJ")) {
                midTeam = ("Sky Blue FC");
            } else if (midTeam.equals("UTA")) {
                midTeam = ("Utah Royals FC");
            } else if (midTeam.equals("BOS")) {
                midTeam = ("Boston Breakers");
            }

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                sql = "SELECT * FROM fixture where  fixture='" + fixture + "'&& (home='" + midTeam + "' || away='" + midTeam + "')";
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                while (resultSet.next()) {

                    if (resultSet.getString("home").equals(midTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            templist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            templist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            templist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            templist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            templist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            templist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            templist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            templist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            templist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            templist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            templist.add("-");
                        }

                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            templist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            templist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            templist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            templist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            templist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            templist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            templist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            templist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            templist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            templist.add("@ BOS");
                        }
                    }

                }
                String temp = "";
                for (int j = 0; j < templist.size(); j++) {
                    if (j == (templist.size() - 1)) {
                        temp = temp + templist.get(j);
                    } else {
                        temp = temp + templist.get(j) + ", ";
                    }
                }
                templist = new ArrayList<>();
                midlist.add(temp);
                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }

    private void forward(String fwd, String fixture) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String[] fwdTeamArray = fwd.split(",");
        for (int i = 0; i < fwdTeamArray.length; i++) {
            String fwdTeam = fwdTeamArray[i].split("-")[1];
            if (fwdTeam.equals("HOU")) {
                fwdTeam = "Houston Dash";

            } else if (fwdTeam.equals("CHI")) {
                fwdTeam = "Chicago Red Stars";
            } else if (fwdTeam.equals("POR")) {
                fwdTeam = ("Portland Thorns FC");
            } else if (fwdTeam.equals("ORL")) {
                fwdTeam = ("Orlando Pride");
            } else if (fwdTeam.equals("WAS")) {
                fwdTeam = ("Washington Spirit");
            } else if (fwdTeam.equals("NC")) {
                fwdTeam = ("North Carolina Courage");
            } else if (fwdTeam.equals("SEA")) {
                fwdTeam = ("Seattle Reign FC");
            } else if (fwdTeam.equals("NJ")) {
                fwdTeam = ("Sky Blue FC");
            } else if (fwdTeam.equals("UTA")) {
                fwdTeam = ("Utah Royals FC");
                //fwdTeam="FC Kansas City";
            } else if (fwdTeam.equals("BOS")) {
                fwdTeam = ("Boston Breakers");
            }

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                sql = "SELECT * FROM fixture where  fixture='" + fixture + "'&& (home='" + fwdTeam + "' || away='" + fwdTeam + "')";
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                while (resultSet.next()) {

                    if (resultSet.getString("home").equals(fwdTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            templist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            templist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            templist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            templist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            templist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            templist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            templist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            templist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            templist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            templist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            templist.add("-");
                        }
                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            templist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            templist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            templist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            templist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            templist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            templist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            templist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            templist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            templist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            templist.add("@ BOS");
                        }
                    }

                }
                String temp = "";
                for (int j = 0; j < templist.size(); j++) {
                    if (j == (templist.size() - 1)) {
                        temp = temp + templist.get(j);
                    } else {
                        temp = temp + templist.get(j) + ", ";
                    }
                }
                templist = new ArrayList<>();
                fwdlist.add(temp);
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
        String[] benTeamArray = ben.split(",");
        for (int i = 0; i < benTeamArray.length; i++) {
            String benTeam = benTeamArray[i].split("-")[1];
            if (benTeam.equals("HOU")) {
                benTeam = "Houston Dash";

            } else if (benTeam.equals("CHI")) {
                benTeam = "Chicago Red Stars";
            } else if (benTeam.equals("POR")) {
                benTeam = ("Portland Thorns FC");
            } else if (benTeam.equals("ORL")) {
                benTeam = ("Orlando Pride");
            } else if (benTeam.equals("WAS")) {
                benTeam = ("Washington Spirit");
            } else if (benTeam.equals("NC")) {
                benTeam = ("North Carolina Courage");
            } else if (benTeam.equals("SEA")) {
                benTeam = ("Seattle Reign FC");
            } else if (benTeam.equals("NJ")) {
                benTeam = ("Sky Blue FC");
            } else if (benTeam.equals("UTA")) {
                benTeam = ("Utah Royals FC");

            } else if (benTeam.equals("BOS")) {
                benTeam = ("Boston Breakers");
            }

            try {

                // Load the database driver
                Class.forName("com.mysql.jdbc.Driver");
                String sql = "";
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                sql = "SELECT * FROM fixture where  fixture='" + fixture + "'&& (home='" + benTeam + "' || away='" + benTeam + "')";
                //Select the data from the database

                Statement s = connection.createStatement();
                s.executeQuery(sql);

                resultSet = s.getResultSet();
                while (resultSet.next()) {

                    if (resultSet.getString("home").equals(benTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            templist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            templist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            templist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            templist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            templist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            templist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            templist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            templist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            templist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            templist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            templist.add("-");
                        }
                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            templist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            templist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            templist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            templist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            templist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            templist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            templist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            templist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            templist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            templist.add("@ BOS");
                        }
                    }

                }
                String temp = "";
                for (int j = 0; j < templist.size(); j++) {
                    if (j == (templist.size() - 1)) {
                        temp = temp + templist.get(j);
                    } else {
                        temp = temp + templist.get(j) + ", ";
                    }
                }
                templist = new ArrayList<>();
                benlist.add(temp);
                resultSet.close();

                s.close();
                connection.close();

            } catch (Exception e) {

                System.out.println("Exception is ;" + e);

            }
        }
    }
}
