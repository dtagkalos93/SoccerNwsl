/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mitsos
 */
public class players {

    private List nameList;
    private List teamList;
    private List priceList;
    private List pointList;
    private List jerseyList;
    private List injuryList;
    

    public void players(String pos, String category) {

        nameList = new ArrayList();
        teamList = new ArrayList();
        priceList = new ArrayList();
        pointList = new ArrayList();
        jerseyList = new ArrayList();
        injuryList = new ArrayList ();
        System.out.println("players");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        int total;

        String badge = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);

            int i = 1;
            //Select the data from the database
            String sql = "SELECT * FROM players where position='" + pos + "'";
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();

            while (resultSet.next()) {
                nameList.add(resultSet.getString("name"));
                injuryList.add(resultSet.getString("injury"));
                if (resultSet.getString("team").equals("Houston Dash")) {
                    teamList.add("HOU");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("houstongk.png");
                    } else {
                        jerseyList.add("dash1.png");
                    }

                } else if (resultSet.getString("team").equals("Chicago Red Stars")) {
                    teamList.add("CHI");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("chicagogk.png");
                    } else {
                        jerseyList.add("stars1.png");
                    }

                } else if (resultSet.getString("team").equals("Portland Thorns FC")) {
                    teamList.add("POR");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("thornsgk.png");
                    } else {
                        jerseyList.add("thorns1.png");
                    }

                } else if (resultSet.getString("team").equals("Orlando Pride")) {
                    teamList.add("ORL");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("orlandogk.png");
                    } else {
                        jerseyList.add("pride1.png");
                    }

                } else if (resultSet.getString("team").equals("Washington Spirit")) {
                    teamList.add("WAS");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("spiritgk.png");
                    } else {
                        jerseyList.add("spirit1.png");
                    }

                } else if (resultSet.getString("team").equals("North Carolina Courage")) {
                    teamList.add("NC");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("couragegk.png");
                    } else {
                        jerseyList.add("courage.png");
                    }

                } else if (resultSet.getString("team").equals("Seattle Reign FC")) {
                    teamList.add("SEA");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("seattlegk.png");
                    } else {
                        jerseyList.add("reign1.png");
                    }

                } else if (resultSet.getString("team").equals("Sky Blue FC")) {
                    teamList.add("NJ");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("skybluegk.png");
                    } else {
                        jerseyList.add("skyblue1.png");
                    }

                } else if (resultSet.getString("team").equals("FC Kansas City")) {
                    teamList.add("KC");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("kansasgk.png");
                    } else {
                        jerseyList.add("kansas1.png");
                    }

                } else if (resultSet.getString("team").equals("Boston Breakers")) {
                    teamList.add("BOS");
                    if (pos.equals("Goalkeeper")) {
                        jerseyList.add("breakersgk.png");
                    } else {
                        jerseyList.add("breakers1.png");
                    }

                }
                String price = resultSet.getString("price");
                if (price == null) {
                    price = "0.0";
                }
                priceList.add(price);
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

                    pointList.add(total + "");

                } else {
                    String point=resultSet.getString(category);
                    
                    if (point.equals("")|| point.equals("-")){
                        point="0";
                        pointList.add(point);
                    }
                    else{
                        pointList.add(point);
                    }
                        

                    
                }
                
                
                i++;

            }

            resultSet.close();

            s.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

    }

    public List getteamList() {
        return teamList;
    }

    public List getpriceList() {
        return priceList;
    }

    public List getnameList() {
        return nameList;
    }

    public List getpointList() {
        return pointList;
    }

    public List getjerseyList() {
        return jerseyList;
    }
    public List getinjuryList() {
        return injuryList;
    }

}
