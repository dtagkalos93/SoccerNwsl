function dreamTeam(team, name, pos, pts, btn) {
    if (btn == 'main') {
        var team = team.replace('[', '');
        team = team.replace(']', '');
        team = team.split(",");
        var name = name.replace('[', '');
        name = name.replace(']', '');
        name = name.replace(/\s/g, '');
        name = name.split(",");
        var pos = pos.replace('[', '');
        pos = pos.replace(']', '');
        pos = pos.replace(/\s/g, '');
        pos = pos.split(",");
        var pts = pts.replace('[', '');
        pts = pts.replace(']', '');
        pts = pts.replace(/\s/g, '');
        pts = pts.split(",");
    }

    var pl = 0;
    document.getElementById("gkname").innerHTML = name[0];
    document.getElementById("ptsgk").innerHTML = pts[0];
    setDreamBadge(pl, pos[0], team[0]);
    var tempPlayers = "";
    for (i = 1; i < pos.length; i++) {

        if (pos[i] == 'Defender') {
            tempPlayers = tempPlayers + name[i] + "-" + team[i] + "-" + pts[i] + ",";
            pl = eval(pl) + 1;
        }
    }
    defenceDream(tempPlayers, pl);
    pl = 0;
    tempPlayers = "";
    for (i = 1; i < pos.length; i++) {
        if (pos[i] == 'Midfielder') {
            tempPlayers = tempPlayers + name[i] + "-" + team[i] + "-" + pts[i] + ",";
            pl = eval(pl) + 1;
        }
    }
    midfielderDream(tempPlayers, pl);
    pl = 0;
    tempPlayers = "";
    for (i = 1; i < pos.length; i++) {
        if (pos[i] == 'Forward') {
            tempPlayers = tempPlayers + name[i] + "-" + team[i] + "-" + pts[i] + ",";
            pl = eval(pl) + 1;
        }
    }
    forwardDream(tempPlayers, pl);
}

//in front of team there are one space
function defenceDream(def, defNo) {
    if (defNo == '4') {
        document.getElementById("selDEF1").style = "";
        document.getElementById("selDEF2").style = "";
        document.getElementById("selDEF3").style = "";
        document.getElementById("selDEF3").style.display = "none";
        document.getElementById("selDEF4").style = "";
        document.getElementById("selDEF5").style = "";
        document.getElementById("selDEF1").className = "";
        document.getElementById("selDEF1").className = "col-md-3";
        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-3";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-3";
        document.getElementById("selDEF5").className = "";
        document.getElementById("selDEF5").className = "col-md-3";


        var defPlayer = def.split(",");


        var i = 1;
        for (j = 0; j < 4; j++) {
            if (i == 3) {
                i = i + 1;
            }
            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("ptsdef" + i).innerHTML = defPlayer[j].split("-")[2];

            document.getElementById("defimage" + i).style.marginLeft = "";
            console.log("/" + team + "/");

            if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }
            document.getElementById("defimage" + i).src = "img/" + image;

            i = i + 1;

        }



    } else if (defNo == '5') {
        document.getElementById("selDEF1").style = "";
        document.getElementById("selDEF2").style = "";
        document.getElementById("selDEF3").style = "";
        document.getElementById("selDEF4").style = "";
        document.getElementById("selDEF5").style = "";
        document.getElementById("selDEF1").className = "";
        document.getElementById("selDEF1").className = "col-md-2";
        document.getElementById("selDEF1").style.marginRight = "32px";
        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-2";
        document.getElementById("selDEF2").style.marginRight = "32px";
        document.getElementById("selDEF3").className = "";
        document.getElementById("selDEF3").className = "col-md-2";
        document.getElementById("selDEF3").style.marginRight = "32px";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-2";
        document.getElementById("selDEF4").style.marginRight = "32px";
        document.getElementById("selDEF5").className = "";
        document.getElementById("selDEF5").className = "col-md-2";


        var defPlayer = def.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("ptsdef" + i).innerHTML = defPlayer[j].split("-")[2];

            document.getElementById("defimage" + i).style.marginLeft = "27px";
                       if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }
            document.getElementById("defimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (defNo == '3') {



        document.getElementById("selDEF1").style = "";
        document.getElementById("selDEF1").style.display = "none";
        document.getElementById("selDEF2").style = "";
        document.getElementById("selDEF3").style = "";
        document.getElementById("selDEF4").style = "";
        document.getElementById("selDEF5").style = "";
        document.getElementById("selDEF5").style.display = "none";


        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-4";
        document.getElementById("selDEF3").className = "";
        document.getElementById("selDEF3").className = "col-md-4";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-4";


        var defPlayer = def.split(",");
        var i = 2;
        for (j = 0; j < 3; j++) {

            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("ptsdef" + i).innerHTML = defPlayer[j].split("-")[2];

            document.getElementById("defimage" + i).style.marginLeft = "";
                       if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }
            document.getElementById("defimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}

function midfielderDream(mid, midNo) {
    if (midNo == '4') {
        document.getElementById("selMID1").style = "";
        document.getElementById("selMID2").style = "";
        document.getElementById("selMID3").style = "";
        document.getElementById("selMID3").style.display = "none";
        document.getElementById("selMID4").style = "";
        document.getElementById("selMID5").style = "";
        document.getElementById("selMID1").className = "";
        document.getElementById("selMID1").className = "col-md-3";
        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-3";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-3";
        document.getElementById("selMID5").className = "";
        document.getElementById("selMID5").className = "col-md-3";
        var midPlayer = mid.split(",");
        var i = 1;
        for (j = 0; j < 4; j++) {
            if (i == 3) {
                i = i + 1;
            }
            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;
            document.getElementById("ptsmid" + i).innerHTML = midPlayer[j].split("-")[2];

            document.getElementById("midimage" + i).style.marginLeft = "";

                       if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }

            document.getElementById("midimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (midNo == '5') {
        document.getElementById("selMID1").style = "";
        document.getElementById("selMID2").style = "";
        document.getElementById("selMID3").style = "";
        document.getElementById("selMID4").style = "";
        document.getElementById("selMID5").style = "";
        document.getElementById("selMID1").className = "";
        document.getElementById("selMID1").className = "col-md-2";
        document.getElementById("selMID1").style.marginRight = "32px";
        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-2";
        document.getElementById("selMID2").style.marginRight = "32px";
        document.getElementById("selMID3").className = "";
        document.getElementById("selMID3").className = "col-md-2";
        document.getElementById("selMID3").style.marginRight = "32px";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-2";
        document.getElementById("selMID4").style.marginRight = "32px";
        document.getElementById("selMID5").className = "";
        document.getElementById("selMID5").className = "col-md-2";
        var midPlayer = mid.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;
            document.getElementById("ptsmid" + i).innerHTML = midPlayer[j].split("-")[2];

            document.getElementById("midimage" + i).style.marginLeft = "27px";
                        if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }
            document.getElementById("midimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (midNo == '3') {
        document.getElementById("selMID1").style = "";
        document.getElementById("selMID1").style.display = "none";
        document.getElementById("selMID2").style = "";
        document.getElementById("selMID3").style = "";
        document.getElementById("selMID4").style = "";
        document.getElementById("selMID5").style = "";
        document.getElementById("selMID5").style.display = "none";


        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-4";
        document.getElementById("selMID3").className = "";
        document.getElementById("selMID3").className = "col-md-4";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-4";

        var midPlayer = mid.split(",");
        var i = 2;
        for (j = 0; j < 3; j++) {

            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;
            document.getElementById("ptsmid" + i).innerHTML = midPlayer[j].split("-")[2];

            document.getElementById("midimage" + i).style.marginLeft = "";
                        if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }
            document.getElementById("midimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}




function forwardDream(fwd, fwdNo) {
    if (fwdNo == '2') {
        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD1").style.paddingLeft = "15%";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD2").style.display = "none";
        document.getElementById("selFWD3").style = "";
        document.getElementById("selFWD3").style.paddingRight = "15%";


        document.getElementById("selFWD1").className = "";
        document.getElementById("selFWD1").className = "col-md-6";

        document.getElementById("selFWD3").className = "";
        document.getElementById("selFWD3").className = "col-md-6";
        ;
        var fwdPlayer = fwd.split(",");
        var i = 1;
        for (j = 0; j < 2; j++) {
            if (i == 2) {
                i = i + 1;
            }
            var name = fwdPlayer[j].split("-")[0];
            var team = fwdPlayer[j].split("-")[1];
            document.getElementById("fwdname" + i).innerHTML = name;
            document.getElementById("ptsfwd" + i).innerHTML = fwdPlayer[j].split("-")[2];
                        if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }

            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (fwdNo == '3') {


        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD3").style = "";
        document.getElementById("selFWD1").style.paddingLeft = "0%";
        document.getElementById("selFWD1").style.paddingRight = "0%";
        document.getElementById("selFWD2").style.paddingLeft = "0%";
        document.getElementById("selFWD2").style.paddingRight = "0%";
        document.getElementById("selFWD3").style.paddingLeft = "0%";
        document.getElementById("selFWD3").style.paddingRight = "0%";

        document.getElementById("selFWD1").className = "";
        document.getElementById("selFWD1").className = "col-md-4";
        document.getElementById("selFWD2").className = "";
        document.getElementById("selFWD2").className = "col-md-4";
        document.getElementById("selFWD3").className = "";
        document.getElementById("selFWD3").className = "col-md-4";


        var fwdPlayer = fwd.split(",");
        var i = 1;

        for (j = 0; j < 3; j++) {

            var name = fwdPlayer[j].split("-")[0];
            var team = fwdPlayer[j].split("-")[1];
            document.getElementById("fwdname" + i).innerHTML = name;
            document.getElementById("ptsfwd" + i).innerHTML = fwdPlayer[j].split("-")[2];

                      if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }
            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (fwdNo == '1') {
        document.getElementById("selFWD1").style.display = "none";
        document.getElementById("selFWD2").style.display = "";
        document.getElementById("selFWD3").style.display = "none";
        document.getElementById("selFWD1").style.paddingLeft = "0%";
        document.getElementById("selFWD1").style.paddingRight = "0%";
        document.getElementById("selFWD2").style.paddingLeft = "0%";
        document.getElementById("selFWD2").style.paddingRight = "0%";
        document.getElementById("selFWD3").style.paddingLeft = "0%";
        document.getElementById("selFWD3").style.paddingRight = "0%";

        document.getElementById("selFWD1").style.right = "0%";
        document.getElementById("selFWD2").style.right = "0%";
        document.getElementById("selFWD3").style.left = "0%";

        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD1").style.display = "none";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD3").style.display = "none";


        document.getElementById("selFWD2").className = "";
        document.getElementById("selFWD2").className = "col-md-12";


        var fwdPlayer = fwd.split(",");
        var i = 2;
        for (j = 0; j < 1; j++) {

            var name = fwdPlayer[j].split("-")[0];
            var team = fwdPlayer[j].split("-")[1];
            document.getElementById("fwdname" + i).innerHTML = name;
            document.getElementById("ptsfwd" + i).innerHTML = fwdPlayer[j].split("-")[2];
            if (team == ' Chicago Red Stars' ||team == 'Chicago Red Stars' ) {
                var teamName = ' Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == ' Houston Dash' ||team == 'Houston Dash') {
                var teamName = ' Houston Dash';

                var image = "dash1.png";
            } else if (team == ' North Carolina Courage'  ||team == 'North Carolina Courage') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == ' Portland Thorns FC' ||team == 'Portland Thorns FC') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == ' Seattle Reign FC' ||team == 'Seattle Reign FC') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == ' Sky Blue FC' ||team == 'Sky Blue FC') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == ' Washington Spirit' ||team == 'Washington Spirit') {
                var image = "spirit1.png";
            } else if (team == ' Utah Royals FC' ||team == 'Utah Royals FC') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            } else if (team == ' Orlando Pride' ||team == 'Orlando Pride') {
                var image = "pride1.png";

            }
            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}



function setDreamBadge(pl, pos, team) {
    if (team == "Houston Dash") {

        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/houstongk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/dash1.png";
        }
    } else if (team == "Chicago Red Stars") {

        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/chicagogk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/stars1.png";
        }
    } else if (team == "Portland Thorns FC") {
        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/thornsgk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/thorns1.png";
        }
    } else if (team == "Orlando Pride") {
        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/orlandogk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/pride1.png";
        }
    } else if (team == "Washington Spirit") {
        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/spiritgk.png";
        } else {

            document.getElementById("dreamimage" + pl).src = "img/spirit1.png";
        }
    } else if (team == "North Carolina Courage") {

        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/couragegk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/courage.png";
        }
    } else if (team == "Seattle Reign FC") {

        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/seattlegk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/reign1.png";
        }
    } else if (team == "Sky Blue FC") {

        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/skybluegk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/skyblue1.png";
        }
    } else if (team == "Utah Royals FC") {

        if (pos == "Goalkeeper") {
            document.getElementById("gkimage").src = "img/kansasgk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/utahjr.png";
        }
    }
}

function bestPlayer(player) {
    var name = player.split("-")[0];
    var team = player.split("-")[1];
    var pos = player.split("-")[2];
    var pts = player.split("-")[3];
    if (team == "Houston Dash") {

        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/houstongk.png";
        } else {
            document.getElementById("bestImage").src = "img/dash1.png";
        }
    } else if (team == "Chicago Red Stars") {

        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/chicagogk.png";
        } else {
            document.getElementById("bestImage").src = "img/stars1.png";
        }
    } else if (team == "Portland Thorns FC") {
        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/thornsgk.png";
        } else {
            document.getElementById("bestImage").src = "img/thorns1.png";
        }
    } else if (team == "Orlando Pride") {
        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/orlandogk.png";
        } else {
            document.getElementById("bestImage").src = "img/pride1.png";
        }
    } else if (team == "Washington Spirit") {
        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/spiritgk.png";
        } else {

            document.getElementById("bestImage").src = "img/spirit1.png";
        }
    } else if (team == "North Carolina Courage") {

        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/couragegk.png";
        } else {
            document.getElementById("bestImage").src = "img/courage.png";
        }
    } else if (team == "Seattle Reign FC") {

        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/seattlegk.png";
        } else {
            document.getElementById("bestImage").src = "img/reign1.png";
        }
    } else if (team == "Sky Blue FC") {

        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/skybluegk.png";
        } else {
            document.getElementById("bestImage").src = "img/skyblue1.png";
        }
    } else if (team == "Utah Royals FC") {

        if (pos == "Goalkeeper") {
            document.getElementById("bestImage").src = "img/kansasgk.png";
        } else {
            document.getElementById("bestImage").src = "img/utahjr.png";
        }
    }
    document.getElementById("bestName").innerHTML = name;
    document.getElementById("bestteam").innerHTML = team;
    document.getElementById("bestpts").innerHTML = pts;
}


function btnDream(btn) {
    if (btn == 'prev') {
        var fix = document.getElementById("prevDream").value;
    }
    else{
        var fix = document.getElementById("nextDream").value;
    }
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            dreamTeam(jsonResponse["team"], jsonResponse["name"], jsonResponse["pos"], jsonResponse["score"], "btn");
            var other = jsonResponse["other"];
            document.getElementById("prevDream").value = other[0];
            if (other[0] == '0') {
                document.getElementById("prevDream").style.display = "none";
            } else {
                document.getElementById("prevDream").style.display = "";
            }
            document.getElementById("nextDream").value = other[1];
            if (other[1] == '24' || other[1] == other[2]) {
                document.getElementById("nextDream").style.display = "none";
            } else {
                document.getElementById("nextDream").style.display = "";
            }

            document.getElementById("dreamGW").innerHTML = "Gameweek " + fix;
            bestPlayer(other[3]);
            document.getElementById("dreamTotalScore").innerHTML = other[4];


        }
    };
    xhttp.open("GET", "dreamBtn?fix=" + fix, true);
    xhttp.send();


}