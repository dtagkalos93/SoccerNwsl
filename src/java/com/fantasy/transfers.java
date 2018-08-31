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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
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
 * @author Mitsos
 */
public class transfers extends HttpServlet {

    private String gk="";
    private String def="";
    private String mid="";
    private String fwd="";
    private String ben="";
    private String formation;
    private String captain;
    private String vcaptain;

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
        HttpSession session = request.getSession(false);
        String email = session.getAttribute("email").toString();
        String gkTeam = request.getParameter("gk");
        String defTeam = request.getParameter("def");
        String midTeam = request.getParameter("mid");
        String fwdTeam = request.getParameter("fwd");
        String remain = request.getParameter("remain");
        System.out.println("!!!"+remain);
        double value = (100.0 - Double.parseDouble(remain)) ;
        DecimalFormat df = new DecimalFormat("#####.##");
        DecimalFormatSymbols sym = DecimalFormatSymbols.getInstance();
        sym.setDecimalSeparator('.');
        df.setDecimalFormatSymbols(sym);
        
        getFormation(email);
        setTeam(gkTeam, defTeam, midTeam, fwdTeam);
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
            PreparedStatement preparedStmt = connection.prepareStatement(
                    "UPDATE teams SET gk = ?, def = ?, mid=?,fwd=?,bench=?,formation=?,captain=?,viceCaptain=?,value=? WHERE email = ? ");
            // execute the preparedstatement
            preparedStmt.setString(1, gk);
            preparedStmt.setString(2, def);
            preparedStmt.setString(3, mid);
            preparedStmt.setString(4, fwd);
            preparedStmt.setString(5, ben);
            preparedStmt.setString(6, formation);
            preparedStmt.setString(7, captain);
            preparedStmt.setString(8, vcaptain);
            preparedStmt.setString(9, df.format(value)+""); 

            preparedStmt.setString(10, email);

            preparedStmt.execute();

            preparedStmt.close();
            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        }
        RequestDispatcher rd = request.getRequestDispatcher("myTeam.jsp");
        rd.forward(request, response);
    }

    public void getFormation(String email) {
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
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            if (resultSet.next()) {

                formation = resultSet.getString("formation");
                captain = resultSet.getString("captain");
                vcaptain = resultSet.getString("viceCaptain");
            }
            resultSet.close();
            s.close();
            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(transfers.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(transfers.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void setTeam(String gkTeam, String defTeam, String midTeam, String fwdTeam) {
        String[] gkArray = gkTeam.split(",");
        String[] defArray = defTeam.split(",");
        String[] midArray = midTeam.split(",");
        String[] fwdArray = fwdTeam.split(",");
        String[] formationArray = formation.split("-");
        String[] captainArray = captain.split("-");
        String[] vcaptainArray = vcaptain.split("-");

        gk = gkArray[0];
        if (gk.contains("'")) {

            gk = gk.split("'")[0] + "\\'" + gk.split("'")[1];
        }
        ben = gkArray[1] + ",";
        if (ben.contains("'")) {

            ben = ben.split("'")[0] + "\\'" + ben.split("'")[1];
        }
        for (int i = 0; i < Integer.parseInt(formationArray[0]); i++) {
            def = def + defArray[i] + ",";
            if (def.contains("'")) {

                def = def.split("'")[0] + "\\'" + def.split("'")[1];
            }
        }
        for (int i = Integer.parseInt(formationArray[0]); i <5 ; i++) {
            ben = ben + defArray[i] + ",";
            if (ben.contains("'")) {

                ben = ben.split("'")[0] + "\\'" + ben.split("'")[1];
            }
        }
        
        for (int i = 0; i < Integer.parseInt(formationArray[1]); i++) {
            mid = mid + midArray[i] + ",";
            if (mid.contains("'")) {

                mid = mid.split("'")[0] + "\\'" + mid.split("'")[1];
            }
        }
        for (int i = Integer.parseInt(formationArray[1]); i <5 ; i++) {
            ben = ben + midArray[i] + ",";
            if (ben.contains("'")) {

                ben = ben.split("'")[0] + "\\'" + ben.split("'")[1];
            }
        }
        
        for (int i = 0; i < Integer.parseInt(formationArray[2]); i++) {
            fwd = fwd + fwdArray[i] + ",";
            if (fwd.contains("'")) {

                fwd = fwd.split("'")[0] + "\\'" + fwd.split("'")[1];
            }
        }
        for (int i = Integer.parseInt(formationArray[2]); i <3 ; i++) {
            ben = ben + fwdArray[i] + ",";
            if (ben.contains("'")) {

                ben = ben.split("'")[0] + "\\'" + ben.split("'")[1];
            }
        }
       if(!gk.contains(captainArray[0]) && !def.contains(captainArray[0]) && !mid.contains(captainArray[0]) && !fwd.contains(captainArray[0]) &&!ben.contains(captainArray[0]))
           captain="";
       
       if(!gk.contains(vcaptainArray[0]) && !def.contains(vcaptainArray[0]) && !mid.contains(vcaptainArray[0]) && !fwd.contains(vcaptainArray[0]) &&!ben.contains(vcaptainArray[0]))
           vcaptain="";
    }
    
    
    

}