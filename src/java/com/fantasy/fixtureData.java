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
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mitsos
 */
public class fixtureData {

    private List dataList = new ArrayList();
    private List dateList = new ArrayList();
    private List homeList = new ArrayList();
    private List homebadgeList = new ArrayList();
    private List timeList = new ArrayList();
    private List awayList = new ArrayList();
    private List awaybadgeList = new ArrayList();
    private List goalhomeList = new ArrayList();
    private List goalawayList = new ArrayList();
    private List assisthomeList = new ArrayList();
    private List assistawayList = new ArrayList();
    private List yellowhomeList = new ArrayList();
    private List yellowawayList = new ArrayList();
    private List redhomeList = new ArrayList();
    private List redawayList = new ArrayList();
    private List savehomeList = new ArrayList();
    private List saveawayList = new ArrayList();
     private List ownhomeList = new ArrayList();
    private List ownawayList = new ArrayList();
     private List pkmissedhomeList = new ArrayList();
    private List pkmissedawayList = new ArrayList();
     private List pksavedhomeList = new ArrayList();
    private List pksavedawayList = new ArrayList();

    public void fixture() {
        
        System.out.println("fixtureData");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String badge = null;
        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
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

            if(weeks==10){
                weeks=9;
            }
            else if(weeks==16 || weeks == 17){
                weeks=15;
            }
            else if(weeks==23 || weeks ==24 ){
                weeks = 21;
            }
            else if(weeks>10){
                weeks=weeks-1;
            }
            if (weeks >= 22 )
                weeks = 22;

            //Select the data from the database
            String sql = "SELECT * FROM fixture where fixture='Gameweek " + weeks + "'";
            dataList.add("Gameweek " + weeks);
            dataList.add("Gameweek " + (weeks - 1));
            dataList.add("Gameweek " + (weeks + 1));
            Statement s = connection.createStatement();

            s.executeQuery(sql);

            resultSet = s.getResultSet();

            while (resultSet.next()) {

                //Add records into data list
                dateList.add(resultSet.getString("date"));

                homeList.add(resultSet.getString("home"));
                if (resultSet.getString("home").equals("Houston Dash")) {
                    badge = "Houston_Dash2.png";
                } else if (resultSet.getString("home").equals("Chicago Red Stars")) {
                    badge = "ChicagoRedStars1.png";
                } else if (resultSet.getString("home").equals("Portland Thorns FC")) {
                    badge = "Portland1.png";
                } else if (resultSet.getString("home").equals("Orlando Pride")) {
                    badge = "OrlandoPride2.png";
                } else if (resultSet.getString("home").equals("Washington Spirit")) {
                    badge = "spirit.png";
                } else if (resultSet.getString("home").equals("North Carolina Courage")) {
                    badge = "North_Carolina_Courage1.png";
                } else if (resultSet.getString("home").equals("Seattle Reign FC")) {
                    badge = "SeattleReignFC2.png";
                } else if (resultSet.getString("home").equals("Sky Blue FC")) {
                    badge = "Sky_Blue_FC1.png";
                } else if (resultSet.getString("home").equals("FC Kansas City")) {
                    badge = "kansasCity2.png";
                } else if (resultSet.getString("home").equals("Boston Breakers")) {
                    badge = "Boston_Breakers1.png";
                }
                homebadgeList.add(badge);
                timeList.add(resultSet.getString("time"));
                awayList.add(resultSet.getString("away"));
                if (resultSet.getString("away").equals("Houston Dash")) {
                    badge = "Houston_Dash2.png";
                } else if (resultSet.getString("away").equals("Chicago Red Stars")) {
                    badge = "ChicagoRedStars1.png";
                } else if (resultSet.getString("away").equals("Portland Thorns FC")) {
                    badge = "Portland1.png";
                } else if (resultSet.getString("away").equals("Orlando Pride")) {
                    badge = "OrlandoPride2.png";
                } else if (resultSet.getString("away").equals("Washington Spirit")) {
                    badge = "spirit.png";
                } else if (resultSet.getString("away").equals("North Carolina Courage")) {
                    badge = "North_Carolina_Courage1.png";
                } else if (resultSet.getString("away").equals("Seattle Reign FC")) {
                    badge = "SeattleReignFC2.png";
                } else if (resultSet.getString("away").equals("Sky Blue FC")) {
                    badge = "Sky_Blue_FC1.png";
                } else if (resultSet.getString("away").equals("FC Kansas City")) {
                    badge = "kansasCity2.png";
                } else if (resultSet.getString("away").equals("Boston Breakers")) {
                    badge = "Boston_Breakers1.png";
                }
                awaybadgeList.add(badge);

            }
            resultSet.close();

            s.close();
            fixtureDetails(weeks,connection);
            
            
        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }
        
    }

    public List getdataList (){
        return dataList;
    }
    public List getdateList () {
        return dateList;
    }
    public List gethomeList (){
        return homeList;
    }
    public List gethomebadgeList(){
        return homebadgeList;
    }
    public List gettimeList (){
        return timeList;
    }
    public List getawayList (){
        return awayList;
    }
    public List getawaybadgeList (){
        return awaybadgeList;
    }
    
    public void fixtureDetails(int weeks,Connection connection){
        List fixture = new ArrayList();
        try {
            String sql = "SELECT * FROM  gw"+weeks;
            
            Statement s = connection.createStatement();

            s.executeQuery(sql);

            ResultSet resultSet = s.getResultSet();

            while (resultSet.next()) {
                fixture.add(resultSet.getString("fixture"));
            }
            resultSet.close();

            s.close();
            for(int i=0;i<fixture.size();i++){
            sql = "SELECT * FROM  "+fixture.get(i);
            s = connection.createStatement();

            s.executeQuery(sql);

            resultSet = s.getResultSet();

            while (resultSet.next()) {
               goalhomeList.add(resultSet.getString("homegoal"));
               goalawayList.add(resultSet.getString("awaygoal"));
               assisthomeList.add(resultSet.getString("homeassist"));
                assistawayList.add(resultSet.getString("awayassist"));
                yellowhomeList.add(resultSet.getString("homeyellow"));
                yellowawayList.add(resultSet.getString("awayyellow"));
                redhomeList.add(resultSet.getString("homered"));
                redawayList.add(resultSet.getString("homered"));
                savehomeList.add(resultSet.getString("homesave"));
                saveawayList.add(resultSet.getString("awaysave"));
                ownhomeList.add(resultSet.getString("homeown"));
                System.out.println("Own: " + resultSet.getString("homeown"));
                ownawayList.add(resultSet.getString("awayown"));
                pkmissedhomeList.add(resultSet.getString("homepkmissed"));
                pkmissedawayList.add(resultSet.getString("awaypkmissed"));
                pksavedhomeList.add(resultSet.getString("homepksaved"));
                pksavedawayList.add(resultSet.getString("awaypksaved"));
            }
            goalhomeList.add("new");
               goalawayList.add("new");
               assisthomeList.add("new");
                assistawayList.add("new");
                yellowhomeList.add("new");
                yellowawayList.add("new");
                redhomeList.add("new");
                redawayList.add("new");
                savehomeList.add("new");
                saveawayList.add("new");
                ownhomeList.add("new");
                ownawayList.add("new");
                pkmissedhomeList.add("new");
                pkmissedawayList.add("new");
                pksavedhomeList.add("new");
                pksavedawayList.add("new");
            }
            resultSet.close();

            s.close();
        } catch (SQLException ex) {
            Logger.getLogger(fixtureData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public List getgoalhomeList (){
        return goalhomeList;
    }
    public List getgoalawayList () {
        return goalawayList;
    }
    public List getassisthomeList (){
        return assisthomeList;
    }
    public List getassistawayList(){
        return assistawayList;
    }
    public List getyellowhomeList (){
        return yellowhomeList;
    }
    public List getyellowawayList (){
        return yellowawayList;
    }
    public List getredhomeList (){
        return redhomeList;
    }
    
    public List getredawayList (){
        return redawayList;
    }
    public List getsavehomeList (){
        return savehomeList;
    }
    public List getsaveawayList (){
        return saveawayList;
    }
    
    public List getownhomeList (){
        return ownhomeList;
    }
    public List getownawayList (){
        return ownawayList;
    }
    
    public List getpkmissedhomeList (){
        return pkmissedhomeList;
    }
    public List getpkmissedawayList (){
        return pkmissedawayList;
    }
    
    public List getpksavedhomeList (){
        return pksavedhomeList;
    }
    public List getpksavedawayList (){
        return pksavedawayList;
    }
}
