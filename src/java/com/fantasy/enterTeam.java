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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos
 */
public class enterTeam extends HttpServlet {

    private List gknameList;
    private List gkjerseyList;
    private List gkteamList;
    private List gkpriceList;
    private List defnameList;
    private List defjerseyList;
    private List defteamList;
    private List defpriceList;
    private List midnameList;
    private List midjerseyList;
    private List midteamList;
    private List midpriceList;
    private List fwdnameList;
    private List fwdjerseyList;
    private List fwdteamList;
    private List fwdpriceList;
    private List bosnameList;
    private List bosjerseyList;
    private List bosposList;
    private List bospriceList;
    private List chinameList;
    private List chijerseyList;
    private List chiposList;
    private List chipriceList;
    private List kcnameList;
    private List kcjerseyList;
    private List kcposList;
    private List kcpriceList;
    private List hounameList;
    private List houjerseyList;
    private List houposList;
    private List houpriceList;
    private List ncnameList;
    private List ncjerseyList;
    private List ncposList;
    private List ncpriceList;
    private List orlnameList;
    private List orljerseyList;
    private List orlposList;
    private List orlpriceList;
    private List pornameList;
    private List porjerseyList;
    private List porposList;
    private List porpriceList;
    private List seanameList;
    private List seajerseyList;
    private List seaposList;
    private List seapriceList;
    private List njnameList;
    private List njjerseyList;
    private List njposList;
    private List njpriceList;
    private List wasnameList;
    private List wasjerseyList;
    private List wasposList;
    private List waspriceList;

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
        gknameList = new ArrayList();
        gkjerseyList = new ArrayList();
        gkteamList = new ArrayList();
        gkpriceList = new ArrayList();
        defnameList = new ArrayList();
        defjerseyList = new ArrayList();
        defteamList = new ArrayList();
        defpriceList = new ArrayList();
        midnameList = new ArrayList();
        midjerseyList = new ArrayList();
        midteamList = new ArrayList();
        midpriceList = new ArrayList();
        fwdnameList = new ArrayList();
        fwdjerseyList = new ArrayList();
        fwdteamList = new ArrayList();
        fwdpriceList = new ArrayList();
        bosnameList = new ArrayList();
        bosjerseyList = new ArrayList();
        bosposList = new ArrayList();
        bospriceList = new ArrayList();
        chinameList = new ArrayList();
        chijerseyList = new ArrayList();
        chiposList = new ArrayList();
        chipriceList = new ArrayList();
        kcnameList = new ArrayList();
        kcjerseyList = new ArrayList();
        kcposList = new ArrayList();
        kcpriceList = new ArrayList();
        hounameList = new ArrayList();
        houjerseyList = new ArrayList();
        houposList = new ArrayList();
        houpriceList = new ArrayList();
        ncnameList = new ArrayList();
        ncjerseyList = new ArrayList();
        ncposList = new ArrayList();
        ncpriceList = new ArrayList();
        orlnameList = new ArrayList();
        orljerseyList = new ArrayList();
        orlposList = new ArrayList();
        orlpriceList = new ArrayList();
        pornameList = new ArrayList();
        porjerseyList = new ArrayList();
        porposList = new ArrayList();
        porpriceList = new ArrayList();
        seanameList = new ArrayList();
        seajerseyList = new ArrayList();
        seaposList = new ArrayList();
        seapriceList = new ArrayList();
        njnameList = new ArrayList();
        njjerseyList = new ArrayList();
        njposList = new ArrayList();
        njpriceList = new ArrayList();
        wasnameList = new ArrayList();
        wasjerseyList = new ArrayList();
        wasposList = new ArrayList();
        waspriceList = new ArrayList();
        System.out.println("EnterRoster");
        System.out.println(request.getParameter("name"));
        String players = request.getParameter("name");
        String[] playersArray = players.split(",");
        String[] playersTeam;
        String jersey;
        for (int i = 0; i < playersArray.length; i++) {

            if (i < 2) {
                playersTeam = playersArray[i].split("-");
                String price = findPrice(playersTeam[0]);
                if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("houstongk.png");
                    houposList.add("GK");
                    houpriceList.add(price);
                    gkjerseyList.add("houstongk.png");
                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("chicagogk.png");
                    chiposList.add("GK");
                    chipriceList.add(price);
                    gkjerseyList.add("chicagogk.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thornsgk.png");
                    porposList.add("GK");
                    porpriceList.add(price);
                    gkjerseyList.add("thornsgk.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("orlandogk.png");
                    orlposList.add("GK");
                    orlpriceList.add(price);
                    gkjerseyList.add("orlandogk.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spiritgk.png");
                    wasposList.add("GK");
                    waspriceList.add(price);
                    gkjerseyList.add("spiritgk.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("couragegk.png");
                    ncposList.add("GK");
                    ncpriceList.add(price);
                    gkjerseyList.add("couragegk.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("seattlegk.png");
                    seaposList.add("GK");
                    seapriceList.add(price);
                    gkjerseyList.add("seattlegk.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skybluegk.png");
                    njposList.add("GK");
                    njpriceList.add(price);
                    gkjerseyList.add("skybluegk.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansasgk.png");
                    kcposList.add("GK");
                    kcpriceList.add(price);
                    gkjerseyList.add("kansasgk.png");

                } else if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakersgk.png");
                    bosposList.add("GK");
                    bospriceList.add(price);
                    gkjerseyList.add("breakersgk.png");

                }
                gknameList.add(playersTeam[0]);
                gkteamList.add(playersTeam[1]);
                gkpriceList.add(price);
            } else if (i < 7) {
                playersTeam = playersArray[i].split("-");
                String price = findPrice(playersTeam[0]);

                if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakers1.png");
                    bosposList.add("DEF");
                    bospriceList.add(price);
                    defjerseyList.add("breakers1.png");

                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("stars1.png");
                    chiposList.add("DEF");
                    chipriceList.add(price);
                    defjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansas1.png");
                    kcposList.add("DEF");
                    kcpriceList.add(price);
                    defjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("dash1.png");
                    houposList.add("DEF");
                    houpriceList.add(price);
                    defjerseyList.add("dash1.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("courage.png");
                    ncposList.add("DEF");
                    ncpriceList.add(price);
                    defjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("pride1.png");
                    orlposList.add("DEF");
                    orlpriceList.add(price);
                    defjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thorns1.png");
                    porposList.add("DEF");
                    porpriceList.add(price);
                    defjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("reign1.png");
                    seaposList.add("DEF");
                    seapriceList.add(price);
                    defjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skyblue1.png");
                    njposList.add("DEF");
                    njpriceList.add(price);
                    defjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spirit1.png");
                    wasposList.add("DEF");
                    waspriceList.add(price);
                    defjerseyList.add("spirit1.png");

                }
                defpriceList.add(price);
                defnameList.add(playersTeam[0]);
                defteamList.add(playersTeam[1]);
            } else if (i < 12) {
                playersTeam = playersArray[i].split("-");
                String price = findPrice(playersTeam[0]);

                if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakers1.png");
                    bosposList.add("MID");
                    bospriceList.add(price);
                    midjerseyList.add("breakers1.png");

                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("stars1.png");
                    chiposList.add("MID");
                    chipriceList.add(price);
                    midjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansas1.png");
                    kcposList.add("MID");
                    kcpriceList.add(price);
                    midjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("dash1.png");
                    houposList.add("MID");
                    houpriceList.add(price);
                    midjerseyList.add("dash1.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("courage.png");
                    ncposList.add("MID");
                    ncpriceList.add(price);
                    midjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("pride1.png");
                    orlposList.add("MID");
                    orlpriceList.add(price);
                    midjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thorns1.png");
                    porposList.add("MID");
                    porpriceList.add(price);
                    midjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("reign1.png");
                    seaposList.add("MID");
                    seapriceList.add(price);
                    midjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skyblue1.png");
                    njposList.add("MID");
                    njpriceList.add(price);
                    midjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spirit1.png");
                    wasposList.add("MID");
                    waspriceList.add(price);
                    midjerseyList.add("spirit1.png");

                }
                midpriceList.add(price);
                midnameList.add(playersTeam[0]);
                midteamList.add(playersTeam[1]);
            } else {
                playersTeam = playersArray[i].split("-");
                String price = findPrice(playersTeam[0]);

                if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakers1.png");
                    bosposList.add("FWD");
                    bospriceList.add(price);
                    fwdjerseyList.add("breakers1.png");

                } else if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("dash1.png");
                    houposList.add("FWD");
                    houpriceList.add(price);
                    fwdjerseyList.add("dash1.png");
                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("stars1.png");
                    chiposList.add("FWD");
                    chipriceList.add(price);
                    fwdjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thorns1.png");
                    porposList.add("FWD");
                    porpriceList.add(price);
                    fwdjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("pride1.png");
                    orlposList.add("FWD");
                    orlpriceList.add(price);
                    fwdjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spirit1.png");
                    wasposList.add("FWD");
                    waspriceList.add(price);
                    fwdjerseyList.add("spirit1.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("courage.png");
                    ncposList.add("FWD");
                    ncpriceList.add(price);
                    fwdjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("reign1.png");
                    seaposList.add("FWD");
                    seapriceList.add(price);
                    fwdjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skyblue1.png");
                    njposList.add("FWD");
                    njpriceList.add(price);
                    fwdjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansas1.png");
                    kcposList.add("FWD");
                    kcpriceList.add(price);
                    fwdjerseyList.add("kansas1.png");

                }
                fwdpriceList.add(price);
                fwdnameList.add(playersTeam[0]);
                fwdteamList.add(playersTeam[1]);
            }
        }

        System.out.println("TEAM" + " " + midnameList.size());
        request.setAttribute("namedef", defnameList);
        request.setAttribute("teamdef", defteamList);
        request.setAttribute("jerseydef", defjerseyList);
        request.setAttribute("pricedef", defpriceList);
        request.setAttribute("namegk", gknameList);
        request.setAttribute("jerseygk", gkjerseyList);
        request.setAttribute("teamgk", gkteamList);
        request.setAttribute("pricegk", gkpriceList);

        request.setAttribute("namemid", midnameList);
        request.setAttribute("jerseymid", midjerseyList);
        request.setAttribute("teammid", midteamList);
        request.setAttribute("pricemid", midpriceList);

        request.setAttribute("namefwd", fwdnameList);
        request.setAttribute("jerseyfwd", fwdjerseyList);
        request.setAttribute("teamfwd", fwdteamList);
        request.setAttribute("pricefwd", fwdpriceList);

        request.setAttribute("namebos", bosnameList);
        request.setAttribute("jerseybos", bosjerseyList);
        request.setAttribute("posbos", bosposList);
        request.setAttribute("pricebos", bospriceList);

        request.setAttribute("namechi", chinameList);
        request.setAttribute("jerseychi", chijerseyList);
        request.setAttribute("poschi", chiposList);
        request.setAttribute("pricechi", chipriceList);

        request.setAttribute("namekc", kcnameList);
        request.setAttribute("jerseykc", kcjerseyList);
        request.setAttribute("poskc", kcposList);
        request.setAttribute("pricekc", kcpriceList);

        request.setAttribute("namehou", hounameList);
        request.setAttribute("jerseyhou", houjerseyList);
        request.setAttribute("poshou", houposList);
        request.setAttribute("pricehou", houpriceList);

        request.setAttribute("namenc", ncnameList);
        request.setAttribute("jerseync", ncjerseyList);
        request.setAttribute("posnc", ncposList);
        request.setAttribute("pricenc", ncpriceList);

        request.setAttribute("nameorl", orlnameList);
        request.setAttribute("jerseyorl", orljerseyList);
        request.setAttribute("posorl", orlposList);
        request.setAttribute("priceorl", orlpriceList);

        request.setAttribute("namepor", pornameList);
        request.setAttribute("jerseypor", porjerseyList);
        request.setAttribute("pospor", porposList);
        request.setAttribute("pricepor", porpriceList);

        request.setAttribute("namesea", seanameList);
        request.setAttribute("jerseysea", seajerseyList);
        request.setAttribute("possea", seaposList);
        request.setAttribute("pricesea", seapriceList);

        request.setAttribute("namenj", njnameList);
        request.setAttribute("jerseynj", njjerseyList);
        request.setAttribute("posnj", njposList);
        request.setAttribute("pricenj", njpriceList);

        request.setAttribute("namewas", wasnameList);
        request.setAttribute("jerseywas", wasjerseyList);
        request.setAttribute("poswas", wasposList);
        request.setAttribute("pricewas", waspriceList);

        RequestDispatcher rd = request.getRequestDispatcher("enterRoster.jsp");
        rd.forward(request, response);

    }

    public String findPrice(String name) {
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

            String sql = "SELECT price FROM players where name='" + name + "'";
            System.out.println(sql);
            Statement s = connection.createStatement();
            s.executeQuery(sql);

            resultSet = s.getResultSet();

            if (resultSet.next()) {
                return resultSet.getString("price");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(enterTeam.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        // Get a Connection to the database
    }

}
