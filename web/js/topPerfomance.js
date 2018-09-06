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
        } else if (team == "Chicago Red Stars") {
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
            if (pos == "Goalkeeper") {
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
    badge = badge.replace(/\s/g, '');
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
        pl = eval(pl) + 1;
    }




}



function dreamTeam(team, name, pos, pts) {
    var team = team.replace('[', '');
    team = team.replace(']', '');
    team = team.replace(/\s/g, '');
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
    var pl = 1;
    document.getElementById("dreamname" + pl).innerHTML = name[0];
    document.getElementById("dreampoints" + pl).innerHTML = pts[0];
    document.getElementById("dreampos" + pl).innerHTML = 'GK';
    setDreamBadge(pl, pos[0], team[0]);
    pl = eval(pl) + 1;
    for (i = 1; i < pos.length; i++) {

        if (pos[i] == 'Defender') {
            document.getElementById("dreamname" + pl).innerHTML = name[i];
            document.getElementById("dreampoints" + pl).innerHTML = pts[i];
            document.getElementById("dreampos" + pl).innerHTML = 'DEF';
            setDreamBadge(pl, pos[i], team[i]);
            pl = eval(pl) + 1;
        }
    }
    for (i = 1; i < pos.length; i++) {
        if (pos[i] == 'Midfielder') {
            document.getElementById("dreamname" + pl).innerHTML = name[i];
            document.getElementById("dreampoints" + pl).innerHTML = pts[i];
            document.getElementById("dreampos" + pl).innerHTML = 'MID';
            setDreamBadge(pl, pos[i], team[i]);
            pl = eval(pl) + 1;
        }
    }
    for (i = 1; i < pos.length; i++) {
        if (pos[i] == 'Forward') {
            document.getElementById("dreamname" + pl).innerHTML = name[i];
            document.getElementById("dreampoints" + pl).innerHTML = pts[i];
            document.getElementById("dreampos" + pl).innerHTML = 'FWD';
            setDreamBadge(pl, pos[i], team[i]);
            pl = eval(pl) + 1;
        }
    }

}

function setDreamBadge(pl, pos, team) {
    if (team == "HoustonDash") {

        document.getElementById("dreamteam" + pl).innerHTML = "HOU";
        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/houstongk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/dash1.png";
        }
    } else if (team == "ChicagoRedStars") {

        document.getElementById("dreamteam" + pl).innerHTML = "CHI";
        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/chicagogk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/stars1.png";
        }
    } else if (team == "PortlandThornsFC") {
        document.getElementById("dreamteam" + pl).innerHTML = "POR";
        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/thornsgk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/thorns1.png";
        }
    } else if (team == "OrlandoPride") {
        document.getElementById("dreamteam" + pl).innerHTML = "ORL";
        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/orlandogk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/pride1.png";
        }
    } else if (team == "WashingtonSpirit") {
        document.getElementById("dreamteam" + pl).innerHTML = "WAS";
        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/spiritgk.png";
        } else {

            document.getElementById("dreamimage" + pl).src = "img/spirit1.png";
        }
    } else if (team == "NorthCarolinaCourage") {

        document.getElementById("dreamteam" + pl).innerHTML = "NC";
        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/couragegk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/courage.png";
        }
    } else if (team == "SeattleReignFC") {
        document.getElementById("dreamteam" + pl).innerHTML = "SEA";

        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/seattlegk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/reign1.png";
        }
    } else if (team == "SkyBlueFC") {
        document.getElementById("dreamteam" + pl).innerHTML = "NJ";

        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/skybluegk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/skyblue1.png";
        }
    } else if (team == "UtahRoyalsFC") {
        document.getElementById("dreamteam" + pl).innerHTML = "UTA";

        if (pos == "Goalkeeper") {
            document.getElementById("dreamimage" + pl).src = "img/kansasgk.png";
        } else {
            document.getElementById("dreamimage" + pl).src = "img/utahjr.png";
        }
    }
}

function injury(injuryPlayers) {
    var injuryArray = injuryPlayers.split(",");
    console.log(injuryArray.length);
    var j = 1;
    for (i = 0; i < (injuryArray.length - 1); i++) {
        var player = injuryArray[i].split("-");
        document.getElementById("injuryname" + j).innerHTML = player[0];
        document.getElementById("injurypos" + j).innerHTML = player[1];
        document.getElementById("injuryteam" + j).innerHTML = player[2];
        var team=player[2];
        var pos=player[1];
        if (team == "HOU") {

            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/houstongk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/dash1.png";
            }
        } else if (team == "CHI") {

            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/chicagogk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/stars1.png";
            }
        } else if (team == "POR") {
            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/thornsgk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/thorns1.png";
            }
        } else if (team == "ORL") {
            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/orlandogk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/pride1.png";
            }
        } else if (team == "WAS") {
            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/spiritgk.png";
            } else {

                document.getElementById("injuryimg" + j).src = "img/spirit1.png";
            }
        } else if (team == "NC") {

            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/couragegk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/courage.png";
            }
        } else if (team == "SEA") {

            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/seattlegk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/reign1.png";
            }
        } else if (team == "NJ") {

            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/skybluegk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/skyblue1.png";
            }
        } else if (team == "UTA") {

            if (pos == "GK") {
                document.getElementById("injuryimg" + j).src = "img/kansasgk.png";
            } else {
                document.getElementById("injuryimg" + j).src = "img/utahjr.png";
            }
        }
        j=eval(j)+1;
    }
}