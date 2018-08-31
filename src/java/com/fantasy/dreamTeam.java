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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mitsos
 */
public class dreamTeam {

    private List<String> nameList = new ArrayList();
    private List<String> teamList = new ArrayList();
    private List<String> scoreList = new ArrayList();
    private List<String> posList = new ArrayList();

    private String[] nameArray = new String[14];
    private String[] teamArray = new String[14];
    private String[] pointsArray = new String[14];
    private String[] posArray = new String[14];
    private int totalScore=0;

    public dreamTeam(int fixNo) {
        findPlayers(fixNo, "Goalkeeper");
        findMax(1, 0);
        nameList = new ArrayList<>();
        teamList = new ArrayList<>();
        posList = new ArrayList<>();
        scoreList = new ArrayList<>();
        findPlayers(fixNo, "Defender");
        findMax(5, 1);
        nameList = new ArrayList<>();
        teamList = new ArrayList<>();
        posList = new ArrayList<>();
        scoreList = new ArrayList<>();
        findPlayers(fixNo, "Midfielder");
        findMax(5, 6);
        nameList = new ArrayList<>();
        teamList = new ArrayList<>();
        posList = new ArrayList<>();
        scoreList = new ArrayList<>();
        findPlayers(fixNo, "Forward");
        findMax(3, 11);
        nameList = new ArrayList<>();
        teamList = new ArrayList<>();
        posList = new ArrayList<>();
        scoreList = new ArrayList<>();
        createDream();
        for (int i = 0; i < nameList.size(); i++) {
            totalScore=totalScore+Integer.parseInt(scoreList.get(i).toString());
            System.out.println(nameList.get(i).toString() + " - " + teamList.get(i).toString() + " - " + posList.get(i).toString() + " - " + scoreList.get(i).toString());
        }

    }

    public void findPlayers(int fixNo, String posSTR) {
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

            String sql = "";

            sql = "SELECT GW" + fixNo + ",name,team FROM players where position='" + posSTR + "'";
            System.out.println(sql);
            statement = connection.createStatement();
            statement.executeQuery(sql);

            resultSet = statement.getResultSet();

            while (resultSet.next()) {
                nameList.add(resultSet.getString("name"));
                teamList.add(resultSet.getString("team"));
                posList.add(posSTR);
                scoreList.add(resultSet.getString("GW" + fixNo));
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(topPerformances.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(topPerformances.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void findMax(int no, int posStart) {
        int k = 1;

        while (k <= no) {

            int max = Integer.parseInt(scoreList.get(0).toString());
            int pos = 0;

            for (int i = 1; i < scoreList.size(); i++) {
                if (scoreList.get(i).toString().equals("-") || scoreList.get(i).toString().equals("")) {
                    continue;
                }
                if (Integer.parseInt(scoreList.get(i).toString()) > max) {

                    max = Integer.parseInt(scoreList.get(i).toString());
                    pos = i;
                }
            }
            teamArray[posStart] = teamList.get(pos);
            teamList.remove(pos);
            nameArray[posStart] = nameList.get(pos);
            nameList.remove(pos);
            pointsArray[posStart] = scoreList.get(pos);
            scoreList.remove(pos);
            posArray[posStart] = posList.get(pos);
            posList.remove(pos);
            k++;
            posStart++;
        }
    }

    public void createDream() {
        if (nameArray[0].contains("'")) {
            String[] nameSTR = nameArray[0].split("'");
            nameArray[0] = nameSTR[0] + "\\'" + nameSTR[1];
        }
        teamList.add(teamArray[0]);
        nameList.add(nameArray[0]);
        posList.add(posArray[0]);
        scoreList.add(pointsArray[0]);
        pointsArray[0] = "";
        for (int i = 1; i <= 3; i++) {
            if (nameArray[i].contains("'")) {
                String[] nameSTR = nameArray[i].split("'");
                nameArray[i] = nameSTR[0] + "\\'" + nameSTR[1];
            }
            teamList.add(teamArray[i]);
            nameList.add(nameArray[i]);
            posList.add(posArray[i]);
            scoreList.add(pointsArray[i]);
            pointsArray[i] = "";
        }
        for (int i = 6; i <= 8; i++) {
            if (nameArray[i].contains("'")) {
                String[] nameSTR = nameArray[i].split("'");
                nameArray[i] = nameSTR[0] + "\\'" + nameSTR[1];
            }
            teamList.add(teamArray[i]);
            nameList.add(nameArray[i]);
            posList.add(posArray[i]);
            scoreList.add(pointsArray[i]);
            pointsArray[i] = "";
        }
        if (nameArray[11].contains("'")) {
            String[] nameSTR = nameArray[11].split("'");
            nameArray[11] = nameSTR[0] + "\\'" + nameSTR[1];
        }
        teamList.add(teamArray[11]);
        nameList.add(nameArray[11]);
        posList.add(posArray[11]);
        scoreList.add(pointsArray[11]);
        pointsArray[11] = "";

        findMaxRest();
    }

    public void findMaxRest() {
        int k = 1;

        while (k <= 3) {

            int max = 0;
            int pos = 0;

            for (int i = 0; i < pointsArray.length; i++) {
                if (pointsArray[i].equals("-") || pointsArray[i].equals("")) {
                    continue;
                }
                if (Integer.parseInt(pointsArray[i]) > max) {

                    max = Integer.parseInt(pointsArray[i]);
                    pos = i;
                }
            }
            if (nameArray[pos].contains("'")) {
                String[] nameSTR = nameArray[pos].split("'");
                nameArray[pos] = nameSTR[0] + "\\'" + nameSTR[1];
            }
            teamList.add(teamArray[pos]);
            nameList.add(nameArray[pos]);
            posList.add(posArray[pos]);
            scoreList.add(pointsArray[pos]);
            pointsArray[pos] = "";
            k++;
        }
    }

    
    public List getName(){
        return nameList;
    }
    
    public List getTeam(){
        return teamList;
    }
    
    public List getPos(){
        return posList;
    }
    
    public List getScore(){
        return scoreList;
    }
    
    public String gettotalScore(){
        return totalScore+"";
    }
}