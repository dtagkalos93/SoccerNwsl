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
public class playersData extends HttpServlet {

    private List<String> list;
    private List<String> namelist;
    private List<String> teamlist;
    private List<String> jerseylist;
    private List<String> scorelist;
    private List<String> pricelist;
    private List<String> injurylist;
    private int total;

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
        list = new ArrayList<>();
        namelist = new ArrayList<>();
        teamlist = new ArrayList<>();
        jerseylist = new ArrayList<>();
        scorelist = new ArrayList<>();
        pricelist = new ArrayList<>();
        injurylist = new ArrayList<>();
        String text = request.getParameter("page");
        String category = request.getParameter("cat");

        int fixNo = Integer.parseInt(text);
        String prevBtnvalue = (fixNo - 1) + "";
        String nextBtnvalue = (fixNo + 1) + "";

        list.add(prevBtnvalue);
        list.add(nextBtnvalue);
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;

        String badge = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            goalkeepers(connection, fixNo, category);

            namelist = new ArrayList<>();
            teamlist = new ArrayList<>();
            jerseylist = new ArrayList<>();
            scorelist = new ArrayList<>();
            pricelist = new ArrayList<>();
            injurylist = new ArrayList<>();

            defenders(connection, fixNo, category);

            namelist = new ArrayList<>();
            teamlist = new ArrayList<>();
            jerseylist = new ArrayList<>();
            scorelist = new ArrayList<>();
            pricelist = new ArrayList<>();
            injurylist = new ArrayList<>();

            midfielders(connection, fixNo, category);
            namelist = new ArrayList<>();
            teamlist = new ArrayList<>();
            jerseylist = new ArrayList<>();
            scorelist = new ArrayList<>();
            pricelist = new ArrayList<>();
            injurylist = new ArrayList<>();

            forwards(connection, fixNo, category);
            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);
    }

    public void goalkeepers(Connection connection, int no, String category) throws SQLException {
        String sql = "SELECT * FROM players where position='Goalkeeper'";
        ResultSet resultSet = null;
        String badge = null;

        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            namelist.add(resultSet.getString("name"));
            injurylist.add(resultSet.getString("injury"));
            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamlist.add("HOU");
                jerseylist.add("houstongk.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamlist.add("CHI");
                jerseylist.add("chicagogk.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamlist.add("POR");
                jerseylist.add("thornsgk.png");
            } else if (team.equals("Orlando Pride")) {
                teamlist.add("ORL");
                jerseylist.add("orlandogk.png");
            } else if (team.equals("Washington Spirit")) {
                teamlist.add("WAS");
                jerseylist.add("spiritgk.png");
            } else if (team.equals("North Carolina Courage")) {
                teamlist.add("NC");
                jerseylist.add("couragegk.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamlist.add("SEA");
                jerseylist.add("seattlegk.png");
            } else if (team.equals("Sky Blue FC")) {
                teamlist.add("NJ");
                jerseylist.add("skybluegk.png");
            } else if (team.equals("Utah Royals FC")) {
                teamlist.add("UTA");
                jerseylist.add("kansasgk.png");
            } else if (team.equals("Boston Breakers")) {
                teamlist.add("BOS");
                jerseylist.add("breakersgk.png");
            }
            pricelist.add(resultSet.getString("price"));
            if (category.equals("score") || category.equals("price")) {
                total = 0;
                for (int j = 1; j <= 24; j++) {
                    //total=total+Integer.parseInt();
                    String gw = resultSet.getString("GW" + j);

                    if (gw.equals("") || gw.equals("-")) {
                        total = total + 0;
                    } else {
                        total = total + Integer.parseInt(gw);
                    }

                }
                scorelist.add(total + "");
            } else {
                String score = resultSet.getString(category);
                if (score.equals("") || score.equals("-")) {
                    scorelist.add("0");
                } else {
                    scorelist.add(score);
                }

            }

            i++;
        }
        resultSet.close();
        s.close();
        int number = no * 2;
        findMaxgk(number, category);

    }

    public void defenders(Connection connection, int no, String category) throws SQLException {
        String sql = "SELECT * FROM players where position='Defender'";
        ResultSet resultSet = null;
        String badge = null;
        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            namelist.add(resultSet.getString("name"));
            injurylist.add(resultSet.getString("injury"));

            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamlist.add("HOU");
                jerseylist.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamlist.add("CHI");
                jerseylist.add("stars1.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamlist.add("POR");
                jerseylist.add("thorns1.png");
            } else if (team.equals("Orlando Pride")) {
                teamlist.add("ORL");
                jerseylist.add("pride1.png");
            } else if (team.equals("Washington Spirit")) {
                teamlist.add("WAS");
                jerseylist.add("spirit1.png");
            } else if (team.equals("North Carolina Courage")) {
                teamlist.add("NC");
                jerseylist.add("courage.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamlist.add("SEA");
                jerseylist.add("reign1.png");
            } else if (team.equals("Sky Blue FC")) {
                teamlist.add("NJ");
                jerseylist.add("skyblue1.png");
            } else if (team.equals("Utah Royals FC")) {
                teamlist.add("UTA");
                jerseylist.add("utahjr.png");
            } else if (team.equals("Boston Breakers")) {
                teamlist.add("BOS");
                jerseylist.add("breakers1.png");
            }
            pricelist.add(resultSet.getString("price"));
            if (category.equals("score")) {
                total = 0;
                for (int j = 1; j <= 24; j++) {
                    //total=total+Integer.parseInt();
                    String gw = resultSet.getString("GW" + j);

                    if (gw.equals("") || gw.equals("-")) {
                        total = total + 0;
                    } else {
                        total = total + Integer.parseInt(gw);
                    }

                }
                scorelist.add(total + "");
            } else {
                String score = resultSet.getString(category);
                if (score.equals("") || score.equals("-")) {
                    scorelist.add("0");
                } else {
                    scorelist.add(score);
                }

            }

            i++;
        }
        resultSet.close();
        s.close();
//        if (no == 1) {
//            int number = no * 8;
//            findMaxdef(number, 8, category);
//        } else if (no == 2 || no == 3) {
//            int number = ((no - 1) * 7) + 8;
//            findMaxdef(number, 7, category);
//        } else if (no == 4 || no == 5 || no == 6 || no == 7 || no == 8 || no == 9) {
//            int number = ((no - 3) * 6) + 22;
//            findMaxdef(number, 6, category);
//        } else {
//            int number = ((no - 10) * 2) + 64;
//            findMaxdef(number, 2, category);
//        }
        if (no == 10) {
            int number = ((no - 9) * 7) + 53;

            findMaxdef(number, 7, category);
        } else {
            int number = no * 6;

            findMaxdef(number, 6, category);

        }

    }

    public void midfielders(Connection connection, int no, String category) throws SQLException {
        String sql = "SELECT * FROM players where position='Midfielder'";
        ResultSet resultSet = null;
        String badge = null;
        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            namelist.add(resultSet.getString("name"));
            injurylist.add(resultSet.getString("injury"));

            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamlist.add("HOU");
                jerseylist.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamlist.add("CHI");
                jerseylist.add("stars1.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamlist.add("POR");
                jerseylist.add("thorns1.png");
            } else if (team.equals("Orlando Pride")) {
                teamlist.add("ORL");
                jerseylist.add("pride1.png");
            } else if (team.equals("Washington Spirit")) {
                teamlist.add("WAS");
                jerseylist.add("spirit1.png");
            } else if (team.equals("North Carolina Courage")) {
                teamlist.add("NC");
                jerseylist.add("courage.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamlist.add("SEA");
                jerseylist.add("reign1.png");
            } else if (team.equals("Sky Blue FC")) {
                teamlist.add("NJ");
                jerseylist.add("skyblue1.png");
            } else if (team.equals("Utah Royals FC")) {
                teamlist.add("UTA");
                jerseylist.add("utahjr.png");
            } else if (team.equals("Boston Breakers")) {
                teamlist.add("BOS");
                jerseylist.add("breakers1.png");
            }
            pricelist.add(resultSet.getString("price"));
            if (category.equals("score")) {
                total = 0;
                for (int j = 1; j <= 24; j++) {
                    //total=total+Integer.parseInt();
                    String gw = resultSet.getString("GW" + j);

                    if (gw.equals("") || gw.equals("-")) {
                        total = total + 0;
                    } else {
                        total = total + Integer.parseInt(gw);
                    }

                }
                scorelist.add(total + "");
            } else {
                String score = resultSet.getString(category);
                if (score.equals("") || score.equals("-")) {
                    scorelist.add("0");
                } else {
                    scorelist.add(score);
                }

            }

            i++;
        }
        resultSet.close();
        s.close();
//        if (no == 1) {
//            int number = no * 5;
//            findMaxmid(number, 5, category);
//        } else if (no == 2 || no == 3 || no == 4 || no == 5 || no == 6 || no == 7 || no == 8 || no == 9) {
//            int number = ((no - 1) * 6) + 5;
//            findMaxmid(number, 6, category);
//        } else {
//
//            int number = ((no - 9) * 4) + 53;
//            findMaxmid(number, 2, category);
//        }

        if (no == 10) {
            int number = ((no - 9) * 3) + 53;

            findMaxmid(number, 3, category);
        } else {
            int number = no * 6;

            findMaxmid(number, 6, category);

        }

    }

    public void forwards(Connection connection, int no, String category) throws SQLException {
        String sql = "SELECT * FROM players where position='Forward'";
        ResultSet resultSet = null;
        String badge = null;
        Statement s = connection.createStatement();

        s.executeQuery(sql);
        int i = 0;
        resultSet = s.getResultSet();
        while (resultSet.next()) {

            //Add records into data list
            namelist.add(resultSet.getString("name"));
            injurylist.add(resultSet.getString("injury"));

            String team = resultSet.getString("team");

            if (team.equals("Houston Dash")) {
                teamlist.add("HOU");
                jerseylist.add("dash1.png");

            } else if (team.equals("Chicago Red Stars")) {
                teamlist.add("CHI");
                jerseylist.add("stars1.png");
            } else if (team.equals("Portland Thorns FC")) {
                teamlist.add("POR");
                jerseylist.add("thorns1.png");
            } else if (team.equals("Orlando Pride")) {
                teamlist.add("ORL");
                jerseylist.add("pride1.png");
            } else if (team.equals("Washington Spirit")) {
                teamlist.add("WAS");
                jerseylist.add("spirit1.png");
            } else if (team.equals("North Carolina Courage")) {
                teamlist.add("NC");
                jerseylist.add("courage.png");
            } else if (team.equals("Seattle Reign FC")) {
                teamlist.add("SEA");
                jerseylist.add("reign1.png");
            } else if (team.equals("Sky Blue FC")) {
                teamlist.add("NJ");
                jerseylist.add("skyblue1.png");
            } else if (team.equals("Utah Royals FC")) {
                teamlist.add("UTA");
                jerseylist.add("utahjr.png");
            } else if (team.equals("Boston Breakers")) {
                teamlist.add("BOS");
                jerseylist.add("breakers1.png");
            }
            pricelist.add(resultSet.getString("price"));
            if (category.equals("score")) {
                total = 0;
                for (int j = 1; j <= 24; j++) {
                    //total=total+Integer.parseInt();
                    String gw = resultSet.getString("GW" + j);

                    if (gw.equals("") || gw.equals("-")) {
                        total = total + 0;
                    } else {
                        total = total + Integer.parseInt(gw);
                    }

                }
                scorelist.add(total + "");
            } else {
                String score = resultSet.getString(category);
                if (score.equals("") || score.equals("-")) {
                    scorelist.add("0");
                } else {
                    scorelist.add(score);
                }

            }

            i++;
        }
        resultSet.close();
        s.close();
//        if (no == 1 || no == 2 || no == 3) {
//            int number = no * 5;
//            findMaxfwd(number, 5, category);
//        } else if (no == 4 || no == 5 || no == 6 || no == 7 || no == 8 || no == 9 || no == 10) {
//            int number = ((no - 3) * 6) + 15;
//            findMaxfwd(number, 6, category);
//        } else {
//            int number = ((no - 10) * 2) + 57;
//            findMaxfwd(number, 2, category);
//        }
        int number = no * 6;
        findMaxfwd(number, 6, category);

    }

    public void findMaxgk(int no, String cat) {
        if (cat.equals("price")) {
            int k = 1;

            while (k <= no) {

                double max = Double.parseDouble(pricelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < pricelist.size(); i++) {
                    if (Double.parseDouble(pricelist.get(i).toString()) > max) {

                        max = Double.parseDouble(pricelist.get(i).toString());
                        pos = i;
                    }
                }

                if (k == no - 1 || k == no) {

                    list.add(namelist.get(pos));
                    namelist.remove(pos);
                    list.add(jerseylist.get(pos));
                    jerseylist.remove(pos);
                    list.add(teamlist.get(pos));
                    teamlist.remove(pos);
                    list.add(pricelist.get(pos));
                    pricelist.remove(pos);
                    list.add(scorelist.get(pos));
                    scorelist.remove(pos);
                    list.add(injurylist.get(pos));
                    injurylist.remove(pos);
                } else {
                    namelist.remove(pos);
                    jerseylist.remove(pos);
                    teamlist.remove(pos);
                    pricelist.remove(pos);
                    scorelist.remove(pos);
                    injurylist.remove(pos);
                }
                k++;
            }
        } else {
            int k = 1;

            while (k <= no) {

                int max = Integer.parseInt(scorelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < scorelist.size(); i++) {
                    if (Integer.parseInt(scorelist.get(i).toString()) > max) {

                        max = Integer.parseInt(scorelist.get(i).toString());
                        pos = i;
                    }
                }

                if (k == no - 1 || k == no) {

                    list.add(namelist.get(pos));
                    namelist.remove(pos);
                    list.add(jerseylist.get(pos));
                    jerseylist.remove(pos);
                    list.add(teamlist.get(pos));
                    teamlist.remove(pos);
                    list.add(pricelist.get(pos));
                    pricelist.remove(pos);
                    list.add(scorelist.get(pos));
                    scorelist.remove(pos);
                    list.add(injurylist.get(pos));
                    injurylist.remove(pos);
                } else {
                    namelist.remove(pos);
                    jerseylist.remove(pos);
                    teamlist.remove(pos);
                    pricelist.remove(pos);
                    scorelist.remove(pos);
                    injurylist.remove(pos);
                }
                k++;
            }
        }

    }

    public void findMaxdef(int no, int noperpage, String cat) {
        if (cat.equals("price")) {
            int k = 1;

            while (k <= no) {
                double max = Double.parseDouble(pricelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < pricelist.size(); i++) {
                    if (Double.parseDouble(pricelist.get(i).toString()) > max) {

                        max = Double.parseDouble(pricelist.get(i).toString());
                        pos = i;
                    }

                }

                if (noperpage == 7) {
                    if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5 || k == no - 6) {

                        list.add(namelist.get(pos));
                        namelist.remove(pos);
                        list.add(jerseylist.get(pos));
                        jerseylist.remove(pos);
                        list.add(teamlist.get(pos));
                        teamlist.remove(pos);
                        list.add(pricelist.get(pos));
                        pricelist.remove(pos);
                        list.add(scorelist.get(pos));
                        scorelist.remove(pos);
                        list.add(injurylist.get(pos));
                        injurylist.remove(pos);
                    } else {
                        namelist.remove(pos);
                        jerseylist.remove(pos);
                        teamlist.remove(pos);
                        pricelist.remove(pos);
                        scorelist.remove(pos);
                        injurylist.remove(pos);
                    }
                } else {
                    if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5) {

                        list.add(namelist.get(pos));
                        namelist.remove(pos);
                        list.add(jerseylist.get(pos));
                        jerseylist.remove(pos);
                        list.add(teamlist.get(pos));
                        teamlist.remove(pos);
                        list.add(pricelist.get(pos));
                        pricelist.remove(pos);
                        list.add(scorelist.get(pos));
                        scorelist.remove(pos);
                        list.add(injurylist.get(pos));
                        injurylist.remove(pos);
                    } else {
                        namelist.remove(pos);
                        jerseylist.remove(pos);
                        teamlist.remove(pos);
                        pricelist.remove(pos);
                        scorelist.remove(pos);
                        injurylist.remove(pos);
                    }
                }
                k++;
            }
        } else {
            int k = 1;

            while (k <= no) {
                int max = Integer.parseInt(scorelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < scorelist.size(); i++) {
                    if (Integer.parseInt(scorelist.get(i).toString()) > max) {

                        max = Integer.parseInt(scorelist.get(i).toString());
                        pos = i;
                    }

                }
                if (noperpage == 7) {
                    if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5 || k == no - 6) {

                        list.add(namelist.get(pos));
                        namelist.remove(pos);
                        list.add(jerseylist.get(pos));
                        jerseylist.remove(pos);
                        list.add(teamlist.get(pos));
                        teamlist.remove(pos);
                        list.add(pricelist.get(pos));
                        pricelist.remove(pos);
                        list.add(scorelist.get(pos));
                        scorelist.remove(pos);
                        list.add(injurylist.get(pos));
                        injurylist.remove(pos);
                    } else {
                        namelist.remove(pos);
                        jerseylist.remove(pos);
                        teamlist.remove(pos);
                        pricelist.remove(pos);
                        scorelist.remove(pos);
                        injurylist.remove(pos);
                    }
                } else {
                    if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5) {

                        list.add(namelist.get(pos));
                        namelist.remove(pos);
                        list.add(jerseylist.get(pos));
                        jerseylist.remove(pos);
                        list.add(teamlist.get(pos));
                        teamlist.remove(pos);
                        list.add(pricelist.get(pos));
                        pricelist.remove(pos);
                        list.add(scorelist.get(pos));
                        scorelist.remove(pos);
                        list.add(injurylist.get(pos));
                        injurylist.remove(pos);
                    } else {
                        namelist.remove(pos);
                        jerseylist.remove(pos);
                        teamlist.remove(pos);
                        pricelist.remove(pos);
                        scorelist.remove(pos);
                        injurylist.remove(pos);
                    }
                }

                k++;
            }
        }

    }

    public void findMaxmid(int no, int noperpage, String cat) {

        if (cat.equals("price")) {
            int k = 1;

            while (k <= no) {
                double max = Double.parseDouble(pricelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < pricelist.size(); i++) {
                    if (Double.parseDouble(pricelist.get(i).toString()) > max) {

                        max = Double.parseDouble(pricelist.get(i).toString());
                        pos = i;
                    }

                }

                if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5) {

                    list.add(namelist.get(pos));
                    namelist.remove(pos);
                    list.add(jerseylist.get(pos));
                    jerseylist.remove(pos);
                    list.add(teamlist.get(pos));
                    teamlist.remove(pos);
                    list.add(pricelist.get(pos));
                    pricelist.remove(pos);
                    list.add(scorelist.get(pos));
                    scorelist.remove(pos);
                    list.add(injurylist.get(pos));
                    injurylist.remove(pos);
                } else {
                    namelist.remove(pos);
                    jerseylist.remove(pos);
                    teamlist.remove(pos);
                    pricelist.remove(pos);
                    scorelist.remove(pos);
                    injurylist.remove(pos);
                }

                k++;
            }
        } else {
            int k = 1;

            while (k <= no) {
                int max = Integer.parseInt(scorelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < scorelist.size(); i++) {
                    if (Integer.parseInt(scorelist.get(i).toString()) > max) {

                        max = Integer.parseInt(scorelist.get(i).toString());
                        pos = i;
                    }

                }

                if (noperpage == 3) {
                    if (k == no || k == no - 1 || k == no - 2) {

                        list.add(namelist.get(pos));
                        namelist.remove(pos);
                        list.add(jerseylist.get(pos));
                        jerseylist.remove(pos);
                        list.add(teamlist.get(pos));
                        teamlist.remove(pos);
                        list.add(pricelist.get(pos));
                        pricelist.remove(pos);
                        list.add(scorelist.get(pos));
                        scorelist.remove(pos);
                        list.add(injurylist.get(pos));
                        injurylist.remove(pos);
                    } else {
                        namelist.remove(pos);
                        jerseylist.remove(pos);
                        teamlist.remove(pos);
                        pricelist.remove(pos);
                        scorelist.remove(pos);
                        injurylist.remove(pos);
                    }
                } else {
                    if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5) {

                        list.add(namelist.get(pos));
                        namelist.remove(pos);
                        list.add(jerseylist.get(pos));
                        jerseylist.remove(pos);
                        list.add(teamlist.get(pos));
                        teamlist.remove(pos);
                        list.add(pricelist.get(pos));
                        pricelist.remove(pos);
                        list.add(scorelist.get(pos));
                        scorelist.remove(pos);
                        list.add(injurylist.get(pos));
                        injurylist.remove(pos);
                    } else {
                        namelist.remove(pos);
                        jerseylist.remove(pos);
                        teamlist.remove(pos);
                        pricelist.remove(pos);
                        scorelist.remove(pos);
                        injurylist.remove(pos);
                    }
                }

                k++;
            }
        }

    }

    public void findMaxfwd(int no, int noperpage, String cat) {
        if (cat.equals("price")) {
            int k = 1;

            while (k <= no) {
                double max = Double.parseDouble(pricelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < pricelist.size(); i++) {
                    if (Double.parseDouble(pricelist.get(i).toString()) > max) {

                        max = Double.parseDouble(pricelist.get(i).toString());
                        pos = i;
                    }
                }
                if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5) {

                    list.add(namelist.get(pos));
                    namelist.remove(pos);
                    list.add(jerseylist.get(pos));
                    jerseylist.remove(pos);
                    list.add(teamlist.get(pos));
                    teamlist.remove(pos);
                    list.add(pricelist.get(pos));
                    pricelist.remove(pos);
                    list.add(scorelist.get(pos));
                    scorelist.remove(pos);
                    list.add(injurylist.get(pos));
                    injurylist.remove(pos);
                } else {
                    namelist.remove(pos);
                    jerseylist.remove(pos);
                    teamlist.remove(pos);
                    pricelist.remove(pos);
                    scorelist.remove(pos);
                    injurylist.remove(pos);
                }
                k++;
            }
        } else {
            int k = 1;

            while (k <= no) {
                int max = Integer.parseInt(scorelist.get(0).toString());
                int pos = 0;

                for (int i = 1; i < scorelist.size(); i++) {
                    if (Integer.parseInt(scorelist.get(i).toString()) > max) {

                        max = Integer.parseInt(scorelist.get(i).toString());
                        pos = i;
                    }
                }
                if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5) {

                    list.add(namelist.get(pos));
                    namelist.remove(pos);
                    list.add(jerseylist.get(pos));
                    jerseylist.remove(pos);
                    list.add(teamlist.get(pos));
                    teamlist.remove(pos);
                    list.add(pricelist.get(pos));
                    pricelist.remove(pos);
                    list.add(scorelist.get(pos));
                    scorelist.remove(pos);
                    list.add(injurylist.get(pos));
                    injurylist.remove(pos);
                } else {
                    namelist.remove(pos);
                    jerseylist.remove(pos);
                    teamlist.remove(pos);
                    pricelist.remove(pos);
                    scorelist.remove(pos);
                    injurylist.remove(pos);
                }
                k++;
            }
        }
    }

}