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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Mitsos
 */
public class goalkeepers {

    private List nameList = new ArrayList();
    private List teamList = new ArrayList();
    private List priceList = new ArrayList();
    private List pointList = new ArrayList();
    private List gkList=new ArrayList();

    public void goalkeepers() {

        System.out.println("goalkeepers");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String[][] playersGK = new String[22][5];

        String badge = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);

            int i = 0;
            //Select the data from the database
            String sql = "SELECT * FROM players where position='Goalkeeper'";
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();

            while (resultSet.next()) {

                playersGK[i][0] = resultSet.getString("name");
                if (resultSet.getString("team").equals("Houston Dash")) {
                    playersGK[i][1] = "HOU";
                    playersGK[i][2] = "dashgk.png";

                } else if (resultSet.getString("team").equals("Chicago Red Stars")) {
                    playersGK[i][1] = "CHI";
                    playersGK[i][2] = "chicagogk.png";
                } else if (resultSet.getString("team").equals("Portland Thorns FC")) {
                    playersGK[i][1] = "POR";
                    playersGK[i][2] = "thornsgk.png";
                } else if (resultSet.getString("team").equals("Orlando Pride")) {
                    playersGK[i][1] = "ORL";
                    playersGK[i][2] = "pridegk.png";
                } else if (resultSet.getString("team").equals("Washington Spirit")) {
                    playersGK[i][1] = "WAS";
                    playersGK[i][2] = "spiritgk.png";
                } else if (resultSet.getString("team").equals("North Carolina Courage")) {
                    playersGK[i][1] = "NC";
                    playersGK[i][2] = "couragegk.png";
                } else if (resultSet.getString("team").equals("Seattle Reign FC")) {
                    playersGK[i][1] = "SEA";
                    playersGK[i][2] = "reigngk.png";
                } else if (resultSet.getString("team").equals("Sky Blue FC")) {
                    playersGK[i][1] = "NJ";
                    playersGK[i][2] = "skybluegk.png";
                } else if (resultSet.getString("team").equals("FC Kansas City")) {
                    playersGK[i][1] = "KC";
                    playersGK[i][2] = "kansasgk.png";
                } else if (resultSet.getString("team").equals("Boston Breakers")) {
                    playersGK[i][1] = "BOS";
                    playersGK[i][2] = "breakersgk.png";
                }
                String price = resultSet.getString("price");
                if (price == null) {
                    price = "0.0";
                }

                playersGK[i][3] = price;

                playersGK[i][4] = resultSet.getString("totalScore");

                i++;

            }
            sort(playersGK);

           

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
    
    public List getgkList() {
        return gkList;
    }

    public void sort(String[][] playersGK) {
        String tmpname;
        String tmpgk;
        String tmpteam;
        String tmpprice;
        String tmpscore;

        for (int i = 0; i < 22; i++) {
            for (int j = i + 1; j < 22; j++) {
                if (Integer.parseInt(playersGK[i][4]) < Integer.parseInt(playersGK[j][4])) {
                    tmpname=playersGK[i][0];
                    tmpgk=playersGK[i][1];
                    tmpteam=playersGK[i][2];
                    tmpprice=playersGK[i][3];
                    tmpscore=playersGK[i][4];
                    playersGK[i][0]=playersGK[j][0];
                    playersGK[i][1]=playersGK[j][1];
                    playersGK[i][2]=playersGK[j][2];
                    playersGK[i][3]=playersGK[j][3];
                    playersGK[i][4]=playersGK[j][4];
                    playersGK[j][0]=tmpname;    
                    playersGK[j][1]=tmpgk;
                    playersGK[j][2]=tmpteam;
                    playersGK[j][3]=tmpprice;
                    playersGK[j][4]=tmpscore;
                }
            }
        }
        
            nameList.add(playersGK[0][0]);
            nameList.add(playersGK[1][0]);
            gkList.add(playersGK[0][2]);
            gkList.add(playersGK[1][2]);
            teamList.add(playersGK[0][1]);
            teamList.add(playersGK[1][1]);
            priceList.add(playersGK[0][3]);
            priceList.add(playersGK[1][3]);
            pointList.add(playersGK[0][4]);
            pointList.add(playersGK[1][4]);
        
    }

}
