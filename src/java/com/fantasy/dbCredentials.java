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
    
    boolean emailExist(String email){
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
    
}
