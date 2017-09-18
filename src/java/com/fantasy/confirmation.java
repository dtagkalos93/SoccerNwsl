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
public class confirmation extends HttpServlet {

    private List gknameList = new ArrayList();
    private List gkjerseyList = new ArrayList();
    private List gkteamList = new ArrayList();
    private List gkpriceList = new ArrayList();
    private List gkscoreList = new ArrayList();
    private List sortgknameList = new ArrayList();
    private List sortgkjerseyList = new ArrayList();
    private List sortgkteamList = new ArrayList();
    private List sortgkpriceList = new ArrayList();
    private List sortgkscoreList = new ArrayList();
    private List defnameList = new ArrayList();
    private List defjerseyList = new ArrayList();
    private List defteamList = new ArrayList();
    private List defpriceList = new ArrayList();
    private List defscoreList = new ArrayList();
    private List sortdefnameList = new ArrayList();
    private List sortdefjerseyList = new ArrayList();
    private List sortdefteamList = new ArrayList();
    private List sortdefpriceList = new ArrayList();
    private List sortdefscoreList = new ArrayList();
    private List midnameList = new ArrayList();
    private List midjerseyList = new ArrayList();
    private List midteamList = new ArrayList();
    private List midpriceList = new ArrayList();
    private List midscoreList = new ArrayList();
    private List sortmidnameList = new ArrayList();
    private List sortmidjerseyList = new ArrayList();
    private List sortmidteamList = new ArrayList();
    private List sortmidpriceList = new ArrayList();
    private List sortmidscoreList = new ArrayList();
    private List fwdnameList = new ArrayList();
    private List fwdjerseyList = new ArrayList();
    private List fwdteamList = new ArrayList();
    private List fwdpriceList = new ArrayList();
    private List fwdscoreList = new ArrayList();
    private List sortfwdnameList = new ArrayList();
    private List sortfwdjerseyList = new ArrayList();
    private List sortfwdteamList = new ArrayList();
    private List sortfwdpriceList = new ArrayList();
    private List sortfwdscoreList = new ArrayList();
    private int totalPlayers;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  

   

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        totalPlayers=0;
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
        String team = request.getParameter("team");
        System.out.println(team);
        if (team.equals("")) {
            request.setAttribute("firstname", firstName);
            request.setAttribute("lastname", lastName);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("gender", gender);
            request.setAttribute("country", country);
            RequestDispatcher rd = request.getRequestDispatcher("favteam.jsp");
            rd.forward(request, response);
        } else {

            

            dbCredentials exist = new dbCredentials();
            exist.addUser(firstName, lastName, email, password, gender, country, team);
            fixtureData fixture = new fixtureData();
            fixture.fixture();
            request.setAttribute("data", fixture.getdataList());
            request.setAttribute("date", fixture.getdateList());
            request.setAttribute("home", fixture.gethomeList());
            request.setAttribute("homebadge", fixture.gethomebadgeList());
            request.setAttribute("time", fixture.gettimeList());
            request.setAttribute("away", fixture.getawayList());
            request.setAttribute("awaybadge", fixture.getawaybadgeList());
            players gk = new players();
            gk.players("Goalkeeper","score");
            gknameList = gk.getnameList();
            totalPlayers=totalPlayers+gknameList.size();
            gkteamList = gk.getteamList();
            gkjerseyList = gk.getjerseyList();
            gkpriceList = gk.getpriceList();
            gkscoreList = gk.getpointList();
            findmax(request, 2, "gk");
            players def = new players();
            def.players("Defender","score");
            defnameList = def.getnameList();
            totalPlayers=totalPlayers+defnameList.size();
            defteamList = def.getteamList();
            defjerseyList = def.getjerseyList();
            defpriceList = def.getpriceList();
            defscoreList = def.getpointList();
            findmax(request, 8, "def");
            players mid = new players();
            mid.players("Midfielder","score");
            midnameList = mid.getnameList();
            totalPlayers=totalPlayers+midnameList.size();
            midteamList = mid.getteamList();
            midjerseyList = mid.getjerseyList();
            midpriceList = mid.getpriceList();
            midscoreList = mid.getpointList();
            findmax(request, 5, "mid");
            players fwd = new players();
            fwd.players("Forward","score");
            fwdnameList = fwd.getnameList();
            totalPlayers=totalPlayers+fwdnameList.size();
            fwdteamList = fwd.getteamList();
            fwdjerseyList = fwd.getjerseyList();
            fwdpriceList = fwd.getpriceList();
            fwdscoreList = fwd.getpointList();
            findmax(request, 5, "fwd");
            request.setAttribute("total",totalPlayers+"");

            RequestDispatcher rd = request.getRequestDispatcher("rosterSelection.jsp");
            rd.forward(request, response);
        }
    }

 
    private void findmax(HttpServletRequest request, int no, String position) {
        int k = 1;
        while (k <= no) {
            if (position.equals("def")) {
                int max = Integer.parseInt(defscoreList.get(0).toString());
                int pos = 0;

                for (int i = 1; i < defscoreList.size(); i++) {
                    if (Integer.parseInt(defscoreList.get(i).toString()) > max) {
                        max = Integer.parseInt(defscoreList.get(i).toString());
                        pos = i;
                    }
                }
                sortdefnameList.add(defnameList.get(pos));
                
                defnameList.remove(pos);
                sortdefjerseyList.add(defjerseyList.get(pos));
                defjerseyList.remove(pos);
                sortdefteamList.add(defteamList.get(pos));
                defteamList.remove(pos);
                sortdefpriceList.add(defpriceList.get(pos));
                defpriceList.remove(pos);
                sortdefscoreList.add(defscoreList.get(pos));
                defscoreList.remove(pos);
            } else if (position.equals("gk")) {
                int max = Integer.parseInt(gkscoreList.get(0).toString());
                int pos = 0;
                for (int i = 1; i < gkscoreList.size(); i++) {
                    if (Integer.parseInt(gkscoreList.get(i).toString()) > max) {
                        max = Integer.parseInt(gkscoreList.get(i).toString());
                        pos = i;
                    }
                }
                sortgknameList.add(gknameList.get(pos));
                
                gknameList.remove(pos);
                sortgkjerseyList.add(gkjerseyList.get(pos));
                gkjerseyList.remove(pos);
                sortgkteamList.add(gkteamList.get(pos));
                gkteamList.remove(pos);
                sortgkpriceList.add(gkpriceList.get(pos));
                gkpriceList.remove(pos);
                sortgkscoreList.add(gkscoreList.get(pos));
                gkscoreList.remove(pos);
            } else if (position.equals("mid")) {
                
                int max = Integer.parseInt(midscoreList.get(0).toString());
                int pos = 0;

                for (int i = 1; i < midscoreList.size(); i++) {
                    if (Integer.parseInt(midscoreList.get(i).toString()) > max) {
                        
                        max = Integer.parseInt(midscoreList.get(i).toString());
                        pos = i;
                    }
                }
                
                sortmidnameList.add(midnameList.get(pos));
                
                midnameList.remove(pos);
                sortmidjerseyList.add(midjerseyList.get(pos));
                midjerseyList.remove(pos);
                sortmidteamList.add(midteamList.get(pos));
                midteamList.remove(pos);
                sortmidpriceList.add(midpriceList.get(pos));
                midpriceList.remove(pos);
                sortmidscoreList.add(midscoreList.get(pos));
                midscoreList.remove(pos);
                
            } else if (position.equals("fwd")) {
                int max = Integer.parseInt(fwdscoreList.get(0).toString());
                int pos = 0;

                for (int i = 1; i < fwdscoreList.size(); i++) {
                    if (Integer.parseInt(fwdscoreList.get(i).toString()) > max) {
                        max = Integer.parseInt(fwdscoreList.get(i).toString());
                        pos = i;
                    }
                }
                
                sortfwdnameList.add(fwdnameList.get(pos));
                
                fwdnameList.remove(pos);
                sortfwdjerseyList.add(fwdjerseyList.get(pos));
                fwdjerseyList.remove(pos);
                sortfwdteamList.add(fwdteamList.get(pos));
                fwdteamList.remove(pos);
                sortfwdpriceList.add(fwdpriceList.get(pos));
                fwdpriceList.remove(pos);
                sortfwdscoreList.add(fwdscoreList.get(pos));
                fwdscoreList.remove(pos);
            }

            k++;
        }
        if (position.equals("def")) {
            request.setAttribute("namedef", sortdefnameList);
            request.setAttribute("badgedef", sortdefjerseyList);
            request.setAttribute("teamdef", sortdefteamList);
            request.setAttribute("pricedef", sortdefpriceList);
            request.setAttribute("scoredef", sortdefscoreList);
        } else if (position.equals("gk")) {
            request.setAttribute("namegk", sortgknameList);
            request.setAttribute("badgegk", sortgkjerseyList);
            request.setAttribute("teamgk", sortgkteamList);
            request.setAttribute("pricegk", sortgkpriceList);
            request.setAttribute("scoregk", sortgkscoreList);
        } else if (position.equals("mid")) {
            
            request.setAttribute("namemid", sortmidnameList);
            request.setAttribute("badgemid", sortmidjerseyList);
            request.setAttribute("teammid", sortmidteamList);
            request.setAttribute("pricemid", sortmidpriceList);
            request.setAttribute("scoremid", sortmidscoreList);
        } else if (position.equals("fwd")) {
             
            request.setAttribute("namefwd", sortfwdnameList);
            request.setAttribute("badgefwd", sortfwdjerseyList);
            request.setAttribute("teamfwd", sortfwdteamList);
            request.setAttribute("pricefwd", sortfwdpriceList);
            request.setAttribute("scorefwd", sortfwdscoreList);
        }

    }
}
