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
public class playersSelection extends HttpServlet {

    private List<String> list;
    private List<String> namelist;
    private List<String> teamlist;
    private List<String> jerseylist;
    private List<String> scorelist;
    private List<String> pricelist;

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
        System.out.println("Selection");
        list = new ArrayList<>();
        namelist = new ArrayList<>();
        teamlist = new ArrayList<>();
        jerseylist = new ArrayList<>();
        scorelist = new ArrayList<>();
        pricelist = new ArrayList<>();

        String position = request.getParameter("pos");
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
            String sql = "SELECT * FROM players where position='" + position + "'";
            ResultSet resultSet = null;
            Statement s = connection.createStatement();

            s.executeQuery(sql);
            int i = 0;
            resultSet = s.getResultSet();
            while (resultSet.next()) {

                //Add records into data list
                namelist.add(resultSet.getString("name"));

                String team = resultSet.getString("team");
                if (position.equals("Goalkeeper")) {
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
                    } else if (team.equals("FC Kansas City")) {
                        teamlist.add("KC");
                        jerseylist.add("kansasgk.png");
                    } else if (team.equals("Boston Breakers")) {
                        teamlist.add("BOS");
                        jerseylist.add("breakersgk.png");
                    }
                } else if (team.equals("Houston Dash")) {
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
                } else if (team.equals("FC Kansas City")) {
                    teamlist.add("KC");
                    jerseylist.add("kansas1.png");
                } else if (team.equals("Boston Breakers")) {
                    teamlist.add("BOS");
                    jerseylist.add("breakers1.png");
                }

                pricelist.add(resultSet.getString("price"));
                scorelist.add(resultSet.getString("totalScore"));

                i++;
            }
            resultSet.close();
            s.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        int k = 1;
        int no = scorelist.size();
        while (k <= no) {

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
            list.add(jerseylist.get(pos));
            jerseylist.remove(pos);
            list.add(teamlist.get(pos));
            teamlist.remove(pos);
            list.add(pricelist.get(pos));
            pricelist.remove(pos);
            list.add(scorelist.get(pos));
            scorelist.remove(pos);

            k++;
        }
        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
