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
 * @author Mitsos
 */
public class changePages extends HttpServlet {

    private Map<String, List<String>> list;

    private List<String> nameList;
    private List<String> teamList;
    private List<String> posList;
    private List<String> priceList;
    private List<String> minList;
    private List<String> gwpList;
    private List<String> totalpList;
    private List<String> injuryList;
    private List<String> sortnameList;
    private List<String> sortteamList;
    private List<String> sortposList;
    private List<String> sortpriceList;
    private List<String> sortminList;
    private List<String> sortgwpList;
    private List<String> sorttotalpList;
    private List<String> sortinjuryList;
    private List<String> other;

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
        String show = request.getParameter("pos");

        String cat = request.getParameter("cat");

        String cat2 = request.getParameter("cat2");
        String pageNo = request.getParameter("page");
        other = new ArrayList<>();
        try {
            list = new HashMap<>();

            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            posList = new ArrayList<>();
            priceList = new ArrayList<>();
            minList = new ArrayList<>();
            gwpList = new ArrayList<>();
            totalpList = new ArrayList<>();
            injuryList = new ArrayList<>();
            sortnameList = new ArrayList<>();
            sortteamList = new ArrayList<>();
            sortposList = new ArrayList<>();
            sortpriceList = new ArrayList<>();
            sortminList = new ArrayList<>();
            sortgwpList = new ArrayList<>();
            sorttotalpList = new ArrayList<>();
            sortinjuryList = new ArrayList<>();
            deadLIne line = new deadLIne();
            String gw = line.getGameweek();
            int weeks = Integer.parseInt(gw.split(" ")[1]) - 1;
            String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
            String dbName = "fantasy";
            String userId = "root";
            String password = "";
            String sql = "";
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");

            try {
                // Get a Connection to the database
                connection = DriverManager.getConnection(connectionUrl, userId, password);
            } catch (SQLException ex) {
                Logger.getLogger(showStats.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (cat.equals("all")) {
                sql = "SELECT * FROM players";

            } else if (cat.equals("pos")) {
                sql = "SELECT * FROM players WHERE position='" + show + "'";
            } else if (cat.equals("team")) {
                sql = "SELECT * FROM players WHERE team='" + show + "'";
            }
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            while (resultSet.next()) {
                nameList.add(resultSet.getString("name"));
                priceList.add(resultSet.getString("price"));
                teamList.add(resultSet.getString("team"));
                posList.add(resultSet.getString("position"));
                if (cat2.equals("gw") || cat2.equals("price") || cat2.equals("score") || cat2.equals("minutes")) {
                    minList.add(resultSet.getString("minutes"));
                } else {
                    minList.add(resultSet.getString(cat2));
                }
                gwpList.add(resultSet.getString("GW" + weeks));
                int total = 0;
                for (int i = 1; i <= 24; i++) {
                    total = total + Integer.parseInt(resultSet.getString("GW" + i));
                }

                totalpList.add(total + "");
                injuryList.add(resultSet.getString("injury"));

            }

            resultSet.close();

            s.close();
            connection.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(showStats.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(showStats.class.getName()).log(Level.SEVERE, null, ex);
        }
        int pages = nameList.size() / 20;
        if (nameList.size() % 20 != 0) {
            pages++;
        }
        int startPos = 0;
        int finalPos = 0;
        System.out.println("page" + pageNo);

        if (pages == Integer.parseInt(pageNo)) {
            int page = (Integer.parseInt(pageNo)) - 1;
            if (page == 0) {
                startPos = (page * 20);

            } else {
                startPos = (page * 20) - 1;

            }
            finalPos = totalpList.size() - 1;
        } else {
            int page = (Integer.parseInt(pageNo)) - 1;

            if (page == 0) {
                startPos = (page * 20);

            } else {
                startPos = (page * 20) - 1;

            }
            finalPos = startPos + 20;
        }
        System.out.println("start" + startPos + "final " + finalPos);

        findMax(cat2);
        nameList = new ArrayList<>();
        teamList = new ArrayList<>();
        posList = new ArrayList<>();
        priceList = new ArrayList<>();
        minList = new ArrayList<>();
        gwpList = new ArrayList<>();
        totalpList = new ArrayList<>();
        injuryList = new ArrayList<>();
        for (int i = startPos; i < finalPos; i++) {
            nameList.add(sortnameList.get(i));
            priceList.add(sortpriceList.get(i));
            teamList.add(sortteamList.get(i));
            posList.add(sortposList.get(i));
            minList.add(sortminList.get(i));
            gwpList.add(sortgwpList.get(i));
            totalpList.add(sorttotalpList.get(i));
            injuryList.add(sortinjuryList.get(i));
        }
        list.put("name", nameList);
        list.put("price", priceList);
        list.put("team", teamList);
        list.put("pos", posList);
        list.put("min", minList);
        list.put("gwp", gwpList);
        list.put("total", totalpList);
        list.put("injury", injuryList);
        int pageprev = Integer.parseInt(pageNo);
        other.add((pageprev - 1) + "");
        other.add((pageprev + 1) + "");
        other.add((pages + 1) + "");
        list.put("other", other);
        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    public void findMax(String cat2) {
        int length = nameList.size();
        int k = 1;
        System.out.println(totalpList.size());
        List<String> tempList = new ArrayList<>();
        if (cat2.equals("score")) {
            tempList = totalpList;
        } else if (cat2.equals("price")) {
            tempList = priceList;
        } else if (cat2.equals("gw")) {
            tempList = gwpList;
        } else {
            tempList = minList;
        }
        while (k <= length) {
            int pos = 0;

            if (cat2.equals("price")) {
                double max = Double.parseDouble(tempList.get(0).toString());

                for (int i = 1; i < tempList.size(); i++) {

                    if (Double.parseDouble(tempList.get(i).toString()) > max) {

                        max = Double.parseDouble(tempList.get(i).toString());
                        pos = i;
                    }
                }
            } else {
                int max = Integer.parseInt(tempList.get(0).toString());
                for (int i = 1; i < tempList.size(); i++) {

                    if (Integer.parseInt(tempList.get(i).toString()) > max) {

                        max = Integer.parseInt(tempList.get(i).toString());
                        pos = i;
                    }
                }
            }

            sortnameList.add(nameList.get(pos));
            nameList.remove(pos);
            sortpriceList.add(priceList.get(pos));
            priceList.remove(pos);
            sortteamList.add(teamList.get(pos));
            teamList.remove(pos);
            sortposList.add(posList.get(pos));
            posList.remove(pos);
            sortminList.add(minList.get(pos));
            minList.remove(pos);
            sortgwpList.add(gwpList.get(pos));
            gwpList.remove(pos);
            sorttotalpList.add(totalpList.get(pos));
            totalpList.remove(pos);
            sortinjuryList.add(injuryList.get(pos));
            injuryList.remove(pos);
            k++;
            if (k > length) {
                break;
            }
        }

    }
}
