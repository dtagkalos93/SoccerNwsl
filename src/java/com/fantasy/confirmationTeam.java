package com.fantasy;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mitsos-Laptop
 */
public class confirmationTeam extends HttpServlet {



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
        HttpSession session = request.getSession(true);
        String email=session.getAttribute("email").toString();
        String roster=request.getParameter("roster");
        String team=request.getParameter("team");
        session.setAttribute("teamName", team);
        String[] playersArray = roster.split(",");
        String[] playersTeam=new String[playersArray.length];
        for(int i =0;i<playersTeam.length;i++){
            playersTeam[i]=playersArray[i].split("-")[0];
        }
        
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
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            
                
            String sql = " insert into teams (email, nameTeam, gk1, gk2, def1,def2,def3,def4,def5,mid1,mid2,mid3,mid4,mid5,fwd1,fwd2,fwd3)"
        + " values (?, ?, ?, ?, ?,?, ?, ?, ?, ?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStmt = connection.prepareStatement(sql);
            preparedStmt.setString (1, email);
            preparedStmt.setString (2, team);
            int k=3;
            for(int i=0;i<playersTeam.length;i++){
                preparedStmt.setString (k, playersTeam[i]);
                k++;
            }

      // execute the preparedstatement
      preparedStmt.execute();

            

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        System.out.println("Email "+ email);
        System.out.println("team "+ team);
        System.out.println("roster "+ roster);
        
        RequestDispatcher rd = request.getRequestDispatcher("myTeam.jsp");
        rd.forward(request, response);

    }

   

}
