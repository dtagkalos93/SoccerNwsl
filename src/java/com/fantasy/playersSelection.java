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
    private List<String> injurylist;
    private List<String> sortedinjurylist;
    private List<String> sortednamelist;
    private List<String> sortedteamlist;
    private List<String> sortedjerseylist;
    private List<String> sortedscorelist;
    private List<String> sortedpricelist;

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
        injurylist= new ArrayList<>();
        sortednamelist = new ArrayList<>();
        sortedteamlist = new ArrayList<>();
        sortedjerseylist = new ArrayList<>();
        sortedscorelist = new ArrayList<>();
        sortedpricelist = new ArrayList<>();
        sortedinjurylist= new ArrayList<>();

        String position = request.getParameter("pos");
        String category = request.getParameter("cat");
        String[] parts = position.split("-");
        position = parts[0];
        int page = Integer.parseInt(parts[1]);
        list.add((page - 1) + "");
        list.add((page + 1) + "");
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
            int total;
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
                    } else if (team.equals("Utah Royals FC")) {
                        teamlist.add("UTA");
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
                } else if (team.equals("Utah Royals FC")) {
                    teamlist.add("UTA");
                    jerseylist.add("utahjr.png");
                } else if (team.equals("Boston Breakers")) {
                    teamlist.add("BOS");
                    jerseylist.add("breakers1.png");
                }

                pricelist.add(resultSet.getString("price"));
                if (category.equals("score") || category.equals("price")) {
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
                    String score = resultSet.getString(category);
                    if (score.equals("") || score.equals("-")) {
                        scorelist.add("0");
                    } else {
                        scorelist.add(score);
                    }
                }
                injurylist.add(resultSet.getString("injury"));
                i++;
            }
            resultSet.close();
            s.close();
                        connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        int k = 1;
        int no;
        int pageNo;
        int missing = 0;
        if (scorelist.size() % 20 == 0) {
            list.add(scorelist.size() / 20 + "");
            list.add(scorelist.size() + "");
            pageNo = scorelist.size() / 20;
            no = page * 20;

        } else {
            list.add((scorelist.size() / 20 + 1) + "");
            list.add(scorelist.size() + "");
            pageNo = (scorelist.size() / 20) + 1;
            if (pageNo == page) {
                no = ((page - 1) * 20) + scorelist.size() % 20;
                missing = scorelist.size() % 20;
            } else {
                no = page * 20;
            }
        }
        if(category.equals("price")){
            while (k <= no) {

            double max = Double.parseDouble(pricelist.get(0).toString());
            int pos = 0;

            for (int i = 1; i < pricelist.size(); i++) {
                if (Double.parseDouble(pricelist.get(i).toString()) > max) {

                    max = Double.parseDouble(pricelist.get(i).toString());
                    pos = i;
                }
            }
            if (missing == 0) {
                if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5 || k == no - 6
                        || k == no - 7 || k == no - 8 || k == no - 9 || k == no - 10 || k == no - 11 || k == no - 12 || k == no - 13
                        || k == no - 14 || k == no - 15 || k == no - 16 || k == no - 17 || k == no - 18 || k == no - 19) {
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
                sortednamelist.add(namelist.get(pos));
                namelist.remove(pos);
                sortedjerseylist.add(jerseylist.get(pos));
                jerseylist.remove(pos);
                sortedteamlist.add(teamlist.get(pos));
                teamlist.remove(pos);
                sortedpricelist.add(pricelist.get(pos));
                pricelist.remove(pos);
                sortedscorelist.add(scorelist.get(pos));
                scorelist.remove(pos);
                sortedinjurylist.add(injurylist.get(pos));
                injurylist.remove(pos);
            }

            k++;
        }

        if (missing != 0) {
            for (int i = sortednamelist.size() - missing; i < sortednamelist.size(); i++) {
                list.add(sortednamelist.get(i));
                list.add(sortedjerseylist.get(i));
                list.add(sortedteamlist.get(i));
                list.add(sortedpricelist.get(i));
                list.add(sortedscorelist.get(i));
                list.add(sortedinjurylist.get(i));
            }
        }
        }
        else{
            while (k <= no) {

            int max = Integer.parseInt(scorelist.get(0).toString());
            int pos = 0;

            for (int i = 1; i < scorelist.size(); i++) {
                if (Integer.parseInt(scorelist.get(i).toString()) > max) {

                    max = Integer.parseInt(scorelist.get(i).toString());
                    pos = i;
                }
            }
            if (missing == 0) {
                if (k == no || k == no - 1 || k == no - 2 || k == no - 3 || k == no - 4 || k == no - 5 || k == no - 6
                        || k == no - 7 || k == no - 8 || k == no - 9 || k == no - 10 || k == no - 11 || k == no - 12 || k == no - 13
                        || k == no - 14 || k == no - 15 || k == no - 16 || k == no - 17 || k == no - 18 || k == no - 19) {
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
                sortednamelist.add(namelist.get(pos));
                namelist.remove(pos);
                sortedjerseylist.add(jerseylist.get(pos));
                jerseylist.remove(pos);
                sortedteamlist.add(teamlist.get(pos));
                teamlist.remove(pos);
                sortedpricelist.add(pricelist.get(pos));
                pricelist.remove(pos);
                sortedscorelist.add(scorelist.get(pos));
                scorelist.remove(pos);
                sortedinjurylist.add(injurylist.get(pos));
                injurylist.remove(pos);
            }

            k++;
        }

        if (missing != 0) {
            for (int i = sortednamelist.size() - missing; i < sortednamelist.size(); i++) {
                list.add(sortednamelist.get(i));
                list.add(sortedjerseylist.get(i));
                list.add(sortedteamlist.get(i));
                list.add(sortedpricelist.get(i));
                list.add(sortedscorelist.get(i));
                list.add(sortedinjurylist.get(i));
            }
        }
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
