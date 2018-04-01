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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
    private String value;
    private String captain;
    private String viceCaptain;
    private int totalScore;
    private int totalUsers;
    private int totalPlayer;

    private String goalkeeperUnion;
    private String defenceUnion;
    private String midfielderUnion;
    private String forwardUnion;

    public rosterPlayer(String email) throws SQLException {
        totalScore = 0;
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
                goalkeeper = resultSet.getString("gk");
                if (goalkeeper.contains("'")) {

                    goalkeeper = goalkeeper.split("'")[0] + "\\'" + goalkeeper.split("'")[1];
                }
                defence = resultSet.getString("def");
                if (defence.contains("'")) {

                    defence = defence.split("'")[0] + "\\'" + defence.split("'")[1];
                }
                midfielder = resultSet.getString("mid");
                if (midfielder.contains("'")) {

                    midfielder = midfielder.split("'")[0] + "\\'" + midfielder.split("'")[1];
                }
                forward = resultSet.getString("fwd");
                if (forward.contains("'")) {

                    forward = forward.split("'")[0] + "\\'" + forward.split("'")[1];
                }
                bench = resultSet.getString("bench");
                if (bench.contains("'")) {

                    bench = bench.split("'")[0] + "\\'" + bench.split("'")[1];
                }
                formation = resultSet.getString("formation");
                value = resultSet.getString("value");
                captain = resultSet.getString("captain");
                viceCaptain = resultSet.getString("viceCaptain");
            }
            resultSet.close();

            s.close();
            String[] formationArray = formation.split("-");
            defenceNo = formationArray[0];
            midfielderNo = formationArray[1];
            forwardNo = formationArray[2];
            connection.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        }

        getScore();
        TotalUsers();
        TotalPlayers();
    }

    public String getCaptain() {
        return captain;
    }

    public String getVicecaptain() {
        return viceCaptain;
    }

    public void getScore() {
        try {
            String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
            String dbName = "fantasy";
            String userId = "root";
            String password = "";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");

            String strThatDay = "2017/04/10";
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
            Date d = null;
            try {
                d = formatter.parse(strThatDay);//catch exception
            } catch (ParseException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            Calendar thatDay = Calendar.getInstance();
            thatDay.setTime(d);
            Calendar today = Calendar.getInstance();
            today.getTime();
            long diff = today.getTimeInMillis() - thatDay.getTimeInMillis();
            long days = diff / (24 * 60 * 60 * 1000);
            int weeks = ((int) days) / 7;

            if (weeks == 10) {
                weeks = 9;
            } else if (weeks == 16 || weeks == 17) {
                weeks = 15;
            } else if (weeks == 23 || weeks == 24) {
                weeks = 21;
            } else if (weeks > 10) {
                weeks = weeks - 1;
            }
            if (weeks >= 22) {
                weeks = 22;
            }
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            String gk = goalkeeper.split("-")[0];
            String[] def = defence.split(",");
            String[] mid = midfielder.split(",");
            String[] fwd = forward.split(",");
            String sql = "";
            if (gk.contains("'")) {
                String[] nameSTR = gk.split("'");
                sql = "SELECT GW" + weeks + " FROM players where name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
            } else {
                sql = "SELECT GW" + weeks + " FROM players where name='" + gk + "'";

            }
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();

            if (resultSet.next()) {
                totalScore = totalScore + Integer.parseInt(resultSet.getString("GW" + weeks));
            }

            for (int i = 0; i < def.length; i++) {
                String defStr = def[i].split("-")[0];
                sql = "";
                if (defStr.contains("'")) {
                    String[] nameSTR = defStr.split("'");
                    sql = "SELECT GW" + weeks + " FROM players where name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT GW" + weeks + " FROM players where name='" + defStr + "'";

                }

                s.executeQuery(sql);

                resultSet = s.getResultSet();

                if (resultSet.next()) {
                    totalScore = totalScore + Integer.parseInt(resultSet.getString("GW" + weeks));
                }
            }

            for (int i = 0; i < mid.length; i++) {
                String midSTR = mid[i].split("-")[0];
                sql = "";
                if (midSTR.contains("'")) {
                    String[] nameSTR = midSTR.split("'");
                    sql = "SELECT GW" + weeks + " FROM players where name='" + nameSTR[0] + "\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT GW" + weeks + " FROM players where name='" + midSTR + "'";

                }
                s.executeQuery(sql);

                resultSet = s.getResultSet();

                if (resultSet.next()) {
                    if (resultSet.getString("GW" + weeks).equals("-")) {
                        totalScore = totalScore + 0;
                    } else {
                        totalScore = totalScore + Integer.parseInt(resultSet.getString("GW" + weeks));
                    }

                }
            }

            for (int i = 0; i < fwd.length; i++) {
                String fwdSTR = fwd[i].split("-")[0];
                sql = "";
                if (fwdSTR.contains("'")) {
                    String[] nameSTR = fwdSTR.split("'");
                    sql = "SELECT GW" + weeks + " FROM players where name='" + nameSTR[0] + "\\'" + nameSTR[1] + "'";
                } else {
                    sql = "SELECT GW" + weeks + " FROM players where name='" + fwdSTR + "'";

                }

                s.executeQuery(sql);

                resultSet = s.getResultSet();

                if (resultSet.next()) {
                    totalScore = totalScore + Integer.parseInt(resultSet.getString("GW" + weeks));
                }

            }

        } catch (SQLException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void TotalUsers() {
        try {
            String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
            String dbName = "fantasy";
            String userId = "root";
            String password = "";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection(connectionUrl, userId, password);

            String sql = "SELECT COUNT(*) AS total FROM user";
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            if (resultSet.next()) {
                totalUsers = resultSet.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void TotalPlayers() {
        try {
            String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
            String dbName = "fantasy";
            String userId = "root";
            String password = "";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection(connectionUrl, userId, password);

            String sql = "SELECT COUNT(*) AS total FROM players";
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            if (resultSet.next()) {
                totalPlayer = resultSet.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public String getTotalPlayers() {
        return totalPlayer + "";
    }

    public String getTotalUsers() {
        return totalUsers + "";
    }

    public String getTotalScore() {
        return totalScore + "";
    }

    public String getGoalkeeper() {
        return goalkeeper;
    }

    public String getDefence() {
        return defence;
    }

    public String getMidfielder() {
        return midfielder;
    }

    public String getForward() {
        return forward;
    }

    public String getDefenceNO() {
        return defenceNo;
    }

    public String getMidfielderNO() {
        return midfielderNo;
    }

    public String getForwardNO() {
        return forwardNo;
    }

    public String getbench() {
        return bench;
    }

    public String getValue() {
        return value;
    }

    public void unionPlayers(String gk, String def, String mid, String fwd, String ben) {
        String[] benPlayers = ben.split(",");
        goalkeeperUnion = "";
        defenceUnion = "";
        midfielderUnion = "";
        forwardUnion = "";

        for (int i = 0; i < benPlayers.length; i++) {
            String pos = benPlayers[i].split("-")[2];
            if (pos.equals("Goalkeeper")) {
                gk = gk + "," + benPlayers[i];
            } else if (pos.equals("Defence")) {
                def = def + benPlayers[i] + ",";
            } else if (pos.equals("Midfielder")) {
                mid = mid + benPlayers[i] + ",";
            } else if (pos.equals("Forward")) {
                fwd = fwd + benPlayers[i] + ",";
            }
        }
        goalkeeperUnion = gk;
        defenceUnion = def;
        midfielderUnion = mid;
        forwardUnion = fwd;

    }

    public String getGoalkeeperUnion() {
        return goalkeeperUnion;
    }

    public String getDefenceUnion() {
        return defenceUnion;
    }

    public String getMidfielderUnion() {
        return midfielderUnion;
    }

    public String getForwardUnion() {
        return forwardUnion;
    }
}
