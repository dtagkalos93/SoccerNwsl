/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fantasy;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;



/**
 *
 * @author Mitsos-Laptop
 */
public class setPlayerssidebar {

    private List gknameList = new ArrayList();
    private List gkjerseyList = new ArrayList();
    private List gkteamList = new ArrayList();
    private List gkpriceList = new ArrayList();
    private List gkscoreList = new ArrayList();
    private List gkinjuryList = new ArrayList();
    private List sortgknameList = new ArrayList();
    private List sortgkjerseyList = new ArrayList();
    private List sortgkteamList = new ArrayList();
    private List sortgkpriceList = new ArrayList();
    private List sortgkscoreList = new ArrayList();
    private List sortgkinjuryList = new ArrayList();
    private List defnameList = new ArrayList();
    private List defjerseyList = new ArrayList();
    private List defteamList = new ArrayList();
    private List defpriceList = new ArrayList();
    private List defscoreList = new ArrayList();
    private List definjuryList = new ArrayList();
    private List sortdefnameList = new ArrayList();
    private List sortdefjerseyList = new ArrayList();
    private List sortdefteamList = new ArrayList();
    private List sortdefpriceList = new ArrayList();
    private List sortdefscoreList = new ArrayList();
    private List sortdefinjuryList = new ArrayList();
    private List midnameList = new ArrayList();
    private List midjerseyList = new ArrayList();
    private List midteamList = new ArrayList();
    private List midpriceList = new ArrayList();
    private List midscoreList = new ArrayList();
    private List midinjuryList = new ArrayList();
    private List sortmidnameList = new ArrayList();
    private List sortmidjerseyList = new ArrayList();
    private List sortmidteamList = new ArrayList();
    private List sortmidpriceList = new ArrayList();
    private List sortmidscoreList = new ArrayList();
    private List sortmidinjuryList = new ArrayList();
    private List fwdnameList = new ArrayList();
    private List fwdjerseyList = new ArrayList();
    private List fwdteamList = new ArrayList();
    private List fwdpriceList = new ArrayList();
    private List fwdscoreList = new ArrayList();
    private List fwdinjuryList = new ArrayList();
    private List sortfwdnameList = new ArrayList();
    private List sortfwdjerseyList = new ArrayList();
    private List sortfwdteamList = new ArrayList();
    private List sortfwdpriceList = new ArrayList();
    private List sortfwdscoreList = new ArrayList();
    private List sortfwdinjuryList = new ArrayList();
    private int totalPlayers;
    
    public setPlayerssidebar() {
        players gk = new players();
        gk.players("Goalkeeper", "score");
        gknameList = gk.getnameList();
        totalPlayers = totalPlayers + gknameList.size();
        gkteamList = gk.getteamList();
        gkjerseyList = gk.getjerseyList();
        gkpriceList = gk.getpriceList();
        gkscoreList = gk.getpointList();
        gkinjuryList = gk.getinjuryList();
        findmax( 2, "gk");
        players def = new players();
        def.players("Defender", "score");
        defnameList = def.getnameList();
        totalPlayers = totalPlayers + defnameList.size();
        defteamList = def.getteamList();
        defjerseyList = def.getjerseyList();
        defpriceList = def.getpriceList();
        defscoreList = def.getpointList();
        definjuryList = def.getinjuryList();
        findmax( 6, "def");
        players mid = new players();
        mid.players("Midfielder", "score");
        midnameList = mid.getnameList();
        totalPlayers = totalPlayers + midnameList.size();
        midteamList = mid.getteamList();
        midjerseyList = mid.getjerseyList();
        midpriceList = mid.getpriceList();
        midscoreList = mid.getpointList();
        midinjuryList = mid.getinjuryList();
        findmax( 6, "mid");
        players fwd = new players();
        fwd.players("Forward", "score");
        fwdnameList = fwd.getnameList();
        totalPlayers = totalPlayers + fwdnameList.size();
        fwdteamList = fwd.getteamList();
        fwdjerseyList = fwd.getjerseyList();
        fwdpriceList = fwd.getpriceList();
        fwdscoreList = fwd.getpointList();
        fwdinjuryList = fwd.getinjuryList();
        findmax( 6, "fwd");
    }

    private void findmax( int no, String position) {
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
                sortdefinjuryList.add(definjuryList.get(pos));
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
                sortgkinjuryList.add(gkinjuryList.get(pos));
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
                sortmidinjuryList.add(midinjuryList.get(pos));
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
                sortfwdinjuryList.add(fwdinjuryList.get(pos));
                fwdinjuryList.remove(pos);
            }

            k++;
        }


    }
    
    public List getsortgknameList(){
        return sortgknameList;
    }
    
    public List getsortgkjerseyList(){
        return sortgkjerseyList;
    }
    public List getsortgkteamList(){
        return sortgkteamList;
    }
    
    public List getsortgkpriceList(){
        return sortgkpriceList;
    }
    
    public List getsortgkscoreList(){
        return sortgkscoreList;
    }
    
    public List getsortgkinjuryList(){
        return sortgkinjuryList;
    }
    
     public List getsortdefnameList(){
        return sortdefnameList;
    }
    
    public List getsortdefjerseyList(){
        return sortdefjerseyList;
    }
    public List getsortdefteamList(){
        return sortdefteamList;
    }
    
    public List getsortdefpriceList(){
        return sortdefpriceList;
    }
    
    public List getsortdefscoreList(){
        return sortdefscoreList;
    }
    
    public List getsortdefinjuryList(){
        return sortdefinjuryList;
    }
    
    public List getsortmidnameList(){
        return sortmidnameList;
    }
    
    public List getsortmidjerseyList(){
        return sortmidjerseyList;
    }
    public List getsortmidteamList(){
        return sortmidteamList;
    }
    
    public List getsortmidpriceList(){
        return sortmidpriceList;
    }
    
    public List getsortmidscoreList(){
        return sortmidscoreList;
    }
    
    public List getsortmidinjuryList(){
        return sortmidinjuryList;
    }
    
    public List getsortfwdnameList(){
        return sortfwdnameList;
    }
    
    public List getsortfwdjerseyList(){
        return sortfwdjerseyList;
    }
    public List getsortfwdteamList(){
        return sortfwdteamList;
    }
    
    public List getsortfwdpriceList(){
        return sortfwdpriceList;
    }
    
    public List getsortfwdscoreList(){
        return sortfwdscoreList;
    }
    
    public List getsortfwdinjuryList(){
        return sortfwdinjuryList;
    }
    
    public String gettotalPlayers(){
        return totalPlayers+"";
    }
}