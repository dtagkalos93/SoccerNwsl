/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.util.concurrent.ThreadLocalRandom;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos-Laptop
 */
public class autopick extends HttpServlet {

    private List<String> list;
    private List<String> nameList;
    private List<String> jerseyList;
    private List<String> teamList;
    private List<String> priceList;
    private int chi;
    private int hou;
    private int nc;
    private int orl;
    private int por;
    private int sea;
    private int nj;
    private int uta;
    private int was;
    private double gk;
    private double def;
    private double mid;
    private double fwd;
    private double total;

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
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        System.out.println("FSDV!! auto");
        Connection connection = null;
        Statement statement = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            list = new ArrayList<>();
            chi = 0;
            hou = 0;
            nc = 0;
            orl = 0;
            por = 0;
            sea = 0;
            nj = 0;
            uta = 0;
            was = 0;
            gk = 10.00;
            def = 32.00;
            mid = 40.0;
            fwd = 18.00;
            total = 100.00;
            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            jerseyList = new ArrayList<>();
            priceList = new ArrayList<>();

            goalkeepers(connection);

            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            jerseyList = new ArrayList<>();
            priceList = new ArrayList<>();

            defenders(connection);

            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            jerseyList = new ArrayList<>();
            priceList = new ArrayList<>();

            midfielders(connection);

            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            jerseyList = new ArrayList<>();
            priceList = new ArrayList<>();

            forwards(connection);

            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

        String json = new Gson().toJson(list);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);
    }

    public void goalkeepers(Connection connection) throws SQLException {
        String sql = "SELECT * FROM players where position='Goalkeeper'";
        ResultSet resultSet = null;
        String badge = null;
        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            nameList.add(resultSet.getString("name"));

            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamList.add("HOU");
                jerseyList.add("houstongk.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamList.add("CHI");
                jerseyList.add("chicagogk.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamList.add("POR");
                jerseyList.add("thornsgk.png");
            } else if (team.equals("Orlando Pride")) {
                teamList.add("ORL");
                jerseyList.add("orlandogk.png");
            } else if (team.equals("Washington Spirit")) {
                teamList.add("WAS");
                jerseyList.add("spiritgk.png");
            } else if (team.equals("North Carolina Courage")) {
                teamList.add("NC");
                jerseyList.add("couragegk.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamList.add("SEA");
                jerseyList.add("seattlegk.png");
            } else if (team.equals("Sky Blue FC")) {
                teamList.add("NJ");
                jerseyList.add("skybluegk.png");
            } else if (team.equals("Utah Royals FC")) {
                teamList.add("UTA");
                jerseyList.add("kansasgk.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakersgk.png");
            }
            priceList.add(resultSet.getString("price"));
            i++;
        }
        resultSet.close();
        s.close();
        int randomNum;
        i = 1;
        for (int j = 1; j <= 2; j++) {
            Random rand = new Random();

            randomNum = rand.nextInt((nameList.size()));
            gk = ((gk * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
            total = ((total * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;

            System.out.println("!!GOALKEEPER" + gk);
            if (gk < 0.0) {
                gk = ((gk * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
                total = ((total * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;

                nameList.remove(randomNum);
                jerseyList.remove(randomNum);
                teamList.remove(randomNum);
                priceList.remove(randomNum);
                j--;
                continue;
            }
            if (teamList.get(randomNum).equals("CHI")) {
                if (chi == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    chi++;
                }
            } else if (teamList.get(randomNum).equals("HOU")) {
                if (hou == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    hou++;
                }
            } else if (teamList.get(randomNum).equals("NC")) {
                if (nc == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nc++;
                }
            } else if (teamList.get(randomNum).equals("ORL")) {
                if (orl == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    orl++;
                }
            } else if (teamList.get(randomNum).equals("POR")) {
                if (por == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    por++;
                }
            } else if (teamList.get(randomNum).equals("SEA")) {
                if (sea == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    sea++;
                }
            } else if (teamList.get(randomNum).equals("NJ")) {
                if (nj == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nj++;
                }
            } else if (teamList.get(randomNum).equals("WAS")) {
                if (was == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    was++;
                }
            } else if (teamList.get(randomNum).equals("UTA")) {
                if (uta == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    uta++;
                }
            }
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
            list.add(priceList.get(randomNum));
            priceList.remove(randomNum);
            i++;
        }

    }

    public void defenders(Connection connection) throws SQLException {
        String sql = "SELECT * FROM players where position='Defender'";
        ResultSet resultSet = null;
        String badge = null;
        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            nameList.add(resultSet.getString("name"));
            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamList.add("HOU");
                jerseyList.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamList.add("CHI");
                jerseyList.add("stars1.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamList.add("POR");
                jerseyList.add("thorns1.png");
            } else if (team.equals("Orlando Pride")) {
                teamList.add("ORL");
                jerseyList.add("pride1.png");
            } else if (team.equals("Washington Spirit")) {
                teamList.add("WAS");
                jerseyList.add("spirit1.png");
            } else if (team.equals("North Carolina Courage")) {
                teamList.add("NC");
                jerseyList.add("courage.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamList.add("SEA");
                jerseyList.add("reign1.png");
            } else if (team.equals("Sky Blue FC")) {
                teamList.add("NJ");
                jerseyList.add("skyblue1.png");
            } else if (team.equals("Utah Royals FC")) {
                teamList.add("UTA");
                jerseyList.add("utahjr.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakers1.png");
            }
            priceList.add(resultSet.getString("price"));
            i++;
        }
        resultSet.close();
        s.close();

        int randomNum;
        for (int j = 1; j <= 5; j++) {
            Random rand = new Random();

            randomNum = rand.nextInt((nameList.size()));
            def = ((def * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
            total = ((total * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;

            System.out.println("!!Defend!!" + def);
            if (def < 0.00 || Double.parseDouble(priceList.get(randomNum)) > 6.50) {
                def = ((def * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
                total = ((total * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;

                nameList.remove(randomNum);
                jerseyList.remove(randomNum);
                teamList.remove(randomNum);
                priceList.remove(randomNum);
                j--;
                continue;
            }
            if (teamList.get(randomNum).equals("CHI")) {

                if (chi == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    chi++;
                }
            } else if (teamList.get(randomNum).equals("HOU")) {
                if (hou == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    hou++;
                }
            } else if (teamList.get(randomNum).equals("NC")) {
                if (nc == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nc++;
                }
            } else if (teamList.get(randomNum).equals("ORL")) {

                if (orl == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    orl++;
                }
            } else if (teamList.get(randomNum).equals("POR")) {

                if (por == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    por++;
                }
            } else if (teamList.get(randomNum).equals("SEA")) {
                if (sea == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    sea++;
                }
            } else if (teamList.get(randomNum).equals("NJ")) {
                if (nj == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nj++;
                }
            } else if (teamList.get(randomNum).equals("WAS")) {
                if (was == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    was++;
                }
            } else if (teamList.get(randomNum).equals("UTA")) {
                if (uta == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    uta++;
                }
            }
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
            list.add(priceList.get(randomNum));
            priceList.remove(randomNum);
        }

    }

    public void midfielders(Connection connection) throws SQLException {
        String sql = "SELECT * FROM players where position='Midfielder'";
        ResultSet resultSet = null;
        String badge = null;
        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            nameList.add(resultSet.getString("name"));
            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamList.add("HOU");
                jerseyList.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamList.add("CHI");
                jerseyList.add("stars1.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamList.add("POR");
                jerseyList.add("thorns1.png");
            } else if (team.equals("Orlando Pride")) {
                teamList.add("ORL");
                jerseyList.add("pride1.png");
            } else if (team.equals("Washington Spirit")) {
                teamList.add("WAS");
                jerseyList.add("spirit1.png");
            } else if (team.equals("North Carolina Courage")) {
                teamList.add("NC");
                jerseyList.add("courage.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamList.add("SEA");
                jerseyList.add("reign1.png");
            } else if (team.equals("Sky Blue FC")) {
                teamList.add("NJ");
                jerseyList.add("skyblue1.png");
            } else if (team.equals("Utah Royals FC")) {
                teamList.add("UTA");
                jerseyList.add("utahjr.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakers1.png");
            }
            priceList.add(resultSet.getString("price"));
            i++;
        }
        resultSet.close();
        s.close();
        int randomNum;
        for (int j = 1; j <= 5; j++) {
            Random rand = new Random();

            randomNum = rand.nextInt(nameList.size());
            mid = ((mid * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
            total = ((total * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;

            System.out.println("!!MID" + mid);
            if (mid < 0.00 || Double.parseDouble(priceList.get(randomNum)) > 6.00) {

                mid = ((mid * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
                total = ((total * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
                System.out.println("!!MID ELSe" + mid);

                nameList.remove(randomNum);
                jerseyList.remove(randomNum);
                teamList.remove(randomNum);
                priceList.remove(randomNum);
                j--;
                continue;
            }
            if (teamList.get(randomNum).equals("CHI")) {

                if (chi == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    chi++;
                }
            } else if (teamList.get(randomNum).equals("HOU")) {
                if (hou == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    hou++;
                }
            } else if (teamList.get(randomNum).equals("NC")) {
                if (nc == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nc++;
                }
            } else if (teamList.get(randomNum).equals("ORL")) {

                if (orl == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    orl++;
                }
            } else if (teamList.get(randomNum).equals("POR")) {

                if (por == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    por++;
                }
            } else if (teamList.get(randomNum).equals("SEA")) {
                if (sea == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    sea++;
                }
            } else if (teamList.get(randomNum).equals("NJ")) {
                if (nj == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nj++;
                }
            } else if (teamList.get(randomNum).equals("WAS")) {
                if (was == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    was++;
                }
            } else if (teamList.get(randomNum).equals("UTA")) {
                if (uta == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    uta++;
                }
            }
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
            list.add(priceList.get(randomNum));
            priceList.remove(randomNum);
        }

    }

    public void forwards(Connection connection) throws SQLException {
        String sql = "SELECT * FROM players where position='Forward'";
        ResultSet resultSet = null;
        String badge = null;
        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            nameList.add(resultSet.getString("name"));
            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamList.add("HOU");
                jerseyList.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamList.add("CHI");
                jerseyList.add("stars1.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamList.add("POR");
                jerseyList.add("thorns1.png");
            } else if (team.equals("Orlando Pride")) {
                teamList.add("ORL");
                jerseyList.add("pride1.png");
            } else if (team.equals("Washington Spirit")) {
                teamList.add("WAS");
                jerseyList.add("spirit1.png");
            } else if (team.equals("North Carolina Courage")) {
                teamList.add("NC");
                jerseyList.add("courage.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamList.add("SEA");
                jerseyList.add("reign1.png");
            } else if (team.equals("Sky Blue FC")) {
                teamList.add("NJ");
                jerseyList.add("skyblue1.png");
            } else if (team.equals("Utah Royals FC")) {
                teamList.add("UTA");
                jerseyList.add("utahjr.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakers1.png");
            }
            priceList.add(resultSet.getString("price"));
            i++;
        }
        resultSet.close();
        s.close();
        int randomNum;
        for (int j = 1; j <= 3; j++) {

            Random rand = new Random();

            randomNum = rand.nextInt((nameList.size()));
            fwd = ((fwd * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
            total = ((total * 10) - (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
            System.out.println("!!fwd" + fwd);

            if (fwd < 0.00 || Double.parseDouble(priceList.get(randomNum)) > 6.50) {
                fwd = ((fwd * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;
                total = ((total * 10) + (Double.parseDouble(priceList.get(randomNum)) * 10)) / 10;

                nameList.remove(randomNum);
                jerseyList.remove(randomNum);
                teamList.remove(randomNum);
                priceList.remove(randomNum);
                j--;
                continue;
            }
            if (teamList.get(randomNum).equals("CHI")) {

                if (chi == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    chi++;
                }
            } else if (teamList.get(randomNum).equals("HOU")) {
                if (hou == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    hou++;
                }
            } else if (teamList.get(randomNum).equals("NC")) {
                if (nc == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nc++;
                }
            } else if (teamList.get(randomNum).equals("ORL")) {

                if (orl == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    orl++;
                }
            } else if (teamList.get(randomNum).equals("POR")) {

                if (por == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    por++;
                }
            } else if (teamList.get(randomNum).equals("SEA")) {
                if (sea == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    sea++;
                }
            } else if (teamList.get(randomNum).equals("NJ")) {
                if (nj == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    nj++;
                }
            } else if (teamList.get(randomNum).equals("WAS")) {
                if (was == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    was++;
                }
            } else if (teamList.get(randomNum).equals("UTA")) {
                if (uta == 4) {
                    nameList.remove(randomNum);
                    jerseyList.remove(randomNum);
                    teamList.remove(randomNum);
                    priceList.remove(randomNum);
                    j--;
                    continue;
                } else {
                    uta++;
                }
            }
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
            list.add(priceList.get(randomNum));
            priceList.remove(randomNum);
        }

    }

}
