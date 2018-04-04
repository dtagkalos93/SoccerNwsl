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
        goalkeeper(gk, fix);
        list.put("gk", gklist);
        defender(def, fix);
        list.put("def", deflist);
        midfielder(mid, fix);
        list.put("mid", midlist);
        forward(fwd, fix);
        list.put("fwd", fwdlist);
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
            if (resultSet.next()) {

                if (resultSet.getString("home").equals(gkTeam)) {
                    String awayTeam = resultSet.getString("away");
                    if (awayTeam.equals("Houston Dash")) {
                        gklist.add("vs HOU");

                    } else if (awayTeam.equals("Chicago Red Stars")) {
                        gklist.add("vs CHI");
                    } else if (awayTeam.equals("Portland Thorns FC")) {
                        gklist.add("vs POR");
                    } else if (awayTeam.equals("Orlando Pride")) {
                        gklist.add("vs ORL");
                    } else if (awayTeam.equals("Washington Spirit")) {
                        gklist.add("vs WAS");
                    } else if (awayTeam.equals("North Carolina Courage")) {
                        gklist.add("vs NC");
                    } else if (awayTeam.equals("Seattle Reign FC")) {
                        gklist.add("vs SEA");
                    } else if (awayTeam.equals("Sky Blue FC")) {
                        gklist.add("vs NJ");
                    } else if (awayTeam.equals("Utah Royals FC")) {
                        gklist.add("vs UTA");
                    } else if (awayTeam.equals("Boston Breakers")) {
                        gklist.add("vs BOS");
                    } else if (awayTeam.equals("FC Kansas City")) {
                        gklist.add("vs UTA");
                    } else if (awayTeam.equals("-")) {
                        gklist.add("-");
                    }
                } else {

                    String homeTeam = resultSet.getString("home");
                    if (homeTeam.equals("Houston Dash")) {
                        gklist.add("@ HOU");

                    } else if (homeTeam.equals("Chicago Red Stars")) {
                        gklist.add("@ CHI");
                    } else if (homeTeam.equals("Portland Thorns FC")) {
                        gklist.add("@ POR");
                    } else if (homeTeam.equals("Orlando Pride")) {
                        gklist.add("@ ORL");
                    } else if (homeTeam.equals("Washington Spirit")) {
                        gklist.add("@ WAS");
                    } else if (homeTeam.equals("North Carolina Courage")) {
                        gklist.add("@ NC");
                    } else if (homeTeam.equals("Seattle Reign FC")) {
                        gklist.add("@ SEA");
                    } else if (homeTeam.equals("Sky Blue FC")) {
                        gklist.add("@ NJ");
                    } else if (homeTeam.equals("Utah Royals FC")) {
                        gklist.add("@ UTA");
                    } else if (homeTeam.equals("Boston Breakers")) {
                        gklist.add("@ BOS");
                    } else if (homeTeam.equals("FC Kansas City")) {
                        gklist.add("@ UTA");
                    }
                }

            }

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
            System.out.println(defTeam);
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
                if (resultSet.next()) {

                    if (resultSet.getString("home").equals(defTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            deflist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            deflist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            deflist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            deflist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            deflist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            deflist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            deflist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            deflist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            deflist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            deflist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            deflist.add("-");
                        }
                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            deflist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            deflist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            deflist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            deflist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            deflist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            deflist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            deflist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            deflist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            deflist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            deflist.add("@ BOS");
                        }
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
                if (resultSet.next()) {

                    if (resultSet.getString("home").equals(midTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            midlist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            midlist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            midlist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            midlist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            midlist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            midlist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            midlist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            midlist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            midlist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            midlist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            midlist.add("-");
                        }

                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            midlist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            midlist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            midlist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            midlist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            midlist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            midlist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            midlist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            midlist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            midlist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            midlist.add("@ BOS");
                        }
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
                if (resultSet.next()) {

                    if (resultSet.getString("home").equals(fwdTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            fwdlist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            fwdlist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            fwdlist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            fwdlist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            fwdlist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            fwdlist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            fwdlist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            fwdlist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            fwdlist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            fwdlist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            fwdlist.add("-");
                        }
                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            fwdlist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            fwdlist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            fwdlist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            fwdlist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            fwdlist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            fwdlist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            fwdlist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            fwdlist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            fwdlist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            fwdlist.add("@ BOS");
                        }
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
                if (resultSet.next()) {

                    if (resultSet.getString("home").equals(benTeam)) {
                        String awayTeam = resultSet.getString("away");
                        if (awayTeam.equals("Houston Dash")) {
                            benlist.add("vs HOU");

                        } else if (awayTeam.equals("Chicago Red Stars")) {
                            benlist.add("vs CHI");
                        } else if (awayTeam.equals("Portland Thorns FC")) {
                            benlist.add("vs POR");
                        } else if (awayTeam.equals("Orlando Pride")) {
                            benlist.add("vs ORL");
                        } else if (awayTeam.equals("Washington Spirit")) {
                            benlist.add("vs WAS");
                        } else if (awayTeam.equals("North Carolina Courage")) {
                            benlist.add("vs NC");
                        } else if (awayTeam.equals("Seattle Reign FC")) {
                            benlist.add("vs SEA");
                        } else if (awayTeam.equals("Sky Blue FC")) {
                            benlist.add("vs NJ");
                        } else if (awayTeam.equals("Utah Royals FC")) {
                            benlist.add("vs UTA");
                        } else if (awayTeam.equals("Boston Breakers")) {
                            benlist.add("vs BOS");
                        } else if (awayTeam.equals("-")) {
                            benlist.add("-");
                        }
                    } else {

                        String homeTeam = resultSet.getString("home");
                        if (homeTeam.equals("Houston Dash")) {
                            benlist.add("@ HOU");

                        } else if (homeTeam.equals("Chicago Red Stars")) {
                            benlist.add("@ CHI");
                        } else if (homeTeam.equals("Portland Thorns FC")) {
                            benlist.add("@ POR");
                        } else if (homeTeam.equals("Orlando Pride")) {
                            benlist.add("@ ORL");
                        } else if (homeTeam.equals("Washington Spirit")) {
                            benlist.add("@ WAS");
                        } else if (homeTeam.equals("North Carolina Courage")) {
                            benlist.add("@ NC");
                        } else if (homeTeam.equals("Seattle Reign FC")) {
                            benlist.add("@ SEA");
                        } else if (homeTeam.equals("Sky Blue FC")) {
                            benlist.add("@ NJ");
                        } else if (homeTeam.equals("Utah Royals FC")) {
                            benlist.add("@ UTA");
                        } else if (homeTeam.equals("Boston Breakers")) {
                            benlist.add("@ BOS");
                        }
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
}
