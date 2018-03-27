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
        String email = session.getAttribute("email").toString();

        String roster = request.getParameter("roster");
        String team = request.getParameter("team");
        boolean exist = teamExist(team);
        session.setAttribute("teamName", team);
        String value = session.getAttribute("value").toString();
        String[] playersArray = roster.split(",");

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
            dbCredentials existTeam = new dbCredentials();
            if (!existTeam.teamExist(email)) {
                String sql = " insert into teams (email, nameTeam, gk,def,mid,fwd,bench,formation,value,captain,viceCaptain)"
                        + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
                PreparedStatement preparedStmt = connection.prepareStatement(sql);
                preparedStmt.setString(1, email);
                preparedStmt.setString(2, team);
                preparedStmt.setString(3, playersArray[0] + "-Goalkeeper");
                String bench = playersArray[1] + "-Goalkeeper,";
                String defence = "";
                for (int i = 2; i <= 5; i++) {
                    defence = defence + playersArray[i] + "-Defence,";
                }
                preparedStmt.setString(4, defence);
                bench = bench + playersArray[6] + "-Defence,";
                String midfielder = "";
                for (int i = 7; i <= 10; i++) {
                    midfielder = midfielder + playersArray[i] + "-Midfielder,";
                }

                preparedStmt.setString(5, midfielder);
                bench = bench + playersArray[11] + "-Midfielder,";
                String forward = "";
                for (int i = 12; i <= 13; i++) {
                    forward = forward + playersArray[i] + "-Forward,";
                }

                preparedStmt.setString(6, forward);
                bench = bench + playersArray[14] + "-Forward,";
                preparedStmt.setString(7, bench);
                preparedStmt.setString(8, "4-4-2");
                preparedStmt.setString(9, value);
                preparedStmt.setString(10, "");
                preparedStmt.setString(11, "");

                // execute the preparedstatement
                preparedStmt.execute();

                preparedStmt.close();
            }
            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        }

        RequestDispatcher rd = request.getRequestDispatcher("myTeam.jsp");
        rd.forward(request, response);

    }

    public boolean teamExist(String team) {
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        boolean exist = false;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            String sql = "SELECT * FROM teams where nameTeam='" + team + "'";
            Statement s = connection.createStatement();

            s.executeQuery(sql);

            resultSet = s.getResultSet();

            if (resultSet.next()) {
                exist = true;
            } else {
                exist = false;
            }

            resultSet.close();

            s.close();
            connection.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        return exist;
    }

}
