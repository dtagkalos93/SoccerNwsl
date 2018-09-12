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

/**
 *
 * @author Mitsos-Laptop
 */
public class fixtureStats extends HttpServlet {

    private Map<String, List<String>> list;

    private List homegoals;
    private List awaygoals;
    private List homeassist;
    private List awayassist;
    private List homeown;
    private List awayown;
    private List homeyellow;
    private List awayyellow;
    private List homered;
    private List awayred;
    private List homepkmissed;
    private List awaypkmissed;
    private List homepksaved;
    private List awaypksaved;
    private List homesaves;
    private List awaysaves;

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
        list = new HashMap<>();

        homegoals = new ArrayList<>();;
        awaygoals = new ArrayList<>();;
        homeassist = new ArrayList<>();;
        awayassist = new ArrayList<>();;
        homeown = new ArrayList<>();;
        awayown = new ArrayList<>();;
        homeyellow = new ArrayList<>();;
        awayyellow = new ArrayList<>();;
        homered = new ArrayList<>();;
        awayred = new ArrayList<>();;
        homepkmissed = new ArrayList<>();;
        awaypkmissed = new ArrayList<>();;
        homepksaved = new ArrayList<>();;
        awaypksaved = new ArrayList<>();;
        homesaves = new ArrayList<>();;
        awaysaves = new ArrayList<>();;

        String gw = request.getParameter("gw");
        String home = request.getParameter("home");
        String away = request.getParameter("away");
        String homeTeam = "";
        String awayTeam = "";
        System.out.println(home+"/");
        if (home.equals("Houston Dash")) {
            homeTeam = "at HOU";

        } else if (home.equals("Chicago Red Stars")) {
            homeTeam = "at CHI";

        } else if (home.equals("Portland Thorns FC")) {
            
            homeTeam = "at POR";

        } else if (home.equals("Orlando Pride")) {
            homeTeam = "at ORL";

        } else if (home.equals("Washington Spirit")) {
            homeTeam = "at WAS";

        } else if (home.equals("North Carolina Courage")) {
            homeTeam = "at NC";

        } else if (home.equals("Seattle Reign FC")) {
            homeTeam = "at SEA";
        } else if (home.equals("Sky Blue FC")) {
            homeTeam = "at NJ";

        } else if (home.equals("Utah Royals FC")) {
            homeTeam = "at UTA";

        }
        if (away.equals("Houston Dash")) {
            awayTeam = "vs HOU";

        } else if (away.equals("Chicago Red Stars")) {
            awayTeam = "vs CHI";

        } else if (away.equals("Portland Thorns FC")) {
            awayTeam = "vs POR";

        } else if (away.equals("Orlando Pride")) {
            awayTeam = "vs ORL";

        } else if (away.equals("Washington Spirit")) {
            awayTeam = "vs WAS";

        } else if (away.equals("North Carolina Courage")) {
            awayTeam = "vs NC";

        } else if (away.equals("Seattle Reign FC")) {
            awayTeam = "vs SEA";
        } else if (away.equals("Sky Blue FC")) {
            awayTeam = "vs NJ";

        } else if (away.equals("Utah Royals FC")) {
            awayTeam = "vs UTA";

        }
        System.out.println("home " + homeTeam);

        String gwNo = gw.split(" ")[1];

        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);

            getHome(awayTeam, gwNo, connection);
            getAway(homeTeam, gwNo, connection);

            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

        list.put("homegoal", homegoals);
        list.put("awaygoal", awaygoals);

        list.put("homeassist", homeassist);
        list.put("awayassist", awayassist);

        list.put("homeown", homeown);
        list.put("awayown", awayown);

        list.put("homepkmissed", homepkmissed);
        list.put("awaypkmissed", awaypkmissed);

        list.put("homepksaved", homepksaved);
        list.put("awaypksaved", awaypksaved);

        list.put("homesaves", homesaves);
        list.put("awaysaves", awaysaves);

        list.put("homeyellow", homeyellow);
        list.put("awayyellow", awayyellow);

        list.put("homered", homered);
        list.put("awayred", awayred);

        String json = new Gson().toJson(list);

        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    public void getHome(String away, String gw, Connection connection) {
        try {

            String sql = "SELECT * FROM gw" + gw + "stats where opponent Like '" + away + "%'";

            System.out.println(sql);

            //Select the data from the database
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            ResultSet resultSet = s.getResultSet();
            while (resultSet.next()) {
                if (!resultSet.getString("Goal").equals("0")) {
                    homegoals.add(resultSet.getString("name") + "_" + resultSet.getString("Goal"));
                }
                if (!resultSet.getString("assist").equals("0")) {
                    homeassist.add(resultSet.getString("name") + "_" + resultSet.getString("assist"));
                }
                if (!resultSet.getString("ownGoal").equals("0")) {
                    homeown.add(resultSet.getString("name") + "_" + resultSet.getString("ownGoal"));
                }
                if (!resultSet.getString("pkSaved").equals("0")) {
                    homepksaved.add(resultSet.getString("name") + "_" + resultSet.getString("pkSaved"));
                }
                if (!resultSet.getString("pkMissed").equals("0")) {
                    homepkmissed.add(resultSet.getString("name") + "_" + resultSet.getString("pkMissed"));
                }
                if (!resultSet.getString("yellow").equals("0")) {
                    homeyellow.add(resultSet.getString("name") + "_" + resultSet.getString("yellow"));
                }
                if (!resultSet.getString("red").equals("0")) {
                    homered.add(resultSet.getString("name") + "_" + resultSet.getString("red"));
                }
                if (!resultSet.getString("saves").equals("0")) {
                    homesaves.add(resultSet.getString("name") + "_" + resultSet.getString("saves"));
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(fixtureStats.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void getAway(String home, String gw, Connection connection) {
        try {

            String sql = "SELECT * FROM gw" + gw + "stats where opponent Like '" + home + "%'";

            System.out.println(sql);

            //Select the data from the database
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            ResultSet resultSet = s.getResultSet();
            while (resultSet.next()) {
                if (!resultSet.getString("Goal").equals("0")) {
                    awaygoals.add(resultSet.getString("name") + "_" + resultSet.getString("Goal"));
                }
                if (!resultSet.getString("assist").equals("0")) {
                    awayassist.add(resultSet.getString("name") + "_" + resultSet.getString("assist"));
                }
                if (!resultSet.getString("ownGoal").equals("0")) {
                    awayown.add(resultSet.getString("name") + "_" + resultSet.getString("ownGoal"));
                }
                if (!resultSet.getString("pkSaved").equals("0")) {
                    awaypksaved.add(resultSet.getString("name") + "_" + resultSet.getString("pkSaved"));
                }
                if (!resultSet.getString("pkMissed").equals("0")) {
                    awaypkmissed.add(resultSet.getString("name") + "_" + resultSet.getString("pkMissed"));
                }
                if (!resultSet.getString("yellow").equals("0")) {
                    awayyellow.add(resultSet.getString("name") + "_" + resultSet.getString("yellow"));
                }
                if (!resultSet.getString("red").equals("0")) {
                    awayred.add(resultSet.getString("name") + "_" + resultSet.getString("red"));
                }
                if (!resultSet.getString("saves").equals("0")) {
                    awaysaves.add(resultSet.getString("name") + "_" + resultSet.getString("saves"));
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(fixtureStats.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
