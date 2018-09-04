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
 * @author Mitsos
 */
public class dreamBtn extends HttpServlet {

    private Map<String, List<String>> list;
    private List<String> fixList;

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
        list = new HashMap<>();
        fixList = new ArrayList<>();
        int fix = Integer.parseInt(request.getParameter("fix"));
        fixList.add((fix - 1) + "");
        fixList.add((fix + 1) + "");
        dreamTeam dream = new dreamTeam(fix);
        deadLIne line = new deadLIne();
        int fixNo = Integer.parseInt(line.getGameweek().split(" ")[1]);
        list.put("team", dream.getTeam());
        list.put("name", dream.getName());
        list.put("pos", dream.getPos());
        list.put("score", dream.getScore());
        fixList.add(fixNo+"");
        fixList.add(dream.getbestPlayer());
        fixList.add(dream.gettotalScore());
        list.put("other", fixList);
        String json = new Gson().toJson(list);
        System.out.println(json);
        response.setContentType("application/json");  // Set content type of the response so that jQuery knows what it can expect.
        response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
        response.getWriter().write(json);
    }

}
