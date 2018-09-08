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
    for (j = 1; j <= 20; j++) {
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
                    if (j == 21)
                        break;
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
                    if (j == 21)
                        break;
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
                    if (j == 21)
                        break;
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


function btninjury(from) {
    for (j = 1; j <= 20; j++) {
        document.getElementById("inj" + j).style.display = "";

    }
    console.log(from);
    if (from == 'start') {
        var page = document.getElementById("startinjbtn").value;
    } else if (from == 'prev') {
        var page = document.getElementById("previnjbtn").value;
    } else if (from == 'next') {
        var page = document.getElementById("nextinjbtn").value;
    } else if (from == 'end') {
        var page = document.getElementById("endinjbtn").value;
    }
    var xhttp;
    var selectInjury = document.getElementById("selectInjury").value;
    console.log(selectInjury);
    if (selectInjury == "all") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

                var nameArray = jsonResponse["name"];
                var teamArray = jsonResponse["team"];
                var posArray = jsonResponse["pos"];
                var desArray = jsonResponse["des"];
                var dateArray = jsonResponse["date"];
                var availArray = jsonResponse["avail"];
                var otherArray = jsonResponse["other"];

                k = 1;
                for (i = 0; i < nameArray.length; i++) {
                    document.getElementById("injname" + k).innerHTML = nameArray[i];
                    document.getElementById("injpos" + k).innerHTML = posArray[i];
                    document.getElementById("injteam" + k).innerHTML = teamArray[i];
                    document.getElementById("injdes" + k).innerHTML = desArray[i];
                    var team = teamArray[i];
                    var pos = posArray[i];
                    if (team == "HOU") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/houstongk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/dash1.png";
                        }
                    } else if (team == "CHI") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/chicagogk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/stars1.png";
                        }
                    } else if (team == "POR") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/thornsgk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/thorns1.png";
                        }
                    } else if (team == "ORL") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/orlandogk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/pride1.png";
                        }
                    } else if (team == "WAS") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/spiritgk.png";
                        } else {

                            document.getElementById("injimg" + k).src = "img/spirit1.png";
                        }
                    } else if (team == "NC") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/couragegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/courage.png";
                        }
                    } else if (team == "SEA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/seattlegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/reign1.png";
                        }
                    } else if (team == "NJ") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/skybluegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/skyblue1.png";
                        }
                    } else if (team == "UTA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/kansasgk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/utahjr.png";
                        }
                    }
                    k = eval(k) + 1;

                }
                if (k <= 20) {
                    console.log("here!");

                    while (k <= 20) {
                        document.getElementById("inj" + k).style.display = 'none';
                        k = eval(k) + 1;

                    }
                }


                document.getElementById("previnjbtn").value = otherArray[0];
                document.getElementById("nextinjbtn").value = otherArray[1];
                document.getElementById("injpage").innerHTML = page;
                if (otherArray[0] == 0) {
                    document.getElementById("previnjbtn").disabled = true;
                    document.getElementById("startinjbtn").disabled = true;

                } else {
                    document.getElementById("previnjbtn").disabled = false;
                    document.getElementById("startinjbtn").disabled = false;
                }
                if (otherArray[1] == otherArray[2]) {
                    document.getElementById("nextinjbtn").disabled = true;
                    document.getElementById("endinjbtn").disabled = true;

                } else {
                    document.getElementById("nextinjbtn").disabled = false;
                    document.getElementById("endinjbtn").disabled = false;
                }

            }
        };
        xhttp.open("GET", "injPlayerPage?inj=" + selectInjury + "&cat=all" + "&page=" + page, true);
        xhttp.send();
    } else if (selectInjury == "Goalkeeper" || selectInjury == "Defender" || selectInjury == "Midfielder" || selectInjury == "Forward") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

                var nameArray = jsonResponse["name"];
                var teamArray = jsonResponse["team"];
                var posArray = jsonResponse["pos"];
                var desArray = jsonResponse["des"];
                var dateArray = jsonResponse["date"];
                var availArray = jsonResponse["avail"];
                var otherArray = jsonResponse["other"];

                k = 1;
                for (i = 0; i < nameArray.length; i++) {
                    document.getElementById("injname" + k).innerHTML = nameArray[i];
                    document.getElementById("injpos" + k).innerHTML = posArray[i];
                    document.getElementById("injteam" + k).innerHTML = teamArray[i];
                    document.getElementById("injdes" + k).innerHTML = desArray[i];
                    var team = teamArray[i];
                    var pos = posArray[i];
                    if (team == "HOU") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/houstongk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/dash1.png";
                        }
                    } else if (team == "CHI") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/chicagogk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/stars1.png";
                        }
                    } else if (team == "POR") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/thornsgk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/thorns1.png";
                        }
                    } else if (team == "ORL") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/orlandogk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/pride1.png";
                        }
                    } else if (team == "WAS") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/spiritgk.png";
                        } else {

                            document.getElementById("injimg" + k).src = "img/spirit1.png";
                        }
                    } else if (team == "NC") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/couragegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/courage.png";
                        }
                    } else if (team == "SEA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/seattlegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/reign1.png";
                        }
                    } else if (team == "NJ") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/skybluegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/skyblue1.png";
                        }
                    } else if (team == "UTA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/kansasgk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/utahjr.png";
                        }
                    }
                    k = eval(k) + 1;

                }
                if (k <= 20) {
                    console.log("here!");

                    while (k <= 20) {
                        document.getElementById("inj" + k).style.display = 'none';
                        k = eval(k) + 1;

                    }
                }


                document.getElementById("previnjbtn").value = otherArray[0];
                document.getElementById("nextinjbtn").value = otherArray[1];
                document.getElementById("injpage").innerHTML = page;
                if (otherArray[0] == 0) {
                    document.getElementById("previnjbtn").disabled = true;
                    document.getElementById("startinjbtn").disabled = true;

                } else {
                    document.getElementById("previnjbtn").disabled = false;
                    document.getElementById("startinjbtn").disabled = false;
                }
                if (otherArray[1] == otherArray[2]) {
                    document.getElementById("nextinjbtn").disabled = true;
                    document.getElementById("endinjbtn").disabled = true;

                } else {
                    document.getElementById("nextinjbtn").disabled = false;
                    document.getElementById("endinjbtn").disabled = false;
                }

            }
        };
        xhttp.open("GET", "injPlayerPage?inj=" + selectInjury + "&cat=pos" + "&page=" + page, true);
        xhttp.send();
    } else if (selectInjury == "CHI" || selectInjury == "UTA" || selectInjury == "HOU" ||
            selectInjury == "NC" || selectInjury == "ORL" || selectInjury == "POR" || selectInjury == "SEA" ||
            selectInjury == "NJ" || selectInjury == "WAS"
            ) {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

                var nameArray = jsonResponse["name"];
                var teamArray = jsonResponse["team"];
                var posArray = jsonResponse["pos"];
                var desArray = jsonResponse["des"];
                var dateArray = jsonResponse["date"];
                var availArray = jsonResponse["avail"];
                var otherArray = jsonResponse["other"];

                k = 1;
                for (i = 0; i < nameArray.length; i++) {
                    document.getElementById("injname" + k).innerHTML = nameArray[i];
                    document.getElementById("injpos" + k).innerHTML = posArray[i];
                    document.getElementById("injteam" + k).innerHTML = teamArray[i];
                    document.getElementById("injdes" + k).innerHTML = desArray[i];
                    var team = teamArray[i];
                    var pos = posArray[i];
                    if (team == "HOU") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/houstongk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/dash1.png";
                        }
                    } else if (team == "CHI") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/chicagogk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/stars1.png";
                        }
                    } else if (team == "POR") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/thornsgk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/thorns1.png";
                        }
                    } else if (team == "ORL") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/orlandogk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/pride1.png";
                        }
                    } else if (team == "WAS") {
                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/spiritgk.png";
                        } else {

                            document.getElementById("injimg" + k).src = "img/spirit1.png";
                        }
                    } else if (team == "NC") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/couragegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/courage.png";
                        }
                    } else if (team == "SEA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/seattlegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/reign1.png";
                        }
                    } else if (team == "NJ") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/skybluegk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/skyblue1.png";
                        }
                    } else if (team == "UTA") {

                        if (pos == "GK") {
                            document.getElementById("injimg" + k).src = "img/kansasgk.png";
                        } else {
                            document.getElementById("injimg" + k).src = "img/utahjr.png";
                        }
                    }
                    k = eval(k) + 1;

                }
                if (k <= 20) {
                    console.log("here!");

                    while (k <= 20) {
                        document.getElementById("inj" + k).style.display = 'none';
                        k = eval(k) + 1;

                    }
                }


                document.getElementById("previnjbtn").value = otherArray[0];
                document.getElementById("nextinjbtn").value = otherArray[1];
                document.getElementById("injpage").innerHTML = page;
                if (otherArray[0] == 0) {
                    document.getElementById("previnjbtn").disabled = true;
                    document.getElementById("startinjbtn").disabled = true;

                } else {
                    document.getElementById("previnjbtn").disabled = false;
                    document.getElementById("startinjbtn").disabled = false;
                }
                if (otherArray[1] == otherArray[2]) {
                    document.getElementById("nextinjbtn").disabled = true;
                    document.getElementById("endinjbtn").disabled = true;

                } else {
                    document.getElementById("nextinjbtn").disabled = false;
                    document.getElementById("endinjbtn").disabled = false;
                }

            }
        };
        xhttp.open("GET", "injPlayer?inj=" + selectInjury + "&cat=team", true);
        xhttp.send();

    }
}