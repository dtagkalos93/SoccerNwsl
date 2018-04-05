function transOut(player) {
    if (player.indexOf("selGK") != -1) {
        var pos = player.split("selGK")[1];
        document.getElementById("imagegk" + pos).src = "img/" + 'subsgk.png';
        document.getElementById("team" + pos).innerHTML = "";
        document.getElementById("namegk" + pos).style.backgroundColor = "#02509a";
        document.getElementById("namegk" + pos).style.border = "2px solid #02509a";
        document.getElementById("namegk" + pos).style.opacity = "0.7";
        document.getElementById("pricegk" + pos).style.opacity = "0.7";
        for (k = 1; k <= 2; k++) {
            if (document.getElementById("namegk" + pos).textContent == document.getElementById("gkname" + k).textContent) {
                document.getElementById("gk" + k).style.pointerEvents = 'auto';
                document.getElementById("gk" + k).style.opacity = '1';
                break;
            }

        }
        document.getElementById("selGK" + pos).setAttribute('onclick', 'changeGK()');
        var price = document.getElementById("pricegk" + pos).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) - 1;
        document.getElementById("allPlayers").style.color = '#d4213c';
        document.getElementById("totalPlayers").style.color = '#d4213c';

    }
    if (player.indexOf("selDEF") != -1) {
        var pos = player.split("selDEF")[1];
        document.getElementById("defimage" + pos).src = "img/" + 'subs.png';
        document.getElementById("team" + (eval(pos) + 2)).innerHTML = "";
        document.getElementById("defname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("defname" + pos).style.border = "2px solid #02509a";
        document.getElementById("defname" + pos).style.opacity = "0.7";
        document.getElementById("defprice" + pos).style.opacity = "0.7";
        for (k = 1; k <= 8; k++) {
            if (document.getElementById("defname" + pos).textContent == document.getElementById("namedef" + k).textContent) {
                document.getElementById("def" + k).style.pointerEvents = 'auto';
                document.getElementById("def" + k).style.opacity = '1';
                break;
            }

        }
        document.getElementById("selDEF" + pos).setAttribute('onclick', 'changeDEF()');

        var price = document.getElementById("defprice" + pos).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) - 1;
        document.getElementById("allPlayers").style.color = '#d4213c';
        document.getElementById("totalPlayers").style.color = '#d4213c';
    }
    if (player.indexOf("selMID") != -1) {
        var pos = player.split("selMID")[1];
        document.getElementById("midimage" + pos).src = "img/" + 'subs.png';
        document.getElementById("team" + (eval(pos) + 7)).innerHTML = "";
        document.getElementById("midname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("midname" + pos).style.border = "2px solid #02509a";
        document.getElementById("midname" + pos).style.opacity = "0.7";
        document.getElementById("midprice" + pos).style.opacity = "0.7";
        for (k = 1; k <= 5; k++) {
            if (document.getElementById("midname" + pos).textContent == document.getElementById("namemid" + k).textContent) {
                document.getElementById("mid" + k).style.pointerEvents = 'auto';
                document.getElementById("mid" + k).style.opacity = '1';
                break;
            }

        }
        document.getElementById("selMID" + pos).setAttribute('onclick', 'changeMID()');

        var price = document.getElementById("midprice" + pos).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) - 1;
        document.getElementById("allPlayers").style.color = '#d4213c';
        document.getElementById("totalPlayers").style.color = '#d4213c';
    }
    if (player.indexOf("selFWD") != -1) {
        var pos = player.split("selFWD")[1];
        document.getElementById("fwdimage" + pos).src = "img/" + 'subs.png';
        document.getElementById("team" + (eval(pos) + 12)).innerHTML = "";
        document.getElementById("fwdname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("fwdname" + pos).style.border = "2px solid #02509a";
        document.getElementById("fwdname" + pos).style.opacity = "0.7";
        document.getElementById("fwdprice" + pos).style.opacity = "0.7";
        for (k = 1; k <= 5; k++) {
            if (document.getElementById("fwdname" + pos).textContent == document.getElementById("namefwd" + k).textContent) {
                document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                document.getElementById("fwd" + k).style.opacity = '1';
                break;
            }

        }
        document.getElementById("selFWD" + pos).setAttribute('onclick', 'changeFWD()');

        var price = document.getElementById("fwdprice" + pos).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) - 1;
        document.getElementById("allPlayers").style.color = '#d4213c';
        document.getElementById("totalPlayers").style.color = '#d4213c';
    }
    checkTrans();
    setTeamNo();
    checkNoDisableSide();
    $('#players').modal('hide');
}

function addTransfer(player) {
    if (player.indexOf("gk") != -1) {
        for (j = 1; j <= 2; j++) {
            console.log(document.getElementById("imagegk" + j).src.split("/")[5]);
            if (document.getElementById("imagegk" + j).src.split("/")[5] == "subsgk.png") {
                break;
            }

        }
        var pos = player.split("gk")[1];
        document.getElementById("imagegk" + j).src = "img/" + document.getElementById("gkimage" + pos).src.split("/")[5];
        document.getElementById("namegk" + j).innerHTML = document.getElementById("gkname" + pos).textContent;
        document.getElementById("pricegk" + j).innerHTML = document.getElementById("gkprice" + pos).textContent + "m";
        document.getElementById("team" + (j)).innerHTML = document.getElementById("gkteam" + pos).textContent;

        if (document.getElementById("gkinjury" + pos).classList.contains("glyphicon-alert")) {
            document.getElementById("namegk" + j).style.backgroundColor = "#c0020d";
            document.getElementById("namegk" + j).style.border = "2px solid #c0020d";
        }
        document.getElementById("namegk" + j).style.opacity = "1";
        document.getElementById("pricegk" + j).style.opacity = "1";
        document.getElementById("selGK" + j).setAttribute('onclick', "transModalGK('" + j + "')");

        var price = document.getElementById("pricegk" + j).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) + 1;
        if (document.getElementById("totalPlayers").textContent == "15") {
            document.getElementById("allPlayers").style.color = '#0ea331';
            document.getElementById("totalPlayers").style.color = '#0ea331';
        } else {
            document.getElementById("allPlayers").style.color = '#d4213c';
            document.getElementById("totalPlayers").style.color = '#d4213c';
        }
        if (document.getElementById("remainPrice").textContent < 0.0) {
            document.getElementById("remainPrice").style.color = '#d4213c';
            document.getElementById("dollar").style.color = '#d4213c';
            document.getElementById("makeTrans").disabled = true;
            console.log(document.getElementById("makeTrans").disabled);
        } else {
            document.getElementById("remainPrice").style.color = '#0ea331';
            document.getElementById("dollar").style.color = '#0ea331';

        }

    } else if (player.indexOf("def") != -1) {
        for (j = 1; j <= 5; j++) {
            console.log(document.getElementById("defimage" + j).src.split("/")[5]);
            if (document.getElementById("defimage" + j).src.split("/")[5] == "subs.png") {
                break;
            }

        }
        var pos = player.split("def")[1];
        document.getElementById("defimage" + j).src = "img/" + document.getElementById("imagedef" + pos).src.split("/")[5];
        document.getElementById("defname" + j).innerHTML = document.getElementById("namedef" + pos).textContent;
        document.getElementById("defprice" + j).innerHTML = document.getElementById("pricedef" + pos).textContent + "m";
        document.getElementById("team" + (eval(j) + 2)).innerHTML = document.getElementById("teamdef" + pos).textContent;

        if (document.getElementById("definjury" + pos).classList.contains("glyphicon-alert")) {
            document.getElementById("defname" + j).style.backgroundColor = "#c0020d";
            document.getElementById("defname" + j).style.border = "2px solid #c0020d";
            document.getElementById("defprice" + j).style.backgroundColor = "#c0020d";
            document.getElementById("defprice" + j).style.border = "2px solid #c0020d";
        }
        document.getElementById("defname" + j).style.opacity = "1";
        document.getElementById("defprice" + j).style.opacity = "1";
        document.getElementById("selDEF" + j).setAttribute('onclick', "transModalDEF('" + j + "')");
        var price = document.getElementById("defprice" + j).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) + 1;
        if (document.getElementById("totalPlayers").textContent == "15") {
            document.getElementById("allPlayers").style.color = '#0ea331';
            document.getElementById("totalPlayers").style.color = '#0ea331';
        } else {
            document.getElementById("allPlayers").style.color = '#d4213c';
            document.getElementById("totalPlayers").style.color = '#d4213c';
        }
        if (document.getElementById("remainPrice").textContent < 0.0) {
            document.getElementById("remainPrice").style.color = '#d4213c';
            document.getElementById("dollar").style.color = '#d4213c';
            document.getElementById("makeTrans").disabled = true;
            console.log(document.getElementById("makeTrans").disabled);
        } else {
            document.getElementById("remainPrice").style.color = '#0ea331';
            document.getElementById("dollar").style.color = '#0ea331';

        }
    } else if (player.indexOf("mid") != -1) {

        for (j = 1; j <= 5; j++) {
            console.log(document.getElementById("midimage" + j).src.split("/")[5]);
            if (document.getElementById("midimage" + j).src.split("/")[5] == "subs.png") {
                break;
            }

        }

        var pos = player.split("mid")[1];

        document.getElementById("midimage" + j).src = "img/" + document.getElementById("imagemid" + pos).src.split("/")[5];
        document.getElementById("midname" + j).innerHTML = document.getElementById("namemid" + pos).textContent;
        document.getElementById("midprice" + j).innerHTML = document.getElementById("pricemid" + pos).textContent + "m";
        document.getElementById("team" + (eval(j) + 7)).innerHTML = document.getElementById("teammid" + pos).textContent;
        if (document.getElementById("midinjury" + pos).classList.contains("glyphicon-alert")) {
            document.getElementById("midname" + j).style.backgroundColor = "#c0020d";
            document.getElementById("midname" + j).style.border = "2px solid #c0020d";
            document.getElementById("midprice" + j).style.backgroundColor = "#c0020d";
            document.getElementById("midprice" + j).style.border = "2px solid #c0020d";
        }
        document.getElementById("midname" + j).style.opacity = "1";
        document.getElementById("midprice" + j).style.opacity = "1";
        document.getElementById("selMID" + j).setAttribute('onclick', "transModalMID('" + j + "')");
        var price = document.getElementById("midprice" + j).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) + 1;
        if (document.getElementById("totalPlayers").textContent == "15") {
            document.getElementById("allPlayers").style.color = '#0ea331';
            document.getElementById("totalPlayers").style.color = '#0ea331';
        } else {
            document.getElementById("allPlayers").style.color = '#d4213c';
            document.getElementById("totalPlayers").style.color = '#d4213c';
        }
        if (document.getElementById("remainPrice").textContent < 0.0) {
            document.getElementById("remainPrice").style.color = '#d4213c';
            document.getElementById("dollar").style.color = '#d4213c';
            document.getElementById("makeTrans").disabled = true;
            console.log(document.getElementById("makeTrans").disabled);
        } else {
            document.getElementById("remainPrice").style.color = '#0ea331';
            document.getElementById("dollar").style.color = '#0ea331';

        }
    } else if (player.indexOf("fwd") != -1) {
        for (j = 1; j <= 3; j++) {
            console.log(document.getElementById("fwdimage" + j).src.split("/")[5]);
            if (document.getElementById("fwdimage" + j).src.split("/")[5] == "subs.png") {
                break;
            }

        }
        var pos = player.split("fwd")[1];
        document.getElementById("fwdimage" + j).src = "img/" + document.getElementById("imagefwd" + pos).src.split("/")[5];
        document.getElementById("fwdname" + j).innerHTML = document.getElementById("namefwd" + pos).textContent;
        document.getElementById("fwdprice" + j).innerHTML = document.getElementById("pricefwd" + pos).textContent + "m";
        document.getElementById("team" + (eval(j) + 12)).innerHTML = document.getElementById("teamfwd" + pos).textContent;
        if (document.getElementById("fwdinjury" + pos).classList.contains("glyphicon-alert")) {
            document.getElementById("fwdname" + j).style.backgroundColor = "#c0020d";
            document.getElementById("fwdname" + j).style.border = "2px solid #c0020d";
            document.getElementById("fwdprice" + j).style.backgroundColor = "#c0020d";
            document.getElementById("fwdprice" + j).style.border = "2px solid #c0020d";
        }
        document.getElementById("fwdname" + j).style.opacity = "1";
        document.getElementById("fwdprice" + j).style.opacity = "1";
        document.getElementById("selFWD" + j).setAttribute('onclick', "transModalFWD('" + j + "')");
        var price = document.getElementById("fwdprice" + j).textContent.split("$")[1].split("m")[0];
        var remainPrice = document.getElementById("remainPrice").textContent;
        var playersNO = document.getElementById("totalPlayers").textContent;
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(price) * 10)) / 10).toFixed(1);
        document.getElementById("totalPlayers").innerHTML = eval(playersNO) + 1;
        if (document.getElementById("totalPlayers").textContent == "15") {
            document.getElementById("allPlayers").style.color = '#0ea331';
            document.getElementById("totalPlayers").style.color = '#0ea331';
        } else {
            document.getElementById("allPlayers").style.color = '#d4213c';
            document.getElementById("totalPlayers").style.color = '#d4213c';
        }
        if (document.getElementById("remainPrice").textContent < 0.0) {
            document.getElementById("remainPrice").style.color = '#d4213c';
            document.getElementById("dollar").style.color = '#d4213c';
            document.getElementById("makeTrans").disabled = true;
            console.log(document.getElementById("makeTrans").disabled);
        } else {
            document.getElementById("remainPrice").style.color = '#0ea331';
            document.getElementById("dollar").style.color = '#0ea331';

        }

    }
    setTeamNo();
    checkNoDisableSide();
    checkTrans();

    document.getElementById(player).style.pointerEvents = 'none';
    document.getElementById(player).style.opacity = '0.6';
    $('#playersSide').modal('hide');
}

function checkTrans() {
    var check = true;
    for (i = 1; i <= 2; i++) {
        if (document.getElementById("imagegk" + i).src.split("/")[5] == "subsgk.png") {
            check = false;
            break
        }
    }
    for (i = 1; i <= 5; i++) {
        if (document.getElementById("defimage" + i).src.split("/")[5] == "subs.png") {
            check = false;
            break
        }
        if (document.getElementById("midimage" + i).src.split("/")[5] == "subs.png") {
            check = false;
            break
        }
    }
    for (i = 1; i <= 3; i++) {
        if (document.getElementById("fwdimage" + i).src.split("/")[5] == "subs.png") {
            check = false;
            break
        }

    }

    if (check && document.getElementById("remainPrice").textContent >= 0.0) {
        document.getElementById("makeTrans").disabled = false;
    } else {
        document.getElementById("makeTrans").disabled = true;
    }
}


function makeTransfer() {
    var gk = "";
    var def = "";
    var mid = "";
    var fwd = "";

    for (i = 1; i <= 2; i++) {
        gk = gk + document.getElementById("namegk" + i).textContent + "-" + document.getElementById("team" + (i)).textContent + "-Goalkeeper,";
    }
    for (i = 1; i <= 5; i++) {

        def = def + document.getElementById("defname" + i).textContent + "-" + document.getElementById("team" + (i + 2)).textContent + "-Defence,";


    }
    for (i = 1; i <= 5; i++) {


        mid = mid + document.getElementById("midname" + i).textContent + "-" + document.getElementById("team" + (i + 7)).textContent + "-Midfielder,";


    }
    for (i = 1; i <= 3; i++) {


        fwd = fwd + document.getElementById("fwdname" + i).textContent + "-" + document.getElementById("team" + (i + 12)).textContent + "-Forward,";
    }


    window.location = "transfers?gk=" + gk+"&def="+def+"&mid="+mid+"&fwd="+fwd;


}