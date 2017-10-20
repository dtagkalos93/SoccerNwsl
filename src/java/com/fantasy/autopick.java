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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos-Laptop
 */
public class autopick extends HttpServlet {
    private List<String> list=new ArrayList<>();
    private List<String> nameList = new ArrayList();
    private List<String> jerseyList = new ArrayList();
    private List<String> teamList = new ArrayList();


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
        System.out.println("AUTOPIIIIIIICKKKK");
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
            goalkeepers(connection);

            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            jerseyList = new ArrayList<>();
            

            defenders(connection);

            
            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            jerseyList = new ArrayList<>();

            midfielders(connection);
           
            nameList = new ArrayList<>();
            teamList = new ArrayList<>();
            jerseyList = new ArrayList<>();

            forwards(connection);

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        
        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);
    }
    
    
    public void goalkeepers(Connection connection) throws SQLException {
        String sql = "SELECT * FROM players where position='Goalkeeper'";
        ResultSet resultSet = null;
        String badge = null;
        System.out.println("I am here!!! "+ sql);
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
            } else if (team.equals("FC Kansas City")) {
                teamList.add("KC");
                jerseyList.add("kansasgk.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakersgk.png");
            }


            i++;
        }
        resultSet.close();
        s.close();
        int randomNum;
        i=1;
        while(i<=2){
            randomNum=ThreadLocalRandom.current().nextInt(0, nameList.size());
            System.out.println("Random Number "+ randomNum + " " + nameList.get(randomNum) + " " + jerseyList.get(randomNum) + " " + teamList.get(randomNum));
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
            System.out.println(i);
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
            } else if (team.equals("FC Kansas City")) {
                teamList.add("KC");
                jerseyList.add("kansas1.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakers1.png");
            }


            i++;
        }
        resultSet.close();
        s.close();
        int randomNum;
        for(int j=1;j<=5;j++){
            randomNum=ThreadLocalRandom.current().nextInt(0, nameList.size());
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
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
            } else if (team.equals("FC Kansas City")) {
                teamList.add("KC");
                jerseyList.add("kansas1.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakers1.png");
            }
 

            i++;
        }
        resultSet.close();
        s.close();
        int randomNum;
        for(int j=1;j<=5;j++){
            randomNum=ThreadLocalRandom.current().nextInt(0, nameList.size());
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
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
            } else if (team.equals("FC Kansas City")) {
                teamList.add("KC");
                jerseyList.add("kansas1.png");
            } else if (team.equals("Boston Breakers")) {
                teamList.add("BOS");
                jerseyList.add("breakers1.png");
            }
   

            i++;
        }
        resultSet.close();
        s.close();
       int randomNum;
        for(int j=1;j<=3;j++){
            randomNum=ThreadLocalRandom.current().nextInt(0, nameList.size());
            list.add(nameList.get(randomNum));
            nameList.remove(randomNum);
            list.add(jerseyList.get(randomNum));
            jerseyList.remove(randomNum);
            list.add(teamList.get(randomNum));
            teamList.remove(randomNum);
        }

    }

}
