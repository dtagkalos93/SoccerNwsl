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
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class fixture extends HttpServlet {



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

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        List dataList = new ArrayList();
        List dateList = new ArrayList();
        List homeList = new ArrayList();
        List homebadgeList = new ArrayList();
        List timeList = new ArrayList();
        List awayList = new ArrayList();
        List awaybadgeList = new ArrayList();
        String badge = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            String strThatDay = "2017/04/10";
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
            Date d = null;
            try {
                d = formatter.parse(strThatDay);//catch exception
            } catch (ParseException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            Calendar thatDay = Calendar.getInstance();
            thatDay.setTime(d);
            Calendar today = Calendar.getInstance();
            today.getTime();
            long diff = today.getTimeInMillis() - thatDay.getTimeInMillis();
            long days = diff / (24 * 60 * 60 * 1000);
            int weeks = ((int) days) / 7;

            if(weeks==10){
                weeks=9;
            }
            else if(weeks==16 || weeks == 17){
                weeks=15;
            }
            else if(weeks==23 || weeks ==24 ){
                weeks = 21;
            }
            else if(weeks>10){
                weeks=weeks-1;
            }
            if (weeks >= 22 )
                weeks = 22;
            //Select the data from the database
            String sql = "SELECT * FROM fixture where fixture='Gameweek " + weeks + "'";
            dataList.add("Gameweek " + weeks);
            dataList.add("Gameweek " + (weeks - 1));
            dataList.add("Gameweek " + (weeks + 1));
            Statement s = connection.createStatement();

            s.executeQuery(sql);

            resultSet = s.getResultSet();

            while (resultSet.next()) {

                //Add records into data list
                dateList.add(resultSet.getString("date"));

                homeList.add(resultSet.getString("home"));
                if (resultSet.getString("home").equals("Houston Dash")) {
                    badge = "Houston_Dash2.png";
                } else if (resultSet.getString("home").equals("Chicago Red Stars")) {
                    badge = "ChicagoRedStars1.png";
                } else if (resultSet.getString("home").equals("Portland Thorns FC")) {
                    badge = "Portland1.png";
                } else if (resultSet.getString("home").equals("Orlando Pride")) {
                    badge = "OrlandoPride2.png";
                } else if (resultSet.getString("home").equals("Washington Spirit")) {
                    badge = "spirit.png";
                } else if (resultSet.getString("home").equals("North Carolina Courage")) {
                    badge = "North_Carolina_Courage1.png";
                } else if (resultSet.getString("home").equals("Seattle Reign FC")) {
                    badge = "SeattleReignFC2.png";
                } else if (resultSet.getString("home").equals("Sky Blue FC")) {
                    badge = "Sky_Blue_FC1.png";
                } else if (resultSet.getString("home").equals("FC Kansas City")) {
                    badge = "kansasCity2.png";
                } else if (resultSet.getString("home").equals("Boston Breakers")) {
                    badge = "Boston_Breakers1.png";
                }
                homebadgeList.add(badge);
                timeList.add(resultSet.getString("time"));
                awayList.add(resultSet.getString("away"));
                if (resultSet.getString("away").equals("Houston Dash")) {
                    badge = "Houston_Dash2.png";
                } else if (resultSet.getString("away").equals("Chicago Red Stars")) {
                    badge = "ChicagoRedStars1.png";
                } else if (resultSet.getString("away").equals("Portland Thorns FC")) {
                    badge = "Portland1.png";
                } else if (resultSet.getString("away").equals("Orlando Pride")) {
                    badge = "OrlandoPride2.png";
                } else if (resultSet.getString("away").equals("Washington Spirit")) {
                    badge = "spirit.png";
                } else if (resultSet.getString("away").equals("North Carolina Courage")) {
                    badge = "North_Carolina_Courage1.png";
                } else if (resultSet.getString("away").equals("Seattle Reign FC")) {
                    badge = "SeattleReignFC2.png";
                } else if (resultSet.getString("away").equals("Sky Blue FC")) {
                    badge = "Sky_Blue_FC1.png";
                } else if (resultSet.getString("away").equals("FC Kansas City")) {
                    badge = "kansasCity2.png";
                } else if (resultSet.getString("away").equals("Boston Breakers")) {
                    badge = "Boston_Breakers1.png";
                }
                awaybadgeList.add(badge);
                

            }

            resultSet.close();

            s.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        request.setAttribute("data", dataList);
        request.setAttribute("date", dateList);
        request.setAttribute("home", homeList);
        request.setAttribute("homebadge", homebadgeList);
        request.setAttribute("time", timeList);
        request.setAttribute("away", awayList);
        request.setAttribute("awaybadge", awaybadgeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("fixtures.jsp");

        if (dispatcher != null) {

            dispatcher.forward(request, response);

        }   
    }


}
