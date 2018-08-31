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
public class standings {
     private List<String> team = new ArrayList();
    private List<String> badge = new ArrayList();
    private List<String> gp = new ArrayList();
    private List<String> wins = new ArrayList();
    private List<String> looses = new ArrayList();
    private List<String> draws = new ArrayList();
    private List<String> gd = new ArrayList();
    private List<String> pts = new ArrayList();
    private List<String> sortteam = new ArrayList();
    private List<String> sortbadge = new ArrayList();
    private List<String> sortgp = new ArrayList();
    private List<String> sortwins = new ArrayList();
    private List<String> sortlooses = new ArrayList();
    private List<String> sortdraws = new ArrayList();
    private List<String> sortgd = new ArrayList();
    private List<String> sortpts = new ArrayList();
     public standings() {
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
             sql = "SELECT * FROM standings ";
            statement = connection.createStatement();
            statement.executeQuery(sql);
             resultSet = statement.getResultSet();
            int i = 0;
            while (resultSet.next()) {
                team.add(resultSet.getString("team"));
                if (resultSet.getString("team").equals("Houston Dash")) {
                    badge.add("Houston_Dash2.png");
                } else if (resultSet.getString("team").equals("Chicago Red Stars")) {
                    badge.add("ChicagoRedStars1.png");
                } else if (resultSet.getString("team").equals("Portland Thorns FC")) {
                    badge.add("Portland1.png");
                } else if (resultSet.getString("team").equals("Orlando Pride")) {
                    badge.add("OrlandoPride2.png");
                } else if (resultSet.getString("team").equals("Washington Spirit")) {
                    badge.add("spirit.png");
                } else if (resultSet.getString("team").equals("North Carolina Courage")) {
                    badge.add("North_Carolina_Courage1.png");
                } else if (resultSet.getString("team").equals("Seattle Reign FC")) {
                    badge.add("SeattleReignFC2.png");
                } else if (resultSet.getString("team").equals("Sky Blue")) {
                    badge.add("Sky_Blue_FC1.png");
                } else if (resultSet.getString("team").equals("Utah Royals FC")) {
                    badge.add("UtahRoyals2.png");
                }
                gp.add(resultSet.getString("gp"));
                wins.add(resultSet.getString("wins"));
                looses.add(resultSet.getString("looses"));
                draws.add(resultSet.getString("draws"));
                gd.add(resultSet.getString("gd"));
                pts.add(resultSet.getString("points"));
                i++;
            }
            sort();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(topPerformances.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(topPerformances.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     public void sort() {
        int k = 1;
         while (k <= 9) {
            System.out.print(pts.size());
             int max = Integer.parseInt(pts.get(0).toString());
            int pos = 0;
             for (int i = 1; i < pts.size(); i++) {
                if (Integer.parseInt(pts.get(i).toString()) > max) {
                     max = Integer.parseInt(pts.get(i).toString());
                    pos = i;
                }
            }
            sortteam.add(team.get(pos));
             team.remove(pos);
            sortbadge.add(badge.get(pos));
            badge.remove(pos);
            sortgp.add(gp.get(pos));
            gp.remove(pos);
            sortwins.add(wins.get(pos));
            wins.remove(pos);
            sortlooses.add(looses.get(pos));
            looses.remove(pos);
            sortdraws.add(draws.get(pos));
            draws.remove(pos);
            sortgd.add(gd.get(pos));
            gd.remove(pos);
            sortpts.add(pts.get(pos));
            pts.remove(pos);
            k++;
        }
     }
     public List getTeam() {
        return sortteam;
    }
     public List getBadge() {
        return sortbadge;
    }
     public List getGp() {
        return sortgp;
    }
     public List getWins() {
        return sortwins;
    }
     public List getLooses() {
        return sortlooses;
    }
     public List getDraws() {
        return sortdraws;
    }
     public List getGd() {
        return sortgd;
    }
     public List getPts() {
        return sortpts;
    }
 }
