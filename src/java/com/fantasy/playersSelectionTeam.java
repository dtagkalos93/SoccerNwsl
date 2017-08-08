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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class playersSelectionTeam extends HttpServlet {

    private List<String> list;
    private List<String> gknameList = new ArrayList();
    private List<String> gkjerseyList = new ArrayList();
    private List<String> gkteamList = new ArrayList();
    private List<String> gkpriceList = new ArrayList();
    private List<String> gkscoreList = new ArrayList();
    private List<String> defnameList = new ArrayList();
    private List<String> defjerseyList = new ArrayList();
    private List<String> defteamList = new ArrayList();
    private List<String> defpriceList = new ArrayList();
    private List<String> defscoreList = new ArrayList();
    private List<String> midnameList = new ArrayList();
    private List<String> midjerseyList = new ArrayList();
    private List<String> midteamList = new ArrayList();
    private List<String> midpriceList = new ArrayList();
    private List<String> midscoreList = new ArrayList();
    private List<String> fwdnameList = new ArrayList();
    private List<String> fwdjerseyList = new ArrayList();
    private List<String> fwdteamList = new ArrayList();
    private List<String> fwdpriceList = new ArrayList();
    private List<String> fwdscoreList = new ArrayList();

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
        System.out.println("Selection-By team!");
        list = new ArrayList<>();
        gknameList = new ArrayList<>();
        gkjerseyList = new ArrayList<>();
        gkteamList = new ArrayList<>();
        gkpriceList = new ArrayList<>();
        gkscoreList = new ArrayList<>();
        defnameList = new ArrayList<>();
        defjerseyList = new ArrayList<>();
        defteamList = new ArrayList<>();
        defpriceList = new ArrayList<>();
        defscoreList = new ArrayList<>();
        midnameList = new ArrayList<>();
        midjerseyList = new ArrayList<>();
        midteamList = new ArrayList<>();
        midpriceList = new ArrayList<>();
        midscoreList = new ArrayList<>();
        fwdnameList = new ArrayList<>();
        fwdjerseyList = new ArrayList<>();
        fwdteamList = new ArrayList<>();
        fwdpriceList = new ArrayList<>();
        fwdscoreList = new ArrayList<>();

        String team = request.getParameter("team");
        System.out.println(team);

        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;

        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);

            //Select the data from the database
            gk(connection, team);
            list.add(gknameList.size() + "");
            def(connection, team);
            list.add(defnameList.size() + "");
            mid(connection, team);
            list.add(midnameList.size() + "");
            fwd(connection, team);
            list.add(fwdnameList.size() + "");
            findMax("gk",gknameList.size());
            findMax("def",defnameList.size());
            findMax("mid",midnameList.size() );
            findMax("fwd",fwdnameList.size());

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    public void gk(Connection connection, String team) throws SQLException {
        int total;
        ResultSet resultSet = null;
        String sql = "SELECT * FROM players where team='" + team + "' AND position='Goalkeeper'";
        System.out.println(sql);
        Statement s = connection.createStatement();
        s.executeQuery(sql);
        resultSet = s.getResultSet();
        while (resultSet.next()) {
            gknameList.add(resultSet.getString("name"));

            if (team.equals("Houston Dash")) {
                gkteamList.add("HOU");

                gkjerseyList.add("houstongk.png");

            } else if (team.equals("Chicago Red Stars")) {
                gkteamList.add("CHI");

                gkjerseyList.add("chicagogk.png");

            } else if (team.equals("Portland Thorns FC")) {
                gkteamList.add("POR");

                gkjerseyList.add("thornsgk.png");

            } else if (team.equals("Orlando Pride")) {
                gkteamList.add("ORL");

                gkjerseyList.add("orlandogk.png");

            } else if (team.equals("Washington Spirit")) {
                gkteamList.add("WAS");
                gkjerseyList.add("spiritgk.png");

            } else if (team.equals("North Carolina Courage")) {
                gkteamList.add("NC");

                gkjerseyList.add("couragegk.png");

            } else if (team.equals("Seattle Reign FC")) {
                gkteamList.add("SEA");

                gkjerseyList.add("reigngk.png");

            } else if (team.equals("Sky Blue FC")) {
                gkteamList.add("NJ");

                gkjerseyList.add("skybluegk.png");

            } else if (team.equals("FC Kansas City")) {
                gkteamList.add("KC");

                gkjerseyList.add("kansasgk.png");

            } else if (team.equals("Boston Breakers")) {
                gkteamList.add("BOS");

                gkjerseyList.add("breakersgk.png");

            }
            String price = resultSet.getString("price");
            if (price == null) {
                price = "0.0";
            }
            gkpriceList.add(price);
            total = 0;
            for (int j = 1; j <= 22; j++) {
                //total=total+Integer.parseInt();
                String gw = resultSet.getString("GW" + j);

                System.out.println(gw);
                if (gw.equals("")) {
                    total = total + 0;
                } else {
                    total = total + Integer.parseInt(gw);
                }

            }

            gkscoreList.add(total + "");
        }

    }

    public void def(Connection connection, String team) throws SQLException {
        int total;
        ResultSet resultSet = null;
        String sql = "SELECT * FROM players where team='" + team + "' AND position='Defender'";
        System.out.println(sql);
        Statement s = connection.createStatement();
        s.executeQuery(sql);
        resultSet = s.getResultSet();
        while (resultSet.next()) {
            defnameList.add(resultSet.getString("name"));

            if (team.equals("Houston Dash")) {
                defteamList.add("HOU");

                defjerseyList.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                defteamList.add("CHI");

                defjerseyList.add("stars1.png");

            } else if (team.equals("Portland Thorns FC")) {
                defteamList.add("POR");

                defjerseyList.add("thorns1.png");

            } else if (team.equals("Orlando Pride")) {
                defteamList.add("ORL");

                defjerseyList.add("pride1.png");

            } else if (team.equals("Washington Spirit")) {
                defteamList.add("WAS");
                defjerseyList.add("spirit1.png");

            } else if (team.equals("North Carolina Courage")) {
                defteamList.add("NC");

                defjerseyList.add("courage.png");

            } else if (team.equals("Seattle Reign FC")) {
                defteamList.add("SEA");

                defjerseyList.add("reign1.png");

            } else if (team.equals("Sky Blue FC")) {
                defteamList.add("NJ");

                defjerseyList.add("skyblue1.png");

            } else if (team.equals("FC Kansas City")) {
                defteamList.add("KC");

                defjerseyList.add("kansas1.png");

            } else if (team.equals("Boston Breakers")) {
                defteamList.add("BOS");

                defjerseyList.add("breakers1.png");

            }
            String price = resultSet.getString("price");
            if (price == null) {
                price = "0.0";
            }
            defpriceList.add(price);
            total = 0;
            for (int j = 1; j <= 22; j++) {
                //total=total+Integer.parseInt();
                String gw = resultSet.getString("GW" + j);

                System.out.println(gw);
                if (gw.equals("")) {
                    total = total + 0;
                } else {
                    total = total + Integer.parseInt(gw);
                }

            }

            defscoreList.add(total + "");
        }

    }

    public void mid(Connection connection, String team) throws SQLException {
        int total;
        ResultSet resultSet = null;
        String sql = "SELECT * FROM players where team='" + team + "' AND position='Midfielder'";
        System.out.println(sql);
        Statement s = connection.createStatement();
        s.executeQuery(sql);
        resultSet = s.getResultSet();
        while (resultSet.next()) {
            midnameList.add(resultSet.getString("name"));

            if (team.equals("Houston Dash")) {
                midteamList.add("HOU");

                midjerseyList.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                midteamList.add("CHI");

                midjerseyList.add("stars1.png");

            } else if (team.equals("Portland Thorns FC")) {
                midteamList.add("POR");

                midjerseyList.add("thorns1.png");

            } else if (team.equals("Orlando Pride")) {
                midteamList.add("ORL");

                midjerseyList.add("pride1.png");

            } else if (team.equals("Washington Spirit")) {
                midteamList.add("WAS");
                midjerseyList.add("spirit1.png");

            } else if (team.equals("North Carolina Courage")) {
                midteamList.add("NC");

                midjerseyList.add("courage.png");

            } else if (team.equals("Seattle Reign FC")) {
                midteamList.add("SEA");

                midjerseyList.add("reign1.png");

            } else if (team.equals("Sky Blue FC")) {
                midteamList.add("NJ");

                midjerseyList.add("skyblue1.png");

            } else if (team.equals("FC Kansas City")) {
                midteamList.add("KC");

                midjerseyList.add("kansas1.png");

            } else if (team.equals("Boston Breakers")) {
                midteamList.add("BOS");

                midjerseyList.add("breakers1.png");

            }
            String price = resultSet.getString("price");
            if (price == null) {
                price = "0.0";
            }
            midpriceList.add(price);
            total = 0;
            for (int j = 1; j <= 22; j++) {
                //total=total+Integer.parseInt();
                String gw = resultSet.getString("GW" + j);

                System.out.println(gw);
                if (gw.equals("")) {
                    total = total + 0;
                } else {
                    total = total + Integer.parseInt(gw);
                }

            }

            midscoreList.add(total + "");
        }

    }

    public void fwd(Connection connection, String team) throws SQLException {
        int total;
        ResultSet resultSet = null;
        String sql = "SELECT * FROM players where team='" + team + "' AND position='Forward'";
        System.out.println(sql);
        Statement s = connection.createStatement();
        s.executeQuery(sql);
        resultSet = s.getResultSet();
        while (resultSet.next()) {
            fwdnameList.add(resultSet.getString("name"));

            if (team.equals("Houston Dash")) {
                fwdteamList.add("HOU");

                fwdjerseyList.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                fwdteamList.add("CHI");

                fwdjerseyList.add("stars1.png");

            } else if (team.equals("Portland Thorns FC")) {
                fwdteamList.add("POR");

                fwdjerseyList.add("thorns1.png");

            } else if (team.equals("Orlando Pride")) {
                fwdteamList.add("ORL");

                fwdjerseyList.add("pride1.png");

            } else if (team.equals("Washington Spirit")) {
                fwdteamList.add("WAS");
                fwdjerseyList.add("spirit1.png");

            } else if (team.equals("North Carolina Courage")) {
                fwdteamList.add("NC");

                fwdjerseyList.add("courage.png");

            } else if (team.equals("Seattle Reign FC")) {
                fwdteamList.add("SEA");

                fwdjerseyList.add("reign1.png");

            } else if (team.equals("Sky Blue FC")) {
                fwdteamList.add("NJ");

                fwdjerseyList.add("skyblue1.png");

            } else if (team.equals("FC Kansas City")) {
                fwdteamList.add("KC");

                fwdjerseyList.add("kansas1.png");

            } else if (team.equals("Boston Breakers")) {
                fwdteamList.add("BOS");

                fwdjerseyList.add("breakers1.png");

            }
            String price = resultSet.getString("price");
            if (price == null) {
                price = "0.0";
            }
            fwdpriceList.add(price);
            total = 0;
            for (int j = 1; j <= 22; j++) {
                //total=total+Integer.parseInt();
                String gw = resultSet.getString("GW" + j);

                System.out.println(gw);
                if (gw.equals("")) {
                    total = total + 0;
                } else {
                    total = total + Integer.parseInt(gw);
                }

            }

            fwdscoreList.add(total + "");
        }

    }

    public void findMax(String position,int no) {
        
                int k = 1;
        while (k <= no) {
        if (position.equals("def")) {
            int max = Integer.parseInt(defscoreList.get(0).toString());
            int pos = 0;

            for (int i = 1; i < defscoreList.size(); i++) {
                if (Integer.parseInt(defscoreList.get(i).toString()) > max) {

                    max = Integer.parseInt(defscoreList.get(i).toString());
                    pos = i;
                }
            }
            list.add(defnameList.get(pos));

            defnameList.remove(pos);
            list.add(defjerseyList.get(pos));
            defjerseyList.remove(pos);
            list.add(defteamList.get(pos));
            defteamList.remove(pos);
            list.add(defpriceList.get(pos));
            defpriceList.remove(pos);
            list.add(defscoreList.get(pos));
            defscoreList.remove(pos);
        } else if (position.equals("gk")) {
            int max = Integer.parseInt(gkscoreList.get(0).toString());
            int pos = 0;

            for (int i = 1; i < gkscoreList.size(); i++) {
                
                if (Integer.parseInt(gkscoreList.get(i).toString()) > max) {

                    max = Integer.parseInt(gkscoreList.get(i).toString());
                    pos = i;
                }
            }
            System.out.println(gknameList.get(pos) + "and pos: " + pos);
            list.add(gknameList.get(pos));
            System.out.println(list.get(0).toString());
            gknameList.remove(pos);
            list.add(gkjerseyList.get(pos));
            gkjerseyList.remove(pos);
            list.add(gkteamList.get(pos));
            gkteamList.remove(pos);
            list.add(gkpriceList.get(pos));
            gkpriceList.remove(pos);
            list.add(gkscoreList.get(pos));
            gkscoreList.remove(pos);
        } else if (position.equals("mid")) {

            int max = Integer.parseInt(midscoreList.get(0).toString());
            int pos = 0;

            for (int i = 1; i < midscoreList.size(); i++) {
                if (Integer.parseInt(midscoreList.get(i).toString()) > max) {

                    max = Integer.parseInt(midscoreList.get(i).toString());
                    pos = i;
                }
            }

            list.add(midnameList.get(pos));

            midnameList.remove(pos);
            list.add(midjerseyList.get(pos));
            midjerseyList.remove(pos);
            list.add(midteamList.get(pos));
            midteamList.remove(pos);
            list.add(midpriceList.get(pos));
            midpriceList.remove(pos);
            list.add(midscoreList.get(pos));
            midscoreList.remove(pos);

        } else if (position.equals("fwd")) {
            int max = Integer.parseInt(fwdscoreList.get(0).toString());
            int pos = 0;

            for (int i = 1; i < fwdscoreList.size(); i++) {
                if (Integer.parseInt(fwdscoreList.get(i).toString()) > max) {

                    max = Integer.parseInt(fwdscoreList.get(i).toString());
                    pos = i;
                }
            }

            list.add(fwdnameList.get(pos));

            fwdnameList.remove(pos);
            list.add(fwdjerseyList.get(pos));
            fwdjerseyList.remove(pos);
            list.add(fwdteamList.get(pos));
            fwdteamList.remove(pos);
            list.add(fwdpriceList.get(pos));
            fwdpriceList.remove(pos);
            list.add(fwdscoreList.get(pos));
            fwdscoreList.remove(pos);
        }
        k++;
        }

    }

}