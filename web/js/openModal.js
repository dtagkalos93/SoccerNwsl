//Goalkeeper
function openModalGK(i) {

    var name = document.getElementById("gkname").textContent;
    console.log(name + "heresv!");

    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitute").setAttribute('onclick', "changePlayer('gkname')");
            if (name.contains("'")) {
                console.log("Here");
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalCancelGK(i) {

    var name = document.getElementById("gkname").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('gkname')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transModalGK(i) {

    var name = document.getElementById("namegk" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("remove").setAttribute('onclick', "transOut('selGK" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transBarModalGK(i) {

    var name = document.getElementById("gkname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            for (j = 1; j <= 2; j++) {
                if (document.getElementById("imagegk" + j).src.split("/")[5] == "subsgk.png") {
                    document.getElementById("add").disabled = false;
                    break;
                } else {
                    document.getElementById("add").disabled = true;
                }
            }

            document.getElementById("modalTitleSide").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("add").setAttribute('onclick', "addTransfer('gk" + j + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("infoSide").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersSide').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

//Defender
function openModalDEF(i) {

    var name = document.getElementById("defname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("substitute").setAttribute('onclick', "changePlayer('defname" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transModalDEF(i) {

    var name = document.getElementById("defname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("remove").setAttribute('onclick', "transOut('selDEF" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transBarModalDEF(i) {

    var name = document.getElementById("namedef" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            for (j = 1; j <= 5; j++) {
                if (document.getElementById("defimage" + j).src.split("/")[5] == "subs.png") {
                    console.log("here");
                    document.getElementById("add").disabled = false;
                    break;
                } else {
                    document.getElementById("add").disabled = true;
                }
            }

            document.getElementById("modalTitleSide").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("add").setAttribute('onclick', "addTransfer('def" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }

            document.getElementById("infoSide").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersSide').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}


function openModalCancelDEF(i) {

    var name = document.getElementById("defname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('defname" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
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
            document.getElementById("substitute").setAttribute('onclick', "changePlayer('midname" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");

            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transModalMID(i) {

    var name = document.getElementById("midname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("remove").setAttribute('onclick', "transOut('selMID" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");

            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transBarModalMID(i) {

    var name = document.getElementById("namemid" + i).textContent;
    console.log(name);
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            for (j = 1; j <= 5; j++) {
                console.log(document.getElementById("midimage" + j).src.split("/")[5]);
                if (document.getElementById("midimage" + j).src.split("/")[5] == "subs.png") {
                    document.getElementById("add").disabled = false;
                    break
                } else {
                    document.getElementById("add").disabled = true;
                }
            }

            document.getElementById("modalTitleSide").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("add").setAttribute('onclick', "addTransfer('mid" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("infoSide").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersSide').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalCancelMID(i) {

    var name = document.getElementById("midname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('midname" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
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
            document.getElementById("substitute").setAttribute('onclick', "changePlayer('fwdname" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
//            document.getElementById("playerTeam").innerHTML = team;
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transModalFWD(i) {
    var name = document.getElementById("fwdname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("remove").setAttribute('onclick', "transOut('selFWD" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
//            document.getElementById("playerTeam").innerHTML = team;
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function transBarModalFWD(i) {

    var name = document.getElementById("namefwd" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            for (j = 1; j <= 3; j++) {
                if (document.getElementById("fwdimage" + j).src.split("/")[5] == "subs.png") {
                    document.getElementById("add").disabled = false;
                    break
                } else {
                    document.getElementById("add").disabled = true;
                }
            }

            document.getElementById("modalTitleSide").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("add").setAttribute('onclick', "addTransfer('fwd" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }

            document.getElementById("infoSide").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersSide').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}


function openModalCancelFWD(i) {

    var name = document.getElementById("fwdname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('fwdname" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
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
            document.getElementById("substitute").setAttribute('onclick', "changePlayer('ben" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");

            $('#players').modal({show: 'true'});

        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalcancelBEN(i) {

    var name = document.getElementById("benname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);



            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('ben" + i + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}


function openModalInfo(i) {
    var name = document.getElementById(i).textContent;
    console.log(name);
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            console.log(jsonResponse[0] + " $" + jsonResponse[2]);
            document.getElementById("modalTitleInfo").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("info").setAttribute('onclick', "openInfo()");
            $('#playersInfo').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalSubstitute(playersIDsub, playersIDafter) {
    if (playersIDafter == 'ben1') {
        var name = document.getElementById("benname1").textContent;

    } else if (playersIDafter == 'selGK') {
        var name = document.getElementById("gkname").textContent;
    } else if (playersIDafter == 'ben2' || playersIDafter == 'ben3' || playersIDafter == 'ben4') {
        var name = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
        console.log(name);
    } else if (playersIDafter.indexOf("selDEF") != -1) {
        var name = document.getElementById("defname" + playersIDafter.split('selDEF')[1]).textContent;
    } else if (playersIDafter.indexOf("selMID") != -1) {
        var name = document.getElementById("midname" + playersIDafter.split('selMID')[1]).textContent;
    } else if (playersIDafter.indexOf("selFWD") != -1) {
        var name = document.getElementById("fwdname" + playersIDafter.split('selFWD')[1]).textContent;
    }
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitute").setAttribute('onclick', "finalChange('" + playersIDsub + "','" + playersIDafter + "')");
            if (name.contains("'")) {
                var nameArray = name.split("'");
                name = nameArray[0] + "\'" + nameArray[1];
            }

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openInfo(name) {
    console.log('HEREEE!!!!');
    var gameweek = document.getElementById("gameweekid").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            console.log(document.getElementById("nameimage"));
            document.getElementById("nameimage").src = "img/players/" + name.toLowerCase() + ".png";
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
            } else if (team == 'Utah Royals FC') {
                var image = "Utah_Royals.PNG";
            }
            document.getElementById("badgeinfo").src = "img/" + image;
            document.getElementById("currgwinfo").innerHTML = "GW" + (eval(gameweek.split("-")[0].split(" ")[1]) - 1);
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
            $('#playersInfo').modal('hide');
            $('#players').modal('hide');
            $('#fixtureModal').modal('hide');
            $('#statisticsModal').modal('hide');
            $('#information').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "GetInformation?name=" + name + "&gameweekid=" + gameweek, true);
    xhttp.send();
}

function openFixture(name, team) {
    setInfo(name, "Fix");
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
                    j = eval(j) + 4;

                } else {
                    document.getElementById("fixture" + i).innerHTML = jsonResponse[j];
                    document.getElementById("date" + i).innerHTML = jsonResponse[j + 1];
                    document.getElementById("opponent" + i).innerHTML = jsonResponse[j + 2];
                    document.getElementById("result" + i).innerHTML = jsonResponse[j + 3];
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

function setInfo(name, prefix) {
    var gameweek = document.getElementById("gameweekid").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            document.getElementById("nameimage" + prefix).src = "img/players/" + name.toLowerCase() + ".png";
            document.getElementById("nameinfo" + prefix).innerHTML = jsonResponse[0];
            document.getElementById("posinfo" + prefix).innerHTML = jsonResponse[1];
            document.getElementById("teaminfo" + prefix).innerHTML = jsonResponse[2];
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
            } else if (team == 'Utah Royals FC') {
                var image = "Utah_Royals.PNG";
            }
            document.getElementById("badgeinfo" + prefix).src = "img/" + image;
        }
    };
    xhttp.open("GET", "GetInformation?name=" + name + "&gameweekid=" + gameweek, true);
    xhttp.send();

}

function openStatistic(name) {
    setInfo(name, "Stats");
    document.getElementById("backStats").setAttribute('onclick', "openInfo('" + name + "')");
    $('#information').modal('hide');
    $('#statisticsModal').modal({show: 'true'});
}

function opponent(gk, def, mid, fwd, ben) {
    var gameweek = document.getElementById("gameweekid").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            document.getElementById("oppgk").innerHTML = jsonResponse["gk"][0];
            var defTeam = jsonResponse["def"];
            console.log(defTeam);
            if (defTeam.length == 4) {
                var j = 0;
                for (i = 1; i <= 5; i++) {
                    if (i == 3) {
                        i = 4;
                    }
                    document.getElementById("oppdef" + i).innerHTML = defTeam[j];
                    j = eval(j) + 1;
                }
            } else if (defTeam.length == 5) {
                var j = 0;
                for (i = 1; i <= 5; i++) {

                    document.getElementById("oppdef" + i).innerHTML = defTeam[j];
                    j = eval(j) + 1;
                }
            } else if (defTeam.length == 3) {
                var j = 0;
                for (i = 2; i <= 4; i++) {
                    document.getElementById("oppdef" + i).innerHTML = defTeam[j];
                    j = eval(j) + 1;
                }
            }
            var midTeam = jsonResponse["mid"];
            if (midTeam.length == 4) {
                var j = 0;
                for (i = 1; i <= 5; i++) {
                    if (i == 3) {
                        i = 4;
                    }
                    document.getElementById("oppmid" + i).innerHTML = midTeam[j];
                    j = eval(j) + 1;
                }
            } else if (midTeam.length == 5) {
                var j = 0;
                for (i = 1; i <= 5; i++) {

                    document.getElementById("oppmid" + i).innerHTML = midTeam[j];
                    j = eval(j) + 1;
                }
            } else if (midTeam.length == 3) {
                var j = 0;
                for (i = 2; i <= 4; i++) {
                    document.getElementById("oppmid" + i).innerHTML = midTeam[j];
                    j = eval(j) + 1;
                }
            }
            var fwdTeam = jsonResponse["fwd"];
            if (fwdTeam.length == 2) {
                var j = 0;
                for (i = 1; i <= 3; i++) {
                    if (i == 2)
                        i = 3;
                    document.getElementById("oppfwd" + i).innerHTML = fwdTeam[j];
                    j = eval(j) + 1;
                }
            } else if (fwdTeam.length == 1) {
                document.getElementById("oppfwd2").innerHTML = fwdTeam[0];
            } else if (fwdTeam.length == 3) {
                var j = 0;
                for (i = 1; i <= 3; i++) {
                    document.getElementById("oppfwd" + i).innerHTML = fwdTeam[j];
                    j = eval(j) + 1;
                }
            }
            var benTeam = jsonResponse["ben"];
            var j = 0;
            for (i = 1; i <= 4; i++) {
                document.getElementById("oppben" + i).innerHTML = benTeam[j];
                j = eval(j) + 1;
            }



        }
    };
    xhttp.open("GET", "findOpp?gk=" + gk + "&def=" + def + "&mid=" + mid + "&fwd=" + fwd + "&ben=" + ben + "&gameweekid=" + gameweek, true);
    xhttp.send();
}


