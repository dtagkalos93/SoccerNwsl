function topPlayers(top) {
    var top = top.replace('[', '');
    top = top.replace(']', '');

    top = top.split(",");
    var pl = 1;
    for (i = 0; i < top.length; i++) {
        var name = top[i].split("-")[0];
        console.log(top[i].split("-"));
        var team = top[i].split("-")[1];
        var pos = top[i].split("-")[2];
        var points = top[i].split("-")[3] + " - " + top[i].split("-")[4];
        document.getElementById("topgwname" + pl).innerHTML = name;
        document.getElementById("topgwpoint" + pl).innerHTML = points + "pts";
        if (team == "Houston Dash") {
            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/houstongk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/dash1.png";
            }
        } else if (team = "Chicago Red Stars") {
            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/chicagogk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/stars1.png";
            }
        } else if (team == "Portland Thorns FC") {
            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/thornsgk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/thorns1.png";
            }
        } else if (team == "Orlando Pride") {
            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/orlandogk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/pride1.png";
            }
        } else if (team == "Washington Spirit") {

            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/spiritgk.png";
            } else {

                document.getElementById("topgwimage" + pl).src = "img/spirit1.png";
            }
        } else if (team == "North Carolina Courage") {
            if (pos.equals("Goalkeeper")) {
                document.getElementById("topgwimage" + pl).src = "img/couragegk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/courage.png";
            }
        } else if (team == "Seattle Reign FC") {
            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/seattlegk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/reign1.png";
            }
        } else if (team == "Sky Blue FC") {
            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/skybluegk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/skyblue1.png";
            }
        } else if (team == "Utah Royals FC") {
            if (pos == "Goalkeeper") {
                document.getElementById("topgwimage" + pl).src = "img/kansasgk.png";
            } else {
                document.getElementById("topgwimage" + pl).src = "img/utahjr.png";
            }
        }
        pl = eval(pl) + 1;
    }


}



function standings(team, badge, gp, wins, looses, draws, gd, pts) {
    
    var team = team.replace('[', '');
    team = team.replace(']', '');
    team = team.split(",");
    var badge = badge.replace('[', '');
    badge = badge.replace(']', '');
    badge = badge.replace(/\s/g,'');
    badge = badge.split(",");
    console.log(badge);
    var gp = gp.replace('[', '');
    gp = gp.replace(']', '');
    gp = gp.split(",");
    var wins = wins.replace('[', '');
    wins = wins.replace(']', '');
    wins = wins.split(",");
    var looses = looses.replace('[', '');
    looses = looses.replace(']', '');
    looses = looses.split(",");
    var draws = draws.replace('[', '');
    draws = draws.replace(']', '');
    draws = draws.split(",");
    var gd = gd.replace('[', '');
    gd = gd.replace(']', '');
    gd = gd.split(",");
    var pts = pts.replace('[', '');
    pts = pts.replace(']', '');
    pts = pts.split(",");
    var pl = 1;
    for (i = 0; i < pts.length; i++) {
        document.getElementById("standsimage" + pl).src = "img/" + badge[i];
        document.getElementById("standsteam" + pl).innerHTML = team[i];
        document.getElementById("standsgp" + pl).innerHTML = gp[i];
        document.getElementById("standswins" + pl).innerHTML = wins[i];
        document.getElementById("standslooses" + pl).innerHTML = looses[i];
        document.getElementById("standsdraws" + pl).innerHTML = draws[i];
        document.getElementById("standsgd" + pl).innerHTML = gd[i];
        document.getElementById("standspts" + pl).innerHTML = pts[i];
        pl=eval(pl)+1;
    }




}