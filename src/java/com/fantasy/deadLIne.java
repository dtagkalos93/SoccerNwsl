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
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Mitsos-Laptop
 */
public class deadLIne {

    private boolean pointsStatus;
    private String deadline;
    private String fix;
    private String gameweek;

    public deadLIne() {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "";
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            sql = "SELECT * FROM deadlines";
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();

            while (resultSet.next()) {
                String date =resultSet.getString("date");
                if (!new SimpleDateFormat("MM/dd/yyyy").parse(date).before(new Date())) {
                    if(resultSet.getString("fixture").equals("Gameweek 1")){
                        pointsStatus=false;
                        
                    }
                    fix=resultSet.getString("fixture")+" Deadline: ";
                    gameweek=resultSet.getString("fixture");
                    deadline= resultSet.getString("date") + " " + resultSet.getString("time");
                    break;
                }
            }
            resultSet.close();

            s.close();
            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

    }

    
    public String getdeadline(){
        return deadline;
    }
    
    public String getfix(){
        return fix;
    }
    
     public String getGameweek(){
        return gameweek;
    }
    
    public boolean getpointsStatus(){
        return pointsStatus;
    }
}
