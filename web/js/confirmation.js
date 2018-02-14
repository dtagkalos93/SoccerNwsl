/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).on("click", "#enterTeam", function () {
    var enterTeam=document.getElementById("playersAtt").textContent;
        
    
        window.location = "confirmationTeam?name=" + enterTeam;
//        $.get("enterTeam", {gk1:enterTeam}, function (){
//             window.location ="enterRoster.html";
//        });
    


});

