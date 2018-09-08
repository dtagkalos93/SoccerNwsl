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
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class injPlayerPage extends HttpServlet {

    private List nameInjury;
    private List posInjury;
    private List teamInjury;
    private List dateInjury;
    private List desInjury;
    private List availInjury;
    private List sortnameInjury;
    private List sortposInjury;
    private List sortteamInjury;
    private List sortdateInjury;
    private List sortdesInjury;
    private List sortavailInjury;
    private List other;
    private Map<String, List<String>> list;

    private String injuries;

    private int injuryPage;

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
        list= new HashMap<>();
        nameInjury = new ArrayList();
        posInjury = new ArrayList();
        teamInjury = new ArrayList();
        dateInjury = new ArrayList();
        desInjury = new ArrayList();
        availInjury = new ArrayList();
        sortnameInjury = new ArrayList();
        sortposInjury = new ArrayList();
        sortteamInjury = new ArrayList();
        sortdateInjury = new ArrayList();
        sortdesInjury = new ArrayList();
        sortavailInjury = new ArrayList();
        other=new ArrayList();
        String pageNo = request.getParameter("page");
        String injuries = "";
        String inj = request.getParameter("inj");

        String cat = request.getParameter("cat");
        if (cat.equals("pos")) {
            if (inj.equals("Goalkeeper")) {
                inj = "GK";
            } else if (inj.equals("Defender")) {
                inj = "DEF";
            } else if (inj.equals("Midfielder")) {
                inj = "MID";
            } else if (inj.equals("Forward")) {
                inj = "FWD";
            }
        }
        String sql = "";

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
            if (cat.equals("all")) {
                sql = "SELECT * FROM injuries";
            } else if (cat.equals("pos")) {
                sql = "SELECT * FROM injuries Where position='" + inj + "'";
            } else if (cat.equals("team")) {
                sql = "SELECT * FROM injuries Where team='" + inj + "'";

            }
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();
            while (resultSet.next()) {
                nameInjury.add(resultSet.getString("name"));
                posInjury.add(resultSet.getString("position"));
                teamInjury.add(resultSet.getString("team"));
                desInjury.add(resultSet.getString("description"));
                dateInjury.add(resultSet.getString("date"));
                availInjury.add(resultSet.getString("availability"));

            }

        } catch (SQLException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(rosterPlayer.class.getName()).log(Level.SEVERE, null, ex);
        }
        int pages = nameInjury.size() / 20;
        if (nameInjury.size() % 20 != 0) {
            pages++;
        }
        int startPos = 0;
        int finalPos = 0;
        System.out.println("page" + pageNo);

        if (pages == Integer.parseInt(pageNo)) {
            int page = (Integer.parseInt(pageNo)) - 1;
            if (page == 0) {
                startPos = (page * 20);

            } else {
                startPos = (page * 20) - 1;

            }
            finalPos = nameInjury.size() - 1;
        } else {
            int page = (Integer.parseInt(pageNo)) - 1;

            if (page == 0) {
                startPos = (page * 20);

            } else {
                startPos = (page * 20) - 1;

            }
            finalPos = startPos + 20;
        }
        findMaxFull();
        nameInjury = new ArrayList<>();
        teamInjury = new ArrayList<>();
        posInjury = new ArrayList<>();
        desInjury = new ArrayList<>();
        dateInjury = new ArrayList<>();
        availInjury = new ArrayList<>();
        
        for (int i = startPos; i < finalPos; i++) {
            nameInjury.add(sortnameInjury.get(i));
            teamInjury.add(sortteamInjury.get(i));
            posInjury.add(sortposInjury.get(i));
            desInjury.add(sortdesInjury.get(i));
            dateInjury.add(sortdateInjury.get(i));
            availInjury.add(sortavailInjury.get(i));
            
        }
        list.put("name", nameInjury);
        list.put("team", teamInjury);
        list.put("pos", posInjury);
        list.put("des", desInjury);
        list.put("date", dateInjury);
        list.put("avail", availInjury);
        int pageprev = Integer.parseInt(pageNo);
        other.add((pageprev - 1) + "");
        other.add((pageprev + 1) + "");
        other.add((pages + 1) + "");
        list.put("other", other);
        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    public void findMaxFull() {
        int length = nameInjury.size();
        int k = 1;
        injuries = "";

        while (k <= length) {
            try {
                Date max = new SimpleDateFormat("MM/dd/yyyy").parse(dateInjury.get(0).toString());
                int pos = 0;
                for (int i = 1; i < dateInjury.size(); i++) {

                    if (!new SimpleDateFormat("MM/dd/yyyy").parse(dateInjury.get(i).toString()).before(max)) {
                        max = new SimpleDateFormat("MM/dd/yyyy").parse(dateInjury.get(i).toString());
                        pos = i;
                    }

                }

                sortnameInjury.add(nameInjury.get(pos));
                nameInjury.remove(pos);
                sortteamInjury.add(teamInjury.get(pos));
                teamInjury.remove(pos);
                sortposInjury.add(posInjury.get(pos));
                posInjury.remove(pos);
                sortdateInjury.add(dateInjury.get(pos));
                dateInjury.remove(pos);
                sortdesInjury.add(desInjury.get(pos));
                desInjury.remove(pos);
                sortavailInjury.add(availInjury.get(pos));
                availInjury.remove(pos);

                k++;
                if (k > length) {
                    break;
                }
            } catch (ParseException ex) {
                Logger.getLogger(injPlayerPage.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
