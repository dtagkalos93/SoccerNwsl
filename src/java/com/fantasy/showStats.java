/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
public class showStats extends HttpServlet {

    private String players ;
    private List<String> nameList;
    private List<String> teamList;
    private List<String> posList;
    private List<String> priceList;
    private List<String> minList;
    private List<String> gwpList;
    private List<String> totalpList;
    private List<String> injuryList;

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
        System.out.println("ShowStats");
        players="";
        try {
            String show = request.getParameter("pos");

            String cat = request.getParameter("cat");
            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            posList = new ArrayList<>();
            priceList = new ArrayList<>();
            minList = new ArrayList<>();
            gwpList = new ArrayList<>();
            totalpList = new ArrayList<>();
            injuryList = new ArrayList<>();
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
                minList.add(resultSet.getString("minutes"));
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
        findMax();
        System.out.println(players);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(players);
        
        
    }
    
    
    
     public void findMax() {
        int length=nameList.size();
        int k = 1;
        System.out.println(totalpList.size());
        while (k <= 20) {

            int max = Integer.parseInt(totalpList.get(0).toString());
            int pos = 0;
            for (int i = 1; i < totalpList.size(); i++) {

                if (Integer.parseInt(totalpList.get(i).toString()) > max) {

                    max = Integer.parseInt(totalpList.get(i).toString());
                    pos = i;
                }
            }
            
            players = players + nameList.get(pos) + "_";
            nameList.remove(pos);
            players = players + priceList.get(pos) + "_";
            priceList.remove(pos);
            players = players + teamList.get(pos) + "_";
            teamList.remove(pos);
            players = players + posList.get(pos) + "_";
            posList.remove(pos);
            players = players + minList.get(pos) + "_";
            minList.remove(pos);
            players = players + gwpList.get(pos) + "_";
            gwpList.remove(pos);
            players = players + totalpList.get(pos) + "_";
            totalpList.remove(pos);
            players = players + injuryList.get(pos) + ",";
            injuryList.remove(pos);
            k++;
            if(k>length)
                break;
        }

    }

}
