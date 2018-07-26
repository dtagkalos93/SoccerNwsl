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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mitsos-Laptop
 */
public class dream extends HttpServlet {

    private Map<String, List<String>> list=new HashMap<>(); 

    private List<String> other = new ArrayList<>();
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
        int fixNo = Integer.parseInt(request.getParameter("fixNo"));
        deadLIne lIne=new deadLIne();
        dreamTeam dreamteam = new dreamTeam(fixNo);
        System.out.println("!!"+dreamteam.getName());
        list.put("name", dreamteam.getName());
        list.put("pos", dreamteam.getPos());
        list.put("score", dreamteam.getScore());
        list.put("team", dreamteam.getTeam());
        other.add((fixNo-1)+"");
        other.add((fixNo+1)+"");
        other.add(lIne.getGameweek().split(" ")[1]);
        other.add(dreamteam.getbestPlayer());
        other.add(dreamteam.gettotalScore());
        
        
        list.put("other", other);

        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);

    }

}
