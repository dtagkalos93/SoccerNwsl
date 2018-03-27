function transOut(player){
    if (player.indexOf("selGK")!= -1) {
        var pos=player.split("selGK")[1];
        document.getElementById("imagegk" + pos).src = "img/" + 'subsgk.png';

        document.getElementById("namegk" + pos).style.backgroundColor = "#02509a";
        document.getElementById("namegk" + pos).style.border = "2px solid #02509a";
    }
    if (player.indexOf("selDEF")!= -1) {
        var pos=player.split("selDEF")[1];
        document.getElementById("defimage" + pos).src = "img/" + 'subs.png';

        document.getElementById("defname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("defname" + pos).style.border = "2px solid #02509a";
    }
    if (player.indexOf("selMID")!= -1) {
        var pos=player.split("selMID")[1];
        document.getElementById("midimage" + pos).src = "img/" + 'subs.png';

        document.getElementById("midname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("midname" + pos).style.border = "2px solid #02509a";
    }
    if (player.indexOf("selFWD")!= -1) {
        var pos=player.split("selFWD")[1];
        document.getElementById("fwdimage" + pos).src = "img/" + 'subs.png';

        document.getElementById("fwdname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("fwdname" + pos).style.border = "2px solid #02509a";
    }
    $('#players').modal('hide');
}