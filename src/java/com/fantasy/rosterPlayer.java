/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mitsos
 */
public class rosterPlayer {

    private String goalkeeper;
    private String defence;
    private String midfielder;
    private String forward;
    private String bench;
    private String formation;
    private String defenceNo;
    private String midfielderNo;
    private String forwardNo;

    public  rosterPlayer(String email) throws SQLException {
        System.out.println("rosterPlayers");
        try {
            String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
            String dbName = "fantasy";
            String userId = "root";
            String password = "";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            String sql = "SELECT * FROM teams where email='" + email + "'";
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();

            if (resultSet.next()) {
                goalkeeper = resultSet.getString("gk");
                defence = resultSet.getString("def");
                midfielder = resultSet.getString("mid");
                forward = resultSet.getString("fwd");
                bench = resultSet.getString("bench");
                formation = resultSet.getString("formation");

            }
            resultSet.close();

            s.close();
            String[] formationArray=formation.split("-");
            defenceNo=formationArray[0];
            midfielderNo=formationArray[1];
            forwardNo=formationArray[2];

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getGoalkeeper(){
        return goalkeeper;
    }
    
    public String getDefence(){
        return defence;
    }
    
    public String getMidfielder(){
        return midfielder;
    }
    
    public String getForward(){
        return forward;
    }
    
    public String getDefenceNO(){
        return defenceNo;
    }
    
    public String getMidfielderNO(){
        return midfielderNo;
    }
    
    public String getForwardNO(){
        return forwardNo;
    }
    
    public String getbench(){
        return bench;
    }
}
