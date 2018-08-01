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
 * @author Mitsos-Laptop
 *
 */
public class getFixture extends HttpServlet {

    private List<String> list;

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
        System.out.println("Find Fixture");
        String team = request.getParameter("team");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        list = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            sql = "SELECT * FROM fixture where home='" + team + "' || away='" + team + "'";
            int i = 1;
            //Select the data from the database

            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            while (resultSet.next()) {
                String gw = resultSet.getString("fixture");
                list.add("GW" + gw.split(" ")[1]);
                String date = resultSet.getString("date");
                if (date.equals("-")) {
                    list.add("-");
                } else {
                    list.add(convertDate(date));
                }

                if (resultSet.getString("home").equals(team)) {
                    String awayTeam = resultSet.getString("away");
                    if (awayTeam.equals("Houston Dash")) {
                        list.add("vs HOU");

                    } else if (awayTeam.equals("Chicago Red Stars")) {
                        list.add("vs CHI");
                    } else if (awayTeam.equals("Portland Thorns FC")) {
                        list.add("vs POR");
                    } else if (awayTeam.equals("Orlando Pride")) {
                        list.add("vs ORL");
                    } else if (awayTeam.equals("Washington Spirit")) {
                        list.add("vs WAS");
                    } else if (awayTeam.equals("North Carolina Courage")) {
                        list.add("vs NC");
                    } else if (awayTeam.equals("Seattle Reign FC")) {
                        list.add("vs SEA");
                    } else if (awayTeam.equals("Sky Blue FC")) {
                        list.add("vs NJ");
                    } else if (awayTeam.equals("Utah Royals FC")) {
                        list.add("vs UTA");
                    } else if (awayTeam.equals("Boston Breakers")) {

                    } else {
                        list.add("-");
                    }
                } else {

                    String homeTeam = resultSet.getString("home");
                    if (homeTeam.equals("Houston Dash")) {
                        list.add("@ HOU");

                    } else if (homeTeam.equals("Chicago Red Stars")) {
                        list.add("@ CHI");
                    } else if (homeTeam.equals("Portland Thorns FC")) {
                        list.add("@ POR");
                    } else if (homeTeam.equals("Orlando Pride")) {
                        list.add("@ ORL");
                    } else if (homeTeam.equals("Washington Spirit")) {
                        list.add("@ WAS");
                    } else if (homeTeam.equals("North Carolina Courage")) {
                        list.add("@ NC");
                    } else if (homeTeam.equals("Seattle Reign FC")) {
                        list.add("@ SEA");
                    } else if (homeTeam.equals("Sky Blue FC")) {
                        list.add("@ NJ");
                    } else if (homeTeam.equals("Utah Royals FC")) {
                        list.add("@ UTA");
                    } else if (homeTeam.equals("Boston Breakers")) {
                        list.add("@ BOS");
                    }
                }
                list.add(resultSet.getString("time"));

            }

            resultSet.close();

            s.close();
            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

        String json = new Gson().toJson(list);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    String convertDate(String date) {
        String[] dateArray = date.split(" ");
        String month = dateArray[1];
        System.out.println(month + "!!!");
        int monthNo = 0;
        String day;
        day = dateArray[2].replace("th", "");
        day = day.replace("nd", "");
        day = day.replace("rd", "");
        day = day.replace("st", "");

        if (month.equals("January")) {
            monthNo = 1;
        }
        if (month.equals("February")) {
            monthNo = 2;
        }
        if (month.equals("March")) {
            monthNo = 3;
        }
        if (month.equals("April")) {
            monthNo = 4;
        }
        if (month.equals("May")) {
            monthNo = 5;
        }
        if (month.equals("June")) {
            monthNo = 6;
        }
        if (month.equals("July")) {
            monthNo = 7;
        }
        if (month.equals("August")) {
            monthNo = 8;
        }
        if (month.equals("September")) {
            monthNo = 9;
        }
        if (month.equals("Octomber")) {
            monthNo = 10;
        }
        if (month.equals("November")) {
            monthNo = 11;
        }
        if (month.equals("December")) {
            monthNo = 12;
        }
        return monthNo + "/" + day + "/" + dateArray[3];

    }
}
