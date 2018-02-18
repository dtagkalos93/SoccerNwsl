/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
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
public class allPlayers extends HttpServlet {

    private List<String> list;
    private List<String> gknameList = new ArrayList();
    private List<String> gkjerseyList = new ArrayList();
    private List<String> gkteamList = new ArrayList();
    private List<String> gkpriceList = new ArrayList();
    private List<String> gkscoreList = new ArrayList();
    private List<String> gkinjuryList = new ArrayList();
    private List<String> defnameList = new ArrayList();
    private List<String> defjerseyList = new ArrayList();
    private List<String> defteamList = new ArrayList();
    private List<String> defpriceList = new ArrayList();
    private List<String> defscoreList = new ArrayList();
    private List<String> definjuryList = new ArrayList();
    private List<String> midnameList = new ArrayList();
    private List<String> midjerseyList = new ArrayList();
    private List<String> midteamList = new ArrayList();
    private List<String> midpriceList = new ArrayList();
    private List<String> midscoreList = new ArrayList();
    private List<String> midinjuryList = new ArrayList();
    private List<String> fwdnameList = new ArrayList();
    private List<String> fwdjerseyList = new ArrayList();
    private List<String> fwdteamList = new ArrayList();
    private List<String> fwdpriceList = new ArrayList();
    private List<String> fwdscoreList = new ArrayList();
    private List<String> fwdinjuryList = new ArrayList();

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
        System.out.println("allPlayers");
        String category = request.getParameter("cat");
        list=new ArrayList<>();
        gknameList = new ArrayList<>();
        gkjerseyList = new ArrayList<>();
        gkteamList = new ArrayList<>();
        gkpriceList = new ArrayList<>();
        gkscoreList = new ArrayList<>();
        gkinjuryList = new ArrayList<>();
        defnameList = new ArrayList<>();
        defjerseyList = new ArrayList<>();
        defteamList = new ArrayList<>();
        defpriceList = new ArrayList<>();
        defscoreList = new ArrayList<>();
        definjuryList = new ArrayList<>();
        midnameList = new ArrayList<>();
        midjerseyList = new ArrayList<>();
        midteamList = new ArrayList<>();
        midpriceList = new ArrayList<>();
        midscoreList = new ArrayList<>();
        midinjuryList = new ArrayList<>();
        fwdnameList = new ArrayList<>();
        fwdjerseyList = new ArrayList<>();
        fwdteamList = new ArrayList<>();
        fwdpriceList = new ArrayList<>();
        fwdscoreList = new ArrayList<>();
        fwdinjuryList = new ArrayList<>();
        totalPlayers=0;
        players gk = new players();
        gk.players("Goalkeeper",category);
        gknameList = gk.getnameList();
        totalPlayers=totalPlayers+gknameList.size();
        gkteamList = gk.getteamList();
        gkjerseyList = gk.getjerseyList();
        gkpriceList = gk.getpriceList();
        gkscoreList = gk.getpointList();
        gkinjuryList = gk.getinjuryList();
        findmax( 2, "gk",category);
        players def = new players();
        def.players("Defender",category);
        defnameList = def.getnameList();
        totalPlayers=totalPlayers+defnameList.size();
        defteamList = def.getteamList();
        defjerseyList = def.getjerseyList();
        defpriceList = def.getpriceList();
        defscoreList = def.getpointList();
        definjuryList = def.getinjuryList();
        findmax( 8, "def",category);
        players mid = new players();
        mid.players("Midfielder",category);
        
        midnameList = mid.getnameList();
        totalPlayers=totalPlayers+midnameList.size();
        midteamList = mid.getteamList();
        midjerseyList = mid.getjerseyList();
        midpriceList = mid.getpriceList();
        midscoreList = mid.getpointList();
        midinjuryList = mid.getinjuryList();
        findmax( 5, "mid",category);
        players fwd = new players();
        fwd.players("Forward",category);
        fwdnameList = fwd.getnameList();
        totalPlayers=totalPlayers+fwdnameList.size();
        fwdteamList = fwd.getteamList();
        fwdjerseyList = fwd.getjerseyList();
        fwdpriceList = fwd.getpriceList();
        fwdscoreList = fwd.getpointList();
        fwdinjuryList = fwd.getinjuryList();
        findmax( 5, "fwd",category);
        list.add(totalPlayers+"");
        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

    private void findmax( int no, String position,String category) {
        int k = 1;  
        if(category.equals("price")){
            while (k <= no) {


            if (position.equals("def")) {
                
                double max = Double.parseDouble(defpriceList.get(0).toString());
                int pos = 0;
                for (int i = 1; i < defpriceList.size(); i++) {
                    
                    if ( Double.parseDouble(defpriceList.get(i).toString()) > max) {
                       
                        max =  Double.parseDouble(defpriceList.get(i).toString());
                        pos = i;
                    }
                }
                list.add(defnameList.get(pos));

                defnameList.remove(pos);
                list.add(defjerseyList.get(pos));
                defjerseyList.remove(pos);
                list.add(defteamList.get(pos));
                defteamList.remove(pos);
                list.add(defpriceList.get(pos));
                defpriceList.remove(pos);
                list.add(defscoreList.get(pos));
                defscoreList.remove(pos);
                list.add(definjuryList.get(pos));
                definjuryList.remove(pos);
            } else if (position.equals("gk")) {
                double max =  Double.parseDouble(gkpriceList.get(0).toString());
                int pos = 0;
               
                for (int i = 1; i < gkpriceList.size(); i++) {
                    if ( Double.parseDouble(gkpriceList.get(i).toString()) > max) {
                       
                        max =  Double.parseDouble(gkpriceList.get(i).toString());
                        pos = i;
                    }
                }
                list.add(gknameList.get(pos));
                gknameList.remove(pos);
                list.add(gkjerseyList.get(pos));
                gkjerseyList.remove(pos);
                list.add(gkteamList.get(pos));
                gkteamList.remove(pos);
                list.add(gkpriceList.get(pos));
                gkpriceList.remove(pos);
                list.add(gkscoreList.get(pos));
                gkscoreList.remove(pos);
                list.add(gkinjuryList.get(pos));
                gkinjuryList.remove(pos);
            } else if (position.equals("mid")) {
                
                double max =  Double.parseDouble(midpriceList.get(0).toString());
                int pos = 0;

                for (int i = 1; i < midpriceList.size(); i++) {
                    if (Double.parseDouble(midpriceList.get(i).toString()) > max) {

                        max = Double.parseDouble(midpriceList.get(i).toString());
                        pos = i;
                    }
                }
                

                list.add(midnameList.get(pos));

                midnameList.remove(pos);
                list.add(midjerseyList.get(pos));
                midjerseyList.remove(pos);
                list.add(midteamList.get(pos));
                midteamList.remove(pos);
                list.add(midpriceList.get(pos));
                midpriceList.remove(pos);
                list.add(midscoreList.get(pos));
                midscoreList.remove(pos);
                list.add(midinjuryList.get(pos));
                midinjuryList.remove(pos);
            } else if (position.equals("fwd")) {
                double max = Double.parseDouble(fwdpriceList.get(0).toString());
                int pos = 0;

                for (int i = 1; i < fwdpriceList.size(); i++) {
                    if (Double.parseDouble(fwdpriceList.get(i).toString()) > max) {
                        
                        max = Double.parseDouble(fwdpriceList.get(i).toString());
                        pos = i;
                    }
                }

                list.add(fwdnameList.get(pos));

                fwdnameList.remove(pos);
                list.add(fwdjerseyList.get(pos));
                fwdjerseyList.remove(pos);
                list.add(fwdteamList.get(pos));
                fwdteamList.remove(pos);
                list.add(fwdpriceList.get(pos));
                fwdpriceList.remove(pos);
                list.add(fwdscoreList.get(pos));
                fwdscoreList.remove(pos);
                list.add(fwdinjuryList.get(pos));
                fwdinjuryList.remove(pos);
            }

            k++;
        }
        }
        else{
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
                list.add(defnameList.get(pos));

                defnameList.remove(pos);
                list.add(defjerseyList.get(pos));
                defjerseyList.remove(pos);
                list.add(defteamList.get(pos));
                defteamList.remove(pos);
                list.add(defpriceList.get(pos));
                defpriceList.remove(pos);
                list.add(defscoreList.get(pos));
                defscoreList.remove(pos);
                list.add(definjuryList.get(pos));
                definjuryList.remove(pos);
            } else if (position.equals("gk")) {
                int max = Integer.parseInt(gkscoreList.get(0).toString());
                int pos = 0;
               
                for (int i = 1; i < gkscoreList.size(); i++) {
                    if (Integer.parseInt(gkscoreList.get(i).toString()) > max) {
                       
                        max = Integer.parseInt(gkscoreList.get(i).toString());
                        pos = i;
                    }
                }
                list.add(gknameList.get(pos));
                gknameList.remove(pos);
                list.add(gkjerseyList.get(pos));
                gkjerseyList.remove(pos);
                list.add(gkteamList.get(pos));
                gkteamList.remove(pos);
                list.add(gkpriceList.get(pos));
                gkpriceList.remove(pos);
                list.add(gkscoreList.get(pos));
                gkscoreList.remove(pos);
                list.add(gkinjuryList.get(pos));
                gkinjuryList.remove(pos);
            } else if (position.equals("mid")) {
                
                int max = Integer.parseInt(midscoreList.get(0).toString());
                int pos = 0;

                for (int i = 1; i < midscoreList.size(); i++) {
                    if (Integer.parseInt(midscoreList.get(i).toString()) > max) {

                        max = Integer.parseInt(midscoreList.get(i).toString());
                        pos = i;
                    }
                }
                

                list.add(midnameList.get(pos));

                midnameList.remove(pos);
                list.add(midjerseyList.get(pos));
                midjerseyList.remove(pos);
                list.add(midteamList.get(pos));
                midteamList.remove(pos);
                list.add(midpriceList.get(pos));
                midpriceList.remove(pos);
                list.add(midscoreList.get(pos));
                midscoreList.remove(pos);
                list.add(midinjuryList.get(pos));
                midinjuryList.remove(pos);
            } else if (position.equals("fwd")) {
                int max = Integer.parseInt(fwdscoreList.get(0).toString());
                int pos = 0;

                for (int i = 1; i < fwdscoreList.size(); i++) {
                    if (Integer.parseInt(fwdscoreList.get(i).toString()) > max) {
                        
                        max = Integer.parseInt(fwdscoreList.get(i).toString());
                        pos = i;
                    }
                }

                list.add(fwdnameList.get(pos));

                fwdnameList.remove(pos);
                list.add(fwdjerseyList.get(pos));
                fwdjerseyList.remove(pos);
                list.add(fwdteamList.get(pos));
                fwdteamList.remove(pos);
                list.add(fwdpriceList.get(pos));
                fwdpriceList.remove(pos);
                list.add(fwdscoreList.get(pos));
                fwdscoreList.remove(pos);
                list.add(fwdinjuryList.get(pos));
                fwdinjuryList.remove(pos);
            }

            k++;
        }
        }
        

    }

}
