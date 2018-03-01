/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).on("click", "#confirmation", function () {
        var team=document.getElementById("teamName").value;
        var roster= document.getElementById("playersAtt").textContent;
        
    
        window.location = "confirmationTeam?team=" +team+"&roster="+roster ;
//        $.get("enterTeam", {gk1:enterTeam}, function (){
//             window.location ="enterRoster.html";
//        });
    
});

