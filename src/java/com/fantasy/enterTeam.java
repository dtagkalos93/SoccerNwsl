/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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

    private List gknameList = new ArrayList();
    private List gkjerseyList = new ArrayList();
    private List gkteamList = new ArrayList();
    private List defnameList = new ArrayList();
    private List defjerseyList = new ArrayList();
    private List defteamList = new ArrayList();
    private List midnameList = new ArrayList();
    private List midjerseyList = new ArrayList();
    private List midteamList = new ArrayList();
    private List fwdnameList = new ArrayList();
    private List fwdjerseyList = new ArrayList();
    private List fwdteamList = new ArrayList();
    private List bosnameList = new ArrayList();
    private List bosjerseyList = new ArrayList();
    private List bosposList = new ArrayList();
    private List chinameList = new ArrayList();
    private List chijerseyList = new ArrayList();
    private List chiposList = new ArrayList();
    private List kcnameList = new ArrayList();
    private List kcjerseyList = new ArrayList();
    private List kcposList = new ArrayList();
    private List hounameList = new ArrayList();
    private List houjerseyList = new ArrayList();
    private List houposList = new ArrayList();
    private List ncnameList = new ArrayList();
    private List ncjerseyList = new ArrayList();
    private List ncposList = new ArrayList();
    private List orlnameList = new ArrayList();
    private List orljerseyList = new ArrayList();
    private List orlposList = new ArrayList();
    private List pornameList = new ArrayList();
    private List porjerseyList = new ArrayList();
    private List porposList = new ArrayList();
    private List seanameList = new ArrayList();
    private List seajerseyList = new ArrayList();
    private List seaposList = new ArrayList();
    private List njnameList = new ArrayList();
    private List njjerseyList = new ArrayList();
    private List njposList = new ArrayList();
    private List wasnameList = new ArrayList();
    private List wasjerseyList = new ArrayList();
    private List wasposList = new ArrayList();

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
        System.out.println("EnterRoster");
        System.out.println(request.getParameter("name"));
        String players = request.getParameter("name");
        String[] playersArray = players.split(",");
        String[] playersTeam;
        String jersey;
        for (int i = 0; i < playersArray.length; i++) {
            if (i < 2) {
                playersTeam = playersArray[i].split("-");
                if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("houstongk.png");
                    houposList.add("GK");
                    gkjerseyList.add("houstongk.png");
                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("chicagogk.png");
                    chiposList.add("GK");
                    gkjerseyList.add("chicagogk.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thornsgk.png");
                    porposList.add("GK");
                    gkjerseyList.add("thornsgk.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("orlandogk.png");
                    orlposList.add("GK");
                    gkjerseyList.add("orlandogk.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spiritgk.png");
                    wasposList.add("GK");
                    gkjerseyList.add("spiritgk.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("couragegk.png");
                    ncposList.add("GK");
                    gkjerseyList.add("couragegk.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("seattlegk.png");
                    seaposList.add("GK");
                    gkjerseyList.add("seattlegk.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skybluegk.png");
                    njposList.add("GK");
                    gkjerseyList.add("skybluegk.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansasgk.png");
                    kcposList.add("GK");
                    gkjerseyList.add("kansasgk.png");

                } else if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakersgk.png");
                    bosposList.add("GK");
                    gkjerseyList.add("breakersgk.png");

                }
                gknameList.add(playersTeam[0]);
                gkteamList.add(playersTeam[1]);
            } else if (i < 7) {
                playersTeam = playersArray[i].split("-");
                if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("dash1.png");
                    houposList.add("DEF");
                    defjerseyList.add("dash1.png");
                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("stars1.png");
                    chiposList.add("DEF");
                    defjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thorns1.png");
                    porposList.add("DEF");
                    defjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("pride1.png");
                    orlposList.add("DEF");
                    defjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spirit1.png");
                    wasposList.add("DEF");
                    defjerseyList.add("spirit1.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("courage.png");
                    ncposList.add("DEF");
                    defjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("reign1.png");
                    seaposList.add("DEF");
                    defjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skyblue1.png");
                    njposList.add("DEF");
                    defjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansas1.png");
                    kcposList.add("DEF");
                    defjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakers1.png");
                    bosposList.add("DEF");
                    defjerseyList.add("breakers1.png");

                }
                defnameList.add(playersTeam[0]);
                defteamList.add(playersTeam[1]);
            } else if (i < 12) {
                playersTeam = playersArray[i].split("-");
                if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("dash1.png");
                    houposList.add("MID");
                    midjerseyList.add("dash1.png");
                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("stars1.png");
                    chiposList.add("MID");
                    midjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thorns1.png");
                    porposList.add("MID");
                    midjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("pride1.png");
                    orlposList.add("MID");
                    midjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spirit1.png");
                    wasposList.add("MID");
                    midjerseyList.add("spirit1.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("courage.png");
                    ncposList.add("MID");
                    midjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("reign1.png");
                    seaposList.add("MID");
                    midjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skyblue1.png");
                    njposList.add("MID");
                    midjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansas1.png");
                    kcposList.add("MID");
                    midjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakers1.png");
                    bosposList.add("MID");
                    midjerseyList.add("breakers1.png");

                }
                midnameList.add(playersTeam[0]);
                midteamList.add(playersTeam[1]);
            } else {
                playersTeam = playersArray[i].split("-");
                                if (playersTeam[1].equals("HOU")) {
                    hounameList.add(playersTeam[0]);
                    houjerseyList.add("dash1.png");
                    houposList.add("FWD");
                    fwdjerseyList.add("dash1.png");
                } else if (playersTeam[1].equals("CHI")) {
                    chinameList.add(playersTeam[0]);
                    chijerseyList.add("stars1.png");
                    chiposList.add("FWD");
                    fwdjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("POR")) {
                    pornameList.add(playersTeam[0]);
                    porjerseyList.add("thorns1.png");
                    porposList.add("FWD");
                    fwdjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("ORL")) {
                    orlnameList.add(playersTeam[0]);
                    orljerseyList.add("pride1.png");
                    orlposList.add("FWD");
                    fwdjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("WAS")) {
                    wasnameList.add(playersTeam[0]);
                    wasjerseyList.add("spirit1.png");
                    wasposList.add("FWD");
                    fwdjerseyList.add("spirit1.png");

                } else if (playersTeam[1].equals("NC")) {
                    ncnameList.add(playersTeam[0]);
                    ncjerseyList.add("courage.png");
                    ncposList.add("FWD");
                    fwdjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("SEA")) {
                    seanameList.add(playersTeam[0]);
                    seajerseyList.add("reign1.png");
                    seaposList.add("FWD");
                    fwdjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {
                    njnameList.add(playersTeam[0]);
                    njjerseyList.add("skyblue1.png");
                    njposList.add("FWD");
                    fwdjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("KC")) {
                    kcnameList.add(playersTeam[0]);
                    kcjerseyList.add("kansas1.png");
                    kcposList.add("FWD");
                    fwdjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("BOS")) {
                    bosnameList.add(playersTeam[0]);
                    bosjerseyList.add("breakers1.png");
                    bosposList.add("FWD");
                    fwdjerseyList.add("breakers1.png");

                }
                fwdnameList.add(playersTeam[0]);
                fwdteamList.add(playersTeam[1]);
            }
        }
        System.out.println("TEAM" + " " + midnameList.size());
        request.setAttribute("namedef", defnameList);
        request.setAttribute("teamdef", defteamList);
        request.setAttribute("jerseydef", defjerseyList);
        request.setAttribute("namegk", gknameList);
        request.setAttribute("jerseygk", gkjerseyList);
        request.setAttribute("teamgk", gkteamList);
        request.setAttribute("namemid", midnameList);
        request.setAttribute("jerseymid", midjerseyList);
        request.setAttribute("teammid", midteamList);
        request.setAttribute("namefwd", fwdnameList);
        request.setAttribute("jerseyfwd", fwdjerseyList);
        request.setAttribute("teamfwd", fwdteamList);
        request.setAttribute("namebos", bosnameList);
        request.setAttribute("jerseybos", bosjerseyList);
        request.setAttribute("posbos", bosposList);
        request.setAttribute("namechi", chinameList);
        request.setAttribute("jerseychi", chijerseyList);
        request.setAttribute("poschi", chiposList);
        request.setAttribute("namekc", kcnameList);
        request.setAttribute("jerseykc", kcjerseyList);
        request.setAttribute("poskc", kcposList);
        request.setAttribute("namehou", hounameList);
        request.setAttribute("jerseyhou", houjerseyList);
        request.setAttribute("poshou", houposList);
        request.setAttribute("namenc", ncnameList);
        request.setAttribute("jerseync", ncjerseyList);
        request.setAttribute("posnc", ncposList);
        request.setAttribute("nameorl", orlnameList);
        request.setAttribute("jerseyorl", orljerseyList);
        request.setAttribute("posorl", orlposList);
        request.setAttribute("namepor", pornameList);
        request.setAttribute("jerseypor", porjerseyList);
        request.setAttribute("pospor", porposList);
        request.setAttribute("namesea", seanameList);
        request.setAttribute("jerseysea", seajerseyList);
        request.setAttribute("possea", seaposList);
        request.setAttribute("namenj", njnameList);
        request.setAttribute("jerseynj", njjerseyList);
        request.setAttribute("posnj", njposList);
        request.setAttribute("namewas", wasnameList);
        request.setAttribute("jerseywas", wasjerseyList);
        request.setAttribute("poswas", wasposList);
        RequestDispatcher rd = request.getRequestDispatcher("enterRoster.jsp");
        rd.forward(request, response);

    }

}
