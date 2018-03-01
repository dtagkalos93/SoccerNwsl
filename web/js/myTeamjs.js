function goalkeeper(gk) {
    var name = gk.split("-")[0];
    var team = gk.split("-")[1];
    document.getElementById("gkname").innerHTML = name;
    document.getElementById("captain1").innerHTML = name + " -GK";
    document.getElementById("viceCaptain1").innerHTML = name + " -GK";
    if (team == 'BOS') {
        var image = "breakersgk.png";
    } else if (team == 'CHI') {
        var image = "chicagogk.png";
    } else if (team == 'HOU') {
        var image = "houstongk.png";
    } else if (team == 'NC') {
        var image = "couragegk.png";
    } else if (team == 'ORL') {
        var image = "orlandogk.png";
    } else if (team == 'POR') {
        var image = "thornsgk.png";
    } else if (team == 'SEA') {
        var image = "seattlegk.png";
    } else if (team == 'NJ') {
        var image = "skybluegk.png";
    } else if (team == 'WAS') {
        var image = "spiritgk.png";
    } else if (team == 'KC') {
        var image = "kansasgk.png";
    }

    document.getElementById("gkimage").src = "img/" + image;
}

function defence(def, defNo) {
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

            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
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
        document.getElementById("selDEF1").style.marginRight = "32.5px";
        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-2";
        document.getElementById("selDEF2").style.marginRight = "32.5px";
        document.getElementById("selDEF3").className = "";
        document.getElementById("selDEF3").className = "col-md-2";
        document.getElementById("selDEF3").style.marginRight = "32.5px";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-2";
        document.getElementById("selDEF4").style.marginRight = "32.5px";
        document.getElementById("selDEF5").className = "";
        document.getElementById("selDEF5").className = "col-md-2";


        var defPlayer = def.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
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
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
            }
            document.getElementById("defimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}


function midfielder(mid, midNo) {
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
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
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
        document.getElementById("selMID1").style.marginRight = "32.5px";
        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-2";
        document.getElementById("selMID2").style.marginRight = "32.5px";
        document.getElementById("selMID3").className = "";
        document.getElementById("selMID3").className = "col-md-2";
        document.getElementById("selMID3").style.marginRight = "32.5px";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-2";
        document.getElementById("selMID4").style.marginRight = "32.5px";
        document.getElementById("selMID5").className = "";
        document.getElementById("selMID5").className = "col-md-2";
        var midPlayer = mid.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
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
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
            }
            document.getElementById("midimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}

function forward(fwd, fwdNo) {
    if (fwdNo == '2') {
        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD1").style.paddingLeft = "20%";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD2").style.display = "none";
        document.getElementById("selFWD3").style = "";
        document.getElementById("selFWD3").style.paddingRight = "20%";


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
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
            }

            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (fwdNo == '3') {


        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD3").style = "";

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
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
            }
            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (fwdNo == '1') {
        document.getElementById("selFWD1").style.display = "none";
        document.getElementById("selFWD2").style.display = "";
        document.getElementById("selFWD3").style.display = "none";


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
            if (team == 'BOS') {
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var image = "dash1.png";
            } else if (team == 'NC') {
                var image = "courage.png";
            } else if (team == 'ORL') {
                var image = "pride1.png";
            } else if (team == 'POR') {
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'KC') {
                var image = "kansas1.png";
            }
            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}

function bench(ben) {
    var benPlayer = ben.split(",");
    var name = benPlayer[0].split("-")[0];
    var team = benPlayer[0].split("-")[1];
    document.getElementById("benname" + 1).innerHTML = name;
    if (team == 'BOS') {
        var image = "breakersgk.png";
    } else if (team == 'CHI') {
        var image = "chicagogk.png";
    } else if (team == 'HOU') {
        var image = "houstongk.png";
    } else if (team == 'NC') {
        var image = "couragegk.png";
    } else if (team == 'ORL') {
        var image = "orlandogk.png";
    } else if (team == 'POR') {
        var image = "thornsgk.png";
    } else if (team == 'SEA') {
        var image = "seattlegk.png";
    } else if (team == 'NJ') {
        var image = "skybluegk.png";
    } else if (team == 'WAS') {
        var image = "spiritgk.png";
    } else if (team == 'KC') {
        var image = "kansasgk.png";
    }
    document.getElementById("benimage" + 1).src = "img/" + image;
    var i = 2;
    for (j = 1; j < 4; j++) {

        var name = benPlayer[j].split("-")[0];
        var team = benPlayer[j].split("-")[1];
        document.getElementById("benname" + i).innerHTML = name;
        if (team == 'BOS') {
            var image = "breakers1.png";
        } else if (team == 'CHI') {
            var image = "stars1.png";
        } else if (team == 'HOU') {
            var image = "dash1.png";
        } else if (team == 'NC') {
            var image = "courage.png";
        } else if (team == 'ORL') {
            var image = "pride1.png";
        } else if (team == 'POR') {
            var image = "thorns1.png";
        } else if (team == 'SEA') {
            var image = "reign1.png";
        } else if (team == 'NJ') {
            var image = "skyblue1.png";
        } else if (team == 'WAS') {
            var image = "spirit1.png";
        } else if (team == 'KC') {
            var image = "kansas1.png";
        }
        document.getElementById("benimage" + i).src = "img/" + image;
        i = i + 1;
    }
}

function captain(defence, midfielder, forward) {
    var player = defence.split(",");

    var cptNO = 2;
    var i = 0;
    while (i < (player.length)) {
        document.getElementById("captain" + cptNO).innerHTML = player[i].split("-")[0] + " -DEF";
        document.getElementById("viceCaptain" + cptNO).innerHTML = player[i].split("-")[0] + " -DEF";
        i = eval(i) + 1;
        cptNO = eval(cptNO) + 1;
    }
    player = midfielder.split(",");
    cptNO = eval(cptNO) - 1;
    i = 0;
    while (i < (player.length)) {
        document.getElementById("captain" + cptNO).innerHTML = player[i].split("-")[0] + " -MID";
        document.getElementById("viceCaptain" + cptNO).innerHTML = player[i].split("-")[0] + " -MID";
        i = eval(i) + 1;
        cptNO = eval(cptNO) + 1;
    }
    player = forward.split(",");
    cptNO = eval(cptNO) - 1;
    console.log(player);
    i = 0;
    while (i < (player.length - 1)) {

        document.getElementById("captain" + cptNO).innerHTML = player[i].split("-")[0] + " -FWD";
        document.getElementById("viceCaptain" + cptNO).innerHTML = player[i].split("-")[0] + " -FWD";
        i = eval(i) + 1;
        cptNO = eval(cptNO) + 1;
    }
}


function openModalGK(i) {

    var name = document.getElementById("gkname").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitute").onclick = "changePlayer('" + gkname + "')";
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalDEF(i) {

    var name = document.getElementById("defname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalMID(i) {

    var name = document.getElementById("midname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");

            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}


function openModalFWD(i) {

    var name = document.getElementById("fwdname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
//            document.getElementById("playerTeam").innerHTML = team;
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalBEN(i) {

    var name = document.getElementById("benname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openInfo(name) {
    var gameweek = document.getElementById("gameweekid").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);


            document.getElementById("nameinfo").innerHTML = jsonResponse[0];
            document.getElementById("posinfo").innerHTML = jsonResponse[1];
            document.getElementById("teaminfo").innerHTML = jsonResponse[2];
            var team = jsonResponse[2];
            if (team == 'Boston Breakers') {
                var image = "Boston_Breakers.png";
            } else if (team == 'Chicago Red Stars') {
                var image = "ChicagoRedStars.png";
            } else if (team == 'Houston Dash') {
                var image = "Houston_Dash.png";
            } else if (team == 'North Carolina Courage') {
                var image = "North_Carolina_Courage.png";
            } else if (team == 'Orlando Pride') {
                var image = "OrlandoPride.png";
            } else if (team == 'Portland Thorns FC') {
                var image = "Portland.png";
            } else if (team == 'Seattle Reign FC') {
                var image = "SeattleReignFC.png";
            } else if (team == 'Sky Blue FC') {
                var image = "Sky_Blue_FC.png";
            } else if (team == 'Washington Spirit') {
                var image = "Washington_Spirit.png";
            } else if (team == 'FC Kansas City') {
                var image = "kansasCity.png";
            }
            document.getElementById("badgeinfo").src = "img/" + image;
            document.getElementById("currgwinfo").innerHTML = "GW" + gameweek.split("-")[0].split(" ")[1];
            document.getElementById("currgwpointinfo").innerHTML = jsonResponse[3] + " pts";
            document.getElementById("totalpointinfo").innerHTML = jsonResponse[4] + " pts";
            document.getElementById("priceinfo").innerHTML = "$" + jsonResponse[5];
            document.getElementById("birthinfo").innerHTML = jsonResponse[6];
            document.getElementById("countryinfo").innerHTML = jsonResponse[7];
            document.getElementById("heightinfo").innerHTML = jsonResponse[8];
            document.getElementById("collegeinfo").innerHTML = jsonResponse[9];
            document.getElementById("formerinfo").innerHTML = jsonResponse[10];
            document.getElementById("fixture").setAttribute('onclick', "openFixture('" + name + "','" + team + "')");
            document.getElementById("statistics").setAttribute('onclick', "openStatistic('" + name + "')");

            $('#players').modal('hide');
            $('#fixtureModal').modal('hide');
            $('#statisticsModal').modal('hide');
            $('#information').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "GetInformation?name=" + name + "&gameweekid=" + gameweek, true);
    xhttp.send();


}

function changePlayer(playerID) {
    if (playerID == 'gkname') {

    }
}

function openFixture(name, team) {

    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            var i = 1;
            console.log(jsonResponse.length);
            for (j = 0; j < jsonResponse.length; j = j + 4) {
                if (j > 0 && jsonResponse[j] == jsonResponse[j + 4]) {
                    document.getElementById("fixture" + i).innerHTML = jsonResponse[j] + "," + jsonResponse[j + 4];
                    document.getElementById("date" + i).innerHTML = jsonResponse[j + 1] + "," + jsonResponse[j + 5];
                    document.getElementById("opponent" + i).innerHTML = jsonResponse[j + 2] + "," + jsonResponse[j + 6];
                    document.getElementById("result" + i).innerHTML = jsonResponse[j + 3] + "," + jsonResponse[j + 7];
                    j=eval(j)+4;

                } else {
                    document.getElementById("fixture" + i).innerHTML = jsonResponse[j];
                    document.getElementById("date" + i).innerHTML = jsonResponse[j+1];
                    document.getElementById("opponent" + i).innerHTML = jsonResponse[j+2];
                    document.getElementById("result" + i).innerHTML = jsonResponse[j+3];
                }


                i = eval(i) + 1;

            }

            document.getElementById("backButton").setAttribute('onclick', "openInfo('" + name + "')");
            $('#information').modal('hide');
            $('#fixtureModal').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "getFixture?team=" + team, true);
    xhttp.send();

}

function openStatistic(name) {
    document.getElementById("backButton").setAttribute('onclick', "openInfo('" + name + "')");
    $('#information').modal('hide');
    $('#statisticsModal').modal({show: 'true'});
}


$(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#prev').val();
    $.get("fixtureprev", {previous: prev}, function (responseText) {
        document.getElementById("first").style.display = "none";
        document.getElementById("last").style.display = "";

        document.getElementById("prev").value = responseText[1];
        if (responseText[1] == "Gameweek 0") {
            document.getElementById("prev").style.display = "none";
        } else {
            document.getElementById("prev").style.display = "";
        }
        document.getElementById("next").value = responseText[2];
        if (responseText[2] == "Gameweek 23") {
            document.getElementById("next").style.display = "none";
        } else {
            document.getElementById("next").style.display = "";
        }

        document.getElementById("gameweekid").innerHTML = responseText[0] + " - " + responseText[3];
        console.log(responseText[0] + " - " + responseText[3]);
        document.getElementById("monday").style.display = "none";
        document.getElementById("tuesday").style.display = "none";
        document.getElementById("wednesday").style.display = "none";
        document.getElementById("thursday").style.display = "none";
        document.getElementById("friday").style.display = "none";
        document.getElementById("saturday").style.display = "none";
        document.getElementById("sunday").style.display = "none";
        var i = 0;
        var j = 3;
        var day = "";
        for (j; j < responseText.length; j = j + 6) {
            var daystr = responseText[j].split(",");
            console.log(daystr[0] + " " + day);
            if (day != daystr[0].toLowerCase()) {
                console.log("here");
                if (day != "") {
                    for (i; i < 5; i++) {
                        document.getElementById(day + "game" + i + "id").style.display = "none";
                    }
                    day = daystr[0].toLowerCase();
                    i = 0;
                    document.getElementById(day).style.display = "";
                    document.getElementById(day + "title").innerHTML = responseText[j];
                } else {
                    day = daystr[0].toLowerCase();
                    document.getElementById(day).style.display = "";
                    document.getElementById(day + "title").innerHTML = responseText[j];

                }



            }
            document.getElementById(day + "home" + i).innerHTML = responseText[j + 1];
            document.getElementById(day + "homebadge" + i).src = "img/" + responseText[j + 2];
            document.getElementById(day + "score" + i).innerHTML = responseText[j + 3];
            document.getElementById(day + "awaybadge" + i).src = "img/" + responseText[j + 5];
            document.getElementById(day + "away" + i).innerHTML = responseText[j + 4];
            document.getElementById(day + "game" + i + "id").style.display = "";
            i = i + 1;
        }
        console.log(i);

        for (i; i < 5; i++) {
            document.getElementById(day + "game" + i + "id").style.display = "none";
        }

    });
});

$(document).on("click", "#next", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#next').val();
    $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("first").style.display = "none";
        document.getElementById("last").style.display = "";

        document.getElementById("prev").value = responseText[1];
        if (responseText[1] == "Gameweek 0") {
            document.getElementById("prev").style.display = "none";
        } else {
            document.getElementById("prev").style.display = "";
        }
        document.getElementById("next").value = responseText[2];
        if (responseText[2] == "Gameweek 23") {
            document.getElementById("next").style.display = "none";
        } else {
            document.getElementById("next").style.display = "";
        }

        document.getElementById("gameweekid").innerHTML = responseText[0] + " - " + responseText[3];
        console.log(responseText[0] + " - " + responseText[3]);
        document.getElementById("monday").style.display = "none";
        document.getElementById("tuesday").style.display = "none";
        document.getElementById("wednesday").style.display = "none";
        document.getElementById("thursday").style.display = "none";
        document.getElementById("friday").style.display = "none";
        document.getElementById("saturday").style.display = "none";
        document.getElementById("sunday").style.display = "none";
        var i = 0;
        var j = 3;
        var day = "";
        for (j; j < responseText.length; j = j + 6) {
            var daystr = responseText[j].split(",");
            console.log(daystr[0] + " " + day);
            if (day != daystr[0].toLowerCase()) {
                console.log("here");
                if (day != "") {
                    for (i; i < 5; i++) {
                        document.getElementById(day + "game" + i + "id").style.display = "none";
                    }
                    day = daystr[0].toLowerCase();
                    i = 0;
                    document.getElementById(day).style.display = "";
                    document.getElementById(day + "title").innerHTML = responseText[j];
                } else {
                    day = daystr[0].toLowerCase();
                    document.getElementById(day).style.display = "";
                    document.getElementById(day + "title").innerHTML = responseText[j];

                }



            }
            document.getElementById(day + "home" + i).innerHTML = responseText[j + 1];
            document.getElementById(day + "homebadge" + i).src = "img/" + responseText[j + 2];
            document.getElementById(day + "score" + i).innerHTML = responseText[j + 3];
            document.getElementById(day + "awaybadge" + i).src = "img/" + responseText[j + 5];
            document.getElementById(day + "away" + i).innerHTML = responseText[j + 4];
            document.getElementById(day + "game" + i + "id").style.display = "";
            i = i + 1;
        }
        console.log(i);

        for (i; i < 5; i++) {
            document.getElementById(day + "game" + i + "id").style.display = "none";
        }
    });
});
