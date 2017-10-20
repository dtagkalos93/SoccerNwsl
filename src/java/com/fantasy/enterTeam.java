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
                    gkjerseyList.add("houstongk.png");
                } else if (playersTeam[1].equals("CHI")) {

                    gkjerseyList.add("chicagogk.png");

                } else if (playersTeam[1].equals("POR")) {

                    gkjerseyList.add("thornsgk.png");

                } else if (playersTeam[1].equals("ORL")) {

                    gkjerseyList.add("orlandogk.png");

                } else if (playersTeam[1].equals("WAS")) {

                    gkjerseyList.add("spiritgk.png");

                } else if (playersTeam[1].equals("NC")) {

                    gkjerseyList.add("couragegk.png");

                } else if (playersTeam[1].equals("SEA")) {

                    gkjerseyList.add("seattlegk.png");

                } else if (playersTeam[1].equals("NJ")) {

                    gkjerseyList.add("skybluegk.png");

                } else if (playersTeam[1].equals("KC")) {

                    gkjerseyList.add("kansasgk.png");

                } else if (playersTeam[1].equals("BOS")) {

                    gkjerseyList.add("breakersgk.png");

                }
                gknameList.add(playersTeam[0]);
                gkteamList.add(playersTeam[1]);
            } else if (i < 7) {
                playersTeam = playersArray[i].split("-");
                if (playersTeam[1].equals("HOU")) {
                    defjerseyList.add("dash1.png");
                } else if (playersTeam[1].equals("CHI")) {

                    defjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("POR")) {

                    defjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("ORL")) {

                    defjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("WAS")) {

                    defjerseyList.add("spirit1.png");

                } else if (playersTeam[1].equals("NC")) {

                    defjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("SEA")) {

                    defjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {

                    defjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("KC")) {

                    defjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("BOS")) {

                    defjerseyList.add("breakers1.png");

                }
                defnameList.add(playersTeam[0]);
                defteamList.add(playersTeam[1]);
            } else if (i < 11) {
                playersTeam = playersArray[i].split("-");
                if (playersTeam[1].equals("HOU")) {
                    midjerseyList.add("dash1.png");
                } else if (playersTeam[1].equals("CHI")) {

                    midjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("POR")) {

                    midjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("ORL")) {

                    midjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("WAS")) {

                    midjerseyList.add("spirit1.png");

                } else if (playersTeam[1].equals("NC")) {

                    midjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("SEA")) {

                    midjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {

                    midjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("KC")) {

                    midjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("BOS")) {

                    midjerseyList.add("breakers1.png");

                }
                midnameList.add(playersTeam[0]);
                midteamList.add(playersTeam[1]);
            } else {
                playersTeam = playersArray[i].split("-");
                if (playersTeam[1].equals("HOU")) {
                    fwdjerseyList.add("dash1.png");
                } else if (playersTeam[1].equals("CHI")) {

                    fwdjerseyList.add("stars1.png");

                } else if (playersTeam[1].equals("POR")) {

                    fwdjerseyList.add("thorns1.png");

                } else if (playersTeam[1].equals("ORL")) {

                    fwdjerseyList.add("pride1.png");

                } else if (playersTeam[1].equals("WAS")) {

                    fwdjerseyList.add("spirit1.png");

                } else if (playersTeam[1].equals("NC")) {

                    fwdjerseyList.add("courage.png");

                } else if (playersTeam[1].equals("SEA")) {

                    fwdjerseyList.add("reign1.png");

                } else if (playersTeam[1].equals("NJ")) {

                    fwdjerseyList.add("skyblue1.png");

                } else if (playersTeam[1].equals("KC")) {

                    fwdjerseyList.add("kansas1.png");

                } else if (playersTeam[1].equals("BOS")) {

                    fwdjerseyList.add("breakers1.png");

                }
                fwdnameList.add(playersTeam[0]);
                fwdteamList.add(playersTeam[1]);
            }
        }
        System.out.println("GK TEAM"+" "+ gkteamList.get(0));
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

        RequestDispatcher rd = request.getRequestDispatcher("enterRoster.jsp");
        rd.forward(request, response);

    }

}
