/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class searchBox extends HttpServlet {

   private List<String> list;

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
        System.out.println("Find Position");
        String name = request.getParameter("name");
        String category = request.getParameter("cat");
        String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
        String dbName = "fantasy";
        String userId = "root";
        String password = "";
        list=new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {

            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");

            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionUrl, userId, password);
            String pos="";
            int i = 1;
            int total;
            //Select the data from the database
            String sql = "SELECT * FROM players where name LIKE '" + name + "%'";
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);
 
            resultSet = s.getResultSet();
             while (resultSet.next ()){
                 list.add(resultSet.getString("name"));
                 if(resultSet.getString("position").equals("Goalkeeper")){
                     list.add("GK");
                     pos="Goalkeeper"; 
                 }
                 else if(resultSet.getString("position").equals("Defender")){
                     list.add("DEF");
                     pos="Defender"; 
                 }
                 else if(resultSet.getString("position").equals("Midfielder")){
                     list.add("MID");
                     pos="Midfielder"; 
                 }
                 else if(resultSet.getString("position").equals("Forward")){
                     list.add("FWD");
                     pos="Forward"; 
                 }
                if (resultSet.getString("team").equals("Houston Dash")) {
                    list.add("HOU");
                    if (pos.equals("Goalkeeper")) {
                        list.add("houstongk.png");
                    } else {
                        list.add("dash1.png");
                    }

                } else if (resultSet.getString("team").equals("Chicago Red Stars")) {
                    list.add("CHI");
                    if (pos.equals("Goalkeeper")) {
                        list.add("chicagogk.png");
                    } else {
                        list.add("stars1.png");
                    }

                } else if (resultSet.getString("team").equals("Portland Thorns FC")) {
                    list.add("POR");
                    if (pos.equals("Goalkeeper")) {
                        list.add("thornsgk.png");
                    } else {
                        list.add("thorns1.png");
                    }

                } else if (resultSet.getString("team").equals("Orlando Pride")) {
                    list.add("ORL");
                    if (pos.equals("Goalkeeper")) {
                        list.add("orlandogk.png");
                    } else {
                        list.add("pride1.png");
                    }

                } else if (resultSet.getString("team").equals("Washington Spirit")) {
                    list.add("WAS");
                    if (pos.equals("Goalkeeper")) {
                        list.add("spiritgk.png");
                    } else {
                        list.add("spirit1.png");
                    }

                } else if (resultSet.getString("team").equals("North Carolina Courage")) {
                    list.add("NC");
                    if (pos.equals("Goalkeeper")) {
                        list.add("couragegk.png");
                    } else {
                        list.add("courage.png");
                    }

                } else if (resultSet.getString("team").equals("Seattle Reign FC")) {
                    list.add("SEA");
                    if (pos.equals("Goalkeeper")) {
                        list.add("seattlegk.png");
                    } else {
                        list.add("reign1.png");
                    }

                } else if (resultSet.getString("team").equals("Sky Blue FC")) {
                    list.add("NJ");
                    if (pos.equals("Goalkeeper")) {
                        list.add("skybluegk.png");
                    } else {
                        list.add("skyblue1.png");
                    }

                } else if (resultSet.getString("team").equals("FC Kansas City")) {
                    list.add("KC");
                    if (pos.equals("Goalkeeper")) {
                        list.add("kansasgk.png");
                    } else {
                        list.add("kansas1.png");
                    }

                } else if (resultSet.getString("team").equals("Boston Breakers")) {
                    list.add("BOS");
                    if (pos.equals("Goalkeeper")) {
                        list.add("breakersgk.png");
                    } else {
                        list.add("breakers1.png");
                    }

                }
                String price = resultSet.getString("price");
                if (price == null) {
                    price = "0.0";
                }
                list.add(price);
                if (category.equals("score")) {
                    total = 0;
                    for (int j = 1; j <= 22; j++) {
                        //total=total+Integer.parseInt();
                        String gw = resultSet.getString("GW" + j);

                        if (gw.equals("") || gw.equals("-")) {
                            total = total + 0;
                        } else {
                            total = total + Integer.parseInt(gw);
                        }

                    }

                    list.add(total + "");

                } else {
                    String point=resultSet.getString(category);
                    
                    if (point.equals("")|| point.equals("-")){
                        point="0";
                        list.add(point);
                    }
                    else{
                        list.add(point);
                   }
                        

                    
                }
               
                i++;
                 
                 
             }
            
            resultSet.close();

            s.close();

        } catch (Exception e) {

            System.out.println("Exception is ;" + e);

        }

        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }
}
