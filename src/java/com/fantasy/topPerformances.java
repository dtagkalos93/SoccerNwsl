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
public class topPerformances {
     private List<String> nameList = new ArrayList();
    private List<String> scoreList = new ArrayList();
    private List<String> teamList = new ArrayList();
    private List<String> posList = new ArrayList();
     private List<String> topPerformances = new ArrayList();
     public topPerformances() {
        deadLIne line = new deadLIne();
        String fix = line.getGameweek().split(" ")[1];
        int fixNo = Integer.parseInt(fix);
         bestPlayer(fixNo);
     }
     public void bestPlayer(int fixNo) {
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
            for (int i = 1; i < fixNo; i++) {
                
                sql = "SELECT GW" + i + ",name,team,position FROM players ";
                statement = connection.createStatement();
                statement.executeQuery(sql);
                 resultSet = statement.getResultSet();
                 while (resultSet.next()) {
                    nameList.add(resultSet.getString("name"));
                    teamList.add(resultSet.getString("team"));
                    posList.add(resultSet.getString("position"));
                    scoreList.add(resultSet.getString("GW" + i));
                }
                findMax(i);
                nameList=new ArrayList<>();
                teamList=new ArrayList<>();
                posList=new ArrayList<>();
                scoreList=new ArrayList<>();
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(topPerformances.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(topPerformances.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     public void findMax(int i) {
        int max = 0;
        String name ="";
        
        String team = "";
        String pos = "";
        for (int j = 0; j < scoreList.size(); j++) {
            if(scoreList.get(j).toString().equals("-") || scoreList.get(j).toString().equals(""))
                continue;
            if (Integer.parseInt(scoreList.get(j).toString()) > max) {
                 max = Integer.parseInt(scoreList.get(j).toString());
                name = nameList.get(j).toString();
                if (name.contains("'")) {
                    String[] nameSTR = name.split("'");
                    name = nameSTR[0] + "\\'" + nameSTR[1];
                }
                team = teamList.get(j).toString();
                pos = posList.get(j).toString();
            }
        }
         topPerformances.add(name + "-" + team + "-" + pos + "-" + "GW " + i + "-" + max);
     }
     public List getTopPerfomance() {
        return topPerformances;
    }
 }
