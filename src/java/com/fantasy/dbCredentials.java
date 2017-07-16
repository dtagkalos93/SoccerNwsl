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

/**
 *
 * @author Mitsos
 */
public class dbCredentials {
    
    public boolean emailExist(String email){
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        boolean exist=false;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
                String sql = "SELECT * FROM user where email='" + email + "'";
            Statement s = connection.createStatement();

            s.executeQuery(sql);

            resultSet = s.getResultSet();
            
            if( resultSet.next()){
                exist= true;
            }
            else{
                exist= false;
            }
            
                        resultSet.close();

            s.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        return exist;
    }
    
    public void addUser(String firstname,String lastname,String email,String pwd,String gender,String country,String team){
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

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            Statement stmt = connection.createStatement();
             String query = "INSERT into user(firstname,lastname,email, password,gender,country,team) values('"+firstname+"','"+lastname+"','"+email+"','"+pwd+"','"+gender+"','"+country+"','"+team+"')";
             System.out.println(query);
           int records = stmt.executeUpdate(query);

  



            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
    }
}
