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
public class searchBox extends HttpServlet {

    private List<String> list;
    private List<String> namelist;
    private List<String> teamlist;
    private List<String> jerseylist;
    private List<String> scorelist;
    private List<String> pricelist;
    private List<String> poslist;
    private List<String> injurylist;
    private List<String> sortednamelist;
    private List<String> sortedteamlist;
    private List<String> sortedjerseylist;
    private List<String> sortedscorelist;
    private List<String> sortedpricelist;
    private List<String> sortedposlist;
    private List<String> sortedinjurylist;

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
        String category = request.getParameter("cat");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        list = new ArrayList<>();
        namelist = new ArrayList<>();
        teamlist = new ArrayList<>();
        jerseylist = new ArrayList<>();
        scorelist = new ArrayList<>();
        pricelist = new ArrayList<>();
        poslist = new ArrayList<>();
        injurylist = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            String pos = "";
            int i = 1;
            int total;
            if (name.contains("'")) {
                String[] nameSTR = name.split("'");
                if (nameSTR.length == 1) {
                    sql = "SELECT * FROM players where name LIKE '" + nameSTR[0] + "\\'" + "%'";
                } else {
                    sql = "SELECT * FROM players where name LIKE '" + nameSTR[0] + "\\'" + nameSTR[1] + "%'";
                }

            } else {
                sql = "SELECT * FROM players where name LIKE '" + name + "%'";
            }
            //Select the data from the database

            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            while (resultSet.next()) {
                namelist.add(resultSet.getString("name"));
                injurylist.add(resultSet.getString("injury"));
                if (resultSet.getString("position").equals("Goalkeeper")) {
                    poslist.add("GK");
                    pos = "Goalkeeper";
                } else if (resultSet.getString("position").equals("Defender")) {
                    poslist.add("DEF");
                    pos = "Defender";
                } else if (resultSet.getString("position").equals("Midfielder")) {
                    poslist.add("MID");
                    pos = "Midfielder";
                } else if (resultSet.getString("position").equals("Forward")) {
                    poslist.add("FWD");
                    pos = "Forward";
                }
                if (resultSet.getString("team").equals("Houston Dash")) {
                    teamlist.add("HOU");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("houstongk.png");
                    } else {
                        jerseylist.add("dash1.png");
                    }

                } else if (resultSet.getString("team").equals("Chicago Red Stars")) {
                    teamlist.add("CHI");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("chicagogk.png");
                    } else {
                        jerseylist.add("stars1.png");
                    }

                } else if (resultSet.getString("team").equals("Portland Thorns FC")) {
                    teamlist.add("POR");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("thornsgk.png");
                    } else {
                        jerseylist.add("thorns1.png");
                    }

                } else if (resultSet.getString("team").equals("Orlando Pride")) {
                    teamlist.add("ORL");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("orlandogk.png");
                    } else {
                        jerseylist.add("pride1.png");
                    }

                } else if (resultSet.getString("team").equals("Washington Spirit")) {
                    teamlist.add("WAS");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("spiritgk.png");
                    } else {
                        jerseylist.add("spirit1.png");
                    }

                } else if (resultSet.getString("team").equals("North Carolina Courage")) {
                    teamlist.add("NC");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("couragegk.png");
                    } else {
                        jerseylist.add("courage.png");
                    }

                } else if (resultSet.getString("team").equals("Seattle Reign FC")) {
                    teamlist.add("SEA");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("seattlegk.png");
                    } else {
                        jerseylist.add("reign1.png");
                    }

                } else if (resultSet.getString("team").equals("Sky Blue FC")) {
                    teamlist.add("NJ");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("skybluegk.png");
                    } else {
                        jerseylist.add("skyblue1.png");
                    }

                } else if (resultSet.getString("team").equals("FC Kansas City")) {
                    teamlist.add("KC");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("kansasgk.png");
                    } else {
                        jerseylist.add("kansas1.png");
                    }

                } else if (resultSet.getString("team").equals("Boston Breakers")) {
                    teamlist.add("BOS");
                    if (pos.equals("Goalkeeper")) {
                        jerseylist.add("breakersgk.png");
                    } else {
                        jerseylist.add("breakers1.png");
                    }

                }
                String price = resultSet.getString("price");
                if (price == null) {
                    price = "0.0";
                }
                pricelist.add(price);
                if (category.equals("score")) {
                    total = 0;
                    for (int j = 1; j <= 22; j++) {
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
                    String point = resultSet.getString(category);

                    if (point.equals("") || point.equals("-")) {
                        point = "0";
                        scorelist.add(point);
                    } else {
                        scorelist.add(point);
                    }

                }

                i++;

            }

            resultSet.close();

            s.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        int k = 1;
        int no = scorelist.size();
        while (k <=no) {

            int max = Integer.parseInt(scorelist.get(0).toString());
            int pos = 0;

            for (int i = 1; i < scorelist.size(); i++) {
                if (Integer.parseInt(scorelist.get(i).toString()) > max) {

                    max = Integer.parseInt(scorelist.get(i).toString());
                    pos = i;
                }
            }
            list.add(namelist.get(pos));
            namelist.remove(pos);
            list.add(poslist.get(pos));
            poslist.remove(pos);
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
            k++;    
        }
        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }
}
