function injuryPlay(injuryPlayers) {
    var injuryArray = injuryPlayers.split(",");
    console.log(injuryArray.length);
    var j = 1;
    for (i = 0; i < (injuryArray.length - 1); i++) {
        var player = injuryArray[i].split("_");
        document.getElementById("injname" + j).innerHTML = player[0];
        document.getElementById("injpos" + j).innerHTML = player[1];
        document.getElementById("injteam" + j).innerHTML = player[2];
        document.getElementById("injdes" + j).innerHTML = player[3];

        var team = player[2];
        var pos = player[1];
        if (team == "HOU") {

            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/houstongk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/dash1.png";
            }
        } else if (team == "CHI") {

            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/chicagogk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/stars1.png";
            }
        } else if (team == "POR") {
            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/thornsgk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/thorns1.png";
            }
        } else if (team == "ORL") {
            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/orlandogk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/pride1.png";
            }
        } else if (team == "WAS") {
            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/spiritgk.png";
            } else {

                document.getElementById("injimg" + j).src = "img/spirit1.png";
            }
        } else if (team == "NC") {

            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/couragegk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/courage.png";
            }
        } else if (team == "SEA") {

            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/seattlegk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/reign1.png";
            }
        } else if (team == "NJ") {

            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/skybluegk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/skyblue1.png";
            }
        } else if (team == "UTA") {

            if (pos == "GK") {
                document.getElementById("injimg" + j).src = "img/kansasgk.png";
            } else {
                document.getElementById("injimg" + j).src = "img/utahjr.png";
            }
        }
        j = eval(j) + 1;

    }
    if (j < 20) {
        console.log("here");
        document.getElementById("btninj").style.display = "none";
    }
    for (j; j <= 20; j++) {
        document.getElementById("inj" + j).style.display = "none";

    }
}

function showInjury() {
    for (j=1; j <= 20; j++) {
        document.getElementById("inj" + j).style.display = "";

    }
    var xhttp;
    var selectInjury = document.getElementById("selectInjury").value;
    console.log(selectInjury);
    if (selectInjury == "all") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var injuryArray = data.split(",");
                var j = 1;
                for (i = 0; i < (injuryArray.length - 1); i++) {
                    var player = injuryArray[i].split("_");
                    document.getElementById("injname" + j).innerHTML = player[0];
                    document.getElementById("injpos" + j).innerHTML = player[1];
                    document.getElementById("injteam" + j).innerHTML = player[2];
                    document.getElementById("injdes" + j).innerHTML = player[3];

                    var team = player[2];
                    var pos = player[1];
                    if (team == "HOU") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/houstongk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/dash1.png";
                        }
                    } else if (team == "CHI") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/chicagogk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/stars1.png";
                        }
                    } else if (team == "POR") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/thornsgk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/thorns1.png";
                        }
                    } else if (team == "ORL") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/orlandogk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/pride1.png";
                        }
                    } else if (team == "WAS") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/spiritgk.png";
                        } else {

                            document.getElementById("injimg" + j).src = "img/spirit1.png";
                        }
                    } else if (team == "NC") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/couragegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/courage.png";
                        }
                    } else if (team == "SEA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/seattlegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/reign1.png";
                        }
                    } else if (team == "NJ") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/skybluegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/skyblue1.png";
                        }
                    } else if (team == "UTA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/kansasgk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/utahjr.png";
                        }
                    }
                    j = eval(j) + 1;

                }
                if (j < 20) {
                    console.log("here");
                    document.getElementById("btninj").style.display = "none";
                }
                for (j; j <= 20; j++) {
                    document.getElementById("inj" + j).style.display = "none";

                }
            }
        };
        xhttp.open("GET", "injPlayer?inj=" + selectInjury + "&cat=all", true);
        xhttp.send();
    } else if (selectInjury == "Goalkeeper" || selectInjury == "Defender" || selectInjury == "Midfielder" || selectInjury == "Forward") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var injuryArray = data.split(",");
                var j = 1;
                for (i = 0; i < (injuryArray.length - 1); i++) {
                    var player = injuryArray[i].split("_");
                    document.getElementById("injname" + j).innerHTML = player[0];
                    document.getElementById("injpos" + j).innerHTML = player[1];
                    document.getElementById("injteam" + j).innerHTML = player[2];
                    document.getElementById("injdes" + j).innerHTML = player[3];

                    var team = player[2];
                    var pos = player[1];
                    if (team == "HOU") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/houstongk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/dash1.png";
                        }
                    } else if (team == "CHI") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/chicagogk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/stars1.png";
                        }
                    } else if (team == "POR") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/thornsgk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/thorns1.png";
                        }
                    } else if (team == "ORL") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/orlandogk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/pride1.png";
                        }
                    } else if (team == "WAS") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/spiritgk.png";
                        } else {

                            document.getElementById("injimg" + j).src = "img/spirit1.png";
                        }
                    } else if (team == "NC") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/couragegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/courage.png";
                        }
                    } else if (team == "SEA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/seattlegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/reign1.png";
                        }
                    } else if (team == "NJ") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/skybluegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/skyblue1.png";
                        }
                    } else if (team == "UTA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/kansasgk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/utahjr.png";
                        }
                    }
                    j = eval(j) + 1;

                }
                if (j < 20) {
                    console.log("here");
                    document.getElementById("btninj").style.display = "none";
                }
                for (j; j <= 20; j++) {
                    document.getElementById("inj" + j).style.display = "none";

                }

            }
        };
        xhttp.open("GET", "injPlayer?inj=" + selectInjury + "&cat=pos", true);
        xhttp.send();
    } else if (selectInjury == "CHI" || selectInjury == "UTA" || selectInjury == "HOU" ||
            selectInjury == "NC" || selectInjury == "ORL" || selectInjury == "POR" || selectInjury == "SEA" ||
            selectInjury == "NJ" || selectInjury == "WAS"
            ) {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var injuryArray = data.split(",");
                var j = 1;
                for (i = 0; i < (injuryArray.length - 1); i++) {
                    var player = injuryArray[i].split("_");
                    document.getElementById("injname" + j).innerHTML = player[0];
                    document.getElementById("injpos" + j).innerHTML = player[1];
                    document.getElementById("injteam" + j).innerHTML = player[2];
                    document.getElementById("injdes" + j).innerHTML = player[3];

                    var team = player[2];
                    var pos = player[1];
                    if (team == "HOU") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/houstongk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/dash1.png";
                        }
                    } else if (team == "CHI") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/chicagogk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/stars1.png";
                        }
                    } else if (team == "POR") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/thornsgk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/thorns1.png";
                        }
                    } else if (team == "ORL") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/orlandogk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/pride1.png";
                        }
                    } else if (team == "WAS") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/spiritgk.png";
                        } else {

                            document.getElementById("injimg" + j).src = "img/spirit1.png";
                        }
                    } else if (team == "NC") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/couragegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/courage.png";
                        }
                    } else if (team == "SEA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/seattlegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/reign1.png";
                        }
                    } else if (team == "NJ") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/skybluegk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/skyblue1.png";
                        }
                    } else if (team == "UTA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + j).src = "img/kansasgk.png";
                        } else {
                            document.getElementById("injimg" + j).src = "img/utahjr.png";
                        }
                    }
                    j = eval(j) + 1;

                }
                if (j < 20) {
                    document.getElementById("btninj").style.display = "none";
                }
                for (j; j <= 20; j++) {
                    document.getElementById("inj" + j).style.display = "none";

                }

            }
        };
        xhttp.open("GET", "injPlayer?inj=" + selectInjury + "&cat=team", true);
        xhttp.send();

    }
}