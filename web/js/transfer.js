function transOut(player) {
    if (player.indexOf("selGK") != -1) {
        var pos = player.split("selGK")[1];
        document.getElementById("imagegk" + pos).src = "img/" + 'subsgk.png';

        document.getElementById("namegk" + pos).style.backgroundColor = "#02509a";
        document.getElementById("namegk" + pos).style.border = "2px solid #02509a";
        document.getElementById("namegk" + pos).style.opacity = "0.7";
        document.getElementById("pricegk" + pos).style.opacity = "0.7";

        document.getElementById("team" + pos).innerHTML = "";

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

        document.getElementById("defname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("defname" + pos).style.border = "2px solid #02509a";
        document.getElementById("defname" + pos).style.opacity = "0.7";
        document.getElementById("defprice" + pos).style.opacity = "0.7";
        var team = eval(pos) + 2;
        for (k = 1; k <= 2; k++) {
            if (document.getElementById("namegk" + pos).textContent == document.getElementById("gkname" + k).textContent) {
                document.getElementById("gk" + k).style.pointerEvents = 'auto';
                document.getElementById("gk" + k).style.opacity = '1';
                break;
            }

        }
        document.getElementById("selGK" + pos).setAttribute('onclick', 'changeGK()');
        document.getElementById("team" + team).innerHTML = "";
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

        document.getElementById("midname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("midname" + pos).style.border = "2px solid #02509a";
        document.getElementById("midname" + pos).style.opacity = "0.7";
        document.getElementById("midprice" + pos).style.opacity = "0.7";
        var team = eval(pos) + 7;
        document.getElementById("team" + team).innerHTML = "";
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

        document.getElementById("fwdname" + pos).style.backgroundColor = "#02509a";
        document.getElementById("fwdname" + pos).style.border = "2px solid #02509a";
        document.getElementById("fwdname" + pos).style.opacity = "0.7";
        document.getElementById("fwdprice" + pos).style.opacity = "0.7";
        var team = eval(pos) + 12;

        document.getElementById("team" + team).innerHTML = "";
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
    console.log(player);
    if (player.indexOf("gk") != -1) {
        for (j = 1; j <= 2; j++) {
            if (document.getElementById("imagegk" + j).src.split("/")[5] == "subsgk.png") {
                break;
            }

        }
        var pos = player.split("gk")[1];
        document.getElementById("imagegk" + j).src = "img/" + document.getElementById("gkimage" + pos).src.split("/")[5];
        document.getElementById("namegk" + j).innerHTML = document.getElementById("gkname" + pos).textContent;
        document.getElementById("pricegk" + j).innerHTML = document.getElementById("gkprice" + pos).textContent + "m";
        document.getElementById("team" + (j)).innerHTML = document.getElementById("gkteam" + pos).textContent;

        if (document.getElementById("gkinjury" + pos).classList.contains("glyphicon-one-fine-red-dot")) {
            document.getElementById("namegk" + j).style.backgroundColor = document.getElementById("gkinjury" + pos).style.color;
            document.getElementById("namegk" + j).style.border = "2px solid";
            document.getElementById("namegk" + j).style.borderColor = document.getElementById("gkinjury" + pos).style.color;
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
        } else {
            document.getElementById("remainPrice").style.color = '#0ea331';
            document.getElementById("dollar").style.color = '#0ea331';

        }

    } else if (player.indexOf("def") != -1) {
        for (j = 1; j <= 5; j++) {
            if (document.getElementById("defimage" + j).src.split("/")[5] == "subs.png") {
                break;
            }

        }
        var pos = player.split("def")[1];
        document.getElementById("defimage" + j).src = "img/" + document.getElementById("imagedef" + pos).src.split("/")[5];
        document.getElementById("defname" + j).innerHTML = document.getElementById("namedef" + pos).textContent;
        document.getElementById("defprice" + j).innerHTML = document.getElementById("pricedef" + pos).textContent + "m";
        document.getElementById("team" + (eval(j) + 2)).innerHTML = document.getElementById("teamdef" + pos).textContent;

        if (document.getElementById("definjury" + pos).classList.contains("glyphicon-one-fine-red-dot")) {
            document.getElementById("defname" + j).style.backgroundColor = document.getElementById("definjury" + pos).style.color;
            document.getElementById("defname" + j).style.border = "2px solid";
            document.getElementById("defname" + j).style.borderColor = document.getElementById("definjury" + pos).style.color;
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
        } else {
            document.getElementById("remainPrice").style.color = '#0ea331';
            document.getElementById("dollar").style.color = '#0ea331';

        }
    } else if (player.indexOf("mid") != -1) {

        for (j = 1; j <= 5; j++) {
            if (document.getElementById("midimage" + j).src.split("/")[5] == "subs.png") {
                break;
            }

        }

        var pos = player.split("mid")[1];
        document.getElementById("midimage" + j).src = "img/" + document.getElementById("imagemid" + pos).src.split("/")[5];
        document.getElementById("midname" + j).innerHTML = document.getElementById("namemid" + pos).textContent;
        document.getElementById("midprice" + j).innerHTML = document.getElementById("pricemid" + pos).textContent + "m";
        document.getElementById("team" + (eval(j) + 7)).innerHTML = document.getElementById("teammid" + pos).textContent;
        if (document.getElementById("midinjury" + pos).classList.contains("glyphicon-one-fine-red-dot")) {
            document.getElementById("midname" + j).style.backgroundColor = document.getElementById("midinjury" + pos).style.color;
            document.getElementById("midname" + j).style.border = "2px solid";
            document.getElementById("midname" + j).style.borderColor = document.getElementById("midinjury" + pos).style.color;
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
        } else {
            document.getElementById("remainPrice").style.color = '#0ea331';
            document.getElementById("dollar").style.color = '#0ea331';

        }
    } else if (player.indexOf("fwd") != -1) {
        for (j = 1; j <= 3; j++) {
            if (document.getElementById("fwdimage" + j).src.split("/")[5] == "subs.png") {
                break;
            }

        }
        var pos = player.split("fwd")[1];
        document.getElementById("fwdimage" + j).src = "img/" + document.getElementById("imagefwd" + pos).src.split("/")[5];
        document.getElementById("fwdname" + j).innerHTML = document.getElementById("namefwd" + pos).textContent;
        document.getElementById("fwdprice" + j).innerHTML = document.getElementById("pricefwd" + pos).textContent + "m";
        document.getElementById("team" + (eval(j) + 12)).innerHTML = document.getElementById("teamfwd" + pos).textContent;
        if (document.getElementById("fwdinjury" + pos).classList.contains("glyphicon-one-fine-red-dot")) {
            document.getElementById("fwdname" + j).style.backgroundColor = document.getElementById("fwdinjury" + pos).style.color;
            document.getElementById("fwdname" + j).style.border = "2px solid";
            document.getElementById("fwdname" + j).style.borderColor = document.getElementById("fwdinjury" + pos).style.color;
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
    var remain = document.getElementById("remainPrice").textContent;
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


    window.location = "transfers?gk=" + gk + "&def=" + def + "&mid=" + mid + "&fwd=" + fwd + "&remain=" + remain;


}

$(document).on("click", "#nextPlayersSelectTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#nextPlayersSelectTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        var parts = page.split("-");

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelectTrans").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endTransSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startTransSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("gkinjury" + k).classList.add('fa-lg');
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }





                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelectTrans").value = "DefendTranser-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "DefendTranser-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.add('fa-lg');
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.remove('fa-lg');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelectTrans").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startTransSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.add('fa-lg');
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.remove('fa-lg');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelectTrans").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }
    });
});



$(document).on("click", "#endSelectTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#endSelectTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...



        var parts = page.split("-");
        document.getElementById("nextPlayersSelectTrans").disabled = true;
        document.getElementById("endSelectTrans").disabled = true;
        document.getElementById("prevPlayersSelectTrans").value = parts[1] - 1;
        document.getElementById("prevPlayersSelectTrans").disabled = false;
        document.getElementById("startSelectTrans").disabled = false;

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelectTrans").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = parts[1];
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("gkinjury" + k).classList.add('fa-lg');
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }


                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelectTrans").value = "Defender-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Defender-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.add('fa-lg');
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.remove('fa-lg');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelectTrans").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.add('fa-lg');
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.remove('fa-lg');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelectTrans").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }
    });
});




$(document).on("click", "#startSelectTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#startSelectTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...


        var parts = page.split("-");
        document.getElementById("nextPlayersSelectTrans").disabled = false;
        document.getElementById("endSelectTrans").disabled = false;

        document.getElementById("prevPlayersSelectTrans").disabled = true;
        document.getElementById("startSelectTrans").disabled = true;

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelectTrans").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = parts[1];
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("gkinjury" + k).classList.add('fa-lg');
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }



                k = k + 1;
            }

            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelectTrans").value = "Defender-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Defender-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.add('fa-lg');
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.remove('fa-lg');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelectTrans").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.add('fa-lg');
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.remove('fa-lg');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelectTrans").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelectTrans").disabled = true;
                document.getElementById("endSelectTrans").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelectTrans").disabled = false;
                document.getElementById("startSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {
                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }
    });
});




$(document).on("click", "#prevPlayersSelectTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#prevPlayersSelectTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        var parts = page.split("-");

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelectTrans").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;

            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelectTrans").value = "Goalkeeper-" + 1;
                document.getElementById("prevPlayersSelectTrans").disabled = true;
                document.getElementById("startSelectTrans").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelectTrans").disabled = false;
                document.getElementById("endSelectTrans").disabled = false;
            }

            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("gkinjury" + k).classList.add('fa-lg');
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }



                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelectTrans").value = "Defender-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Defender-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelectTrans").value = "Defender-" + 1;
                document.getElementById("prevPlayersSelectTrans").disabled = true;
                document.getElementById("startSelectTrans").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelectTrans").disabled = false;
                document.getElementById("endSelectTrans").disabled = false;
            }

            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.add('fa-lg');
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("definjury" + k).classList.remove('fa-lg');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelectTrans").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelectTrans").value = "Midfielder-" + 1;
                document.getElementById("prevPlayersSelectTrans").disabled = true;
                document.getElementById("startSelectTrans").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelectTrans").disabled = false;
                document.getElementById("endSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {


                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.add('fa-lg');
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("midinjury" + k).classList.remove('fa-lg');
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelectTrans").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelectTrans").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;

            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelectTrans").value = "Forward-" + 1;
                document.getElementById("prevPlayersSelectTrans").disabled = true;
                document.getElementById("startSelectTrans").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelectTrans").disabled = false;
                document.getElementById("endSelectTrans").disabled = false;
            }
            var k = 1;
            for (i = 4; i < responseText.length; i = i + 6) {

                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                if (responseText[i + 5] == "OUT") {

                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                        document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }

                k = k + 1;
            }
            disableSide();
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }
    });
});



$(document).on("click", "#nextPlayersTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#nextPlayersTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("nextPlayersTrans").value = responseText[1];
        document.getElementById("prevPlayersTrans").value = responseText[0];
        document.getElementById("page").innerHTML = responseText[1] - 1;
        if (responseText[1] == 12) {
            document.getElementById("nextPlayersTrans").disabled = true;
            document.getElementById("endTrans").disabled = true;
        }
        if (responseText[1] == 3) {
            document.getElementById("prevPlayersTrans").disabled = false;
            document.getElementById("startTrans").disabled = false;
        }
        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = "$" + responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-alert');
                document.getElementById("gkinjury1").classList.add('fa-lg');
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury1").classList.remove('fa-lg');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }

        document.getElementById("gkname2").innerHTML = responseText[8];
        document.getElementById("gkimage2").src = "img/" + responseText[9];
        document.getElementById("gkteam2").innerHTML = responseText[10];
        document.getElementById("gkprice2").innerHTML = "$" + responseText[11];
        document.getElementById("gkscore2").innerHTML = responseText[12];
        if (responseText[13] == "OUT") {

            if (document.getElementById("gkinjury2").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury2").classList.add('glyphicon-alert');
                document.getElementById("gkinjury2").classList.add('fa-lg');
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury2").classList.remove('fa-lg');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }


        if (responseText[1] - 1 == 1) {
            var length = 8;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "";
            document.getElementById("def8").style.display = "";
        } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
            var length = 7;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "";
            document.getElementById("def8").style.display = "none";
        } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
            var length = 6;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "none";
            document.getElementById("def8").style.display = "none";
        } else if (responseText[1] - 1 == 11) {
            var length = 5;
            document.getElementById("def6").style.display = "none";
            document.getElementById("def7").style.display = "none";
            document.getElementById("def8").style.display = "none";
        }
        var k = 1;
        for (i = 14; i < (length * 6) + 14; i = i + 6) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.add('fa-lg');
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.remove('fa-lg');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }

        if (responseText[1] - 1 == 1) {
            var length2 = 5;
            document.getElementById("mid3").style.display = "";
            document.getElementById("mid4").style.display = "";
            document.getElementById("mid5").style.display = "";
            document.getElementById("mid6").style.display = "none";
        } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3 || responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
            var length2 = 6;
            document.getElementById("mid3").style.display = "";
            document.getElementById("mid4").style.display = "";
            document.getElementById("mid5").style.display = "";
            document.getElementById("mid6").style.display = "";
        } else if (responseText[1] - 1 == 11) {
            var length2 = 2;
            document.getElementById("mid3").style.display = "none";
            document.getElementById("mid4").style.display = "none";
            document.getElementById("mid5").style.display = "none";
            document.getElementById("mid6").style.display = "none";
        }
        var k = 1;
        for (i = (length * 6) + 14; i < (length2 * 6) + (length * 6) + 14; i = i + 6) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.add('fa-lg');
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.remove('fa-lg');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }

        if (responseText[1] - 1 == 1 || responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
            var length3 = 5;
            document.getElementById("fwd3").style.display = "";
            document.getElementById("fwd4").style.display = "";
            document.getElementById("fwd5").style.display = "";
            document.getElementById("fwd6").style.display = "none";
        } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
            var length3 = 6;
            document.getElementById("fwd3").style.display = "";
            document.getElementById("fwd4").style.display = "";
            document.getElementById("fwd5").style.display = "";
            document.getElementById("fwd6").style.display = "";
        } else if (responseText[1] - 1 == 11) {
            var length3 = 2;
            document.getElementById("fwd3").style.display = "none";
            document.getElementById("fwd4").style.display = "none";
            document.getElementById("fwd5").style.display = "none";
            document.getElementById("fwd6").style.display = "none";
        }
        var k = 1;
        for (i = (length * 6) + (length2 * 6) + 14; i < (length3 * 6) + (length2 * 6) + (length * 6) + 14; i = i + 6) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }
    });
});


$(document).on("click", "#endTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#endTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("page").innerHTML = 11;
        if (responseText[1] == 12) {
            document.getElementById("nextPlayersTrans").disabled = true;
            document.getElementById("endTrans").disabled = true;
            document.getElementById("prevPlayersTrans").value = 10;
            document.getElementById("prevPlayersTrans").disabled = false;
            document.getElementById("startTrans").disabled = false;
        }

        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-alert');
                document.getElementById("gkinjury1").classList.add('fa-lg');
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury1").classList.remove('fa-lg');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }

        document.getElementById("gkname2").innerHTML = responseText[8];
        document.getElementById("gkimage2").src = "img/" + responseText[9];
        document.getElementById("gkteam2").innerHTML = responseText[10];
        document.getElementById("gkprice2").innerHTML = responseText[11];
        document.getElementById("gkscore2").innerHTML = responseText[12];
        if (responseText[13] == "OUT") {

            if (document.getElementById("gkinjury2").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury2").classList.add('glyphicon-alert');
                document.getElementById("gkinjury2").classList.add('fa-lg');
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury2").classList.remove('fa-lg');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }

        document.getElementById("def6").style.display = "none";
        document.getElementById("def7").style.display = "none";
        document.getElementById("def8").style.display = "none";
        var k = 1;
        for (i = 14; i < (6 * 5) + 14; i = i + 6) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.add('fa-lg');
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.remove('fa-lg');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }
        var length2 = 2;
        document.getElementById("mid3").style.display = "none";
        document.getElementById("mid4").style.display = "none";
        document.getElementById("mid5").style.display = "none";
        document.getElementById("mid6").style.display = "none";
        var k = 1;
        for (i = (6 * 5) + 14; i < (length2 * 6) + (6 * 5) + 14; i = i + 6) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.add('fa-lg');
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.remove('fa-lg');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }
        var length3 = 2;
        document.getElementById("fwd3").style.display = "none";
        document.getElementById("fwd4").style.display = "none";
        document.getElementById("fwd5").style.display = "none";
        document.getElementById("fwd6").style.display = "none";
        var k = 1;
        for (i = (6 * 2) + (6 * 5) + 14; i < (length3 * 6) + (6 * 5) + (6 * 2) + 14; i = i + 6) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }

    });
});


$(document).on("click", "#startTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#startTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("page").innerHTML = 1;
        if (responseText[0] == 0) {
            document.getElementById("prevPlayersTrans").disabled = true;
            document.getElementById("startTrans").disabled = true;
            document.getElementById("nextPlayersTrans").value = 2;
            document.getElementById("nextPlayersTrans").disabled = false;
            document.getElementById("endTrans").disabled = false;
        }

        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-alert');
                document.getElementById("gkinjury1").classList.add('fa-lg');
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury1").classList.remove('fa-lg');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }

        document.getElementById("gkname2").innerHTML = responseText[8];
        document.getElementById("gkimage2").src = "img/" + responseText[9];
        document.getElementById("gkteam2").innerHTML = responseText[10];
        document.getElementById("gkprice2").innerHTML = responseText[11];
        document.getElementById("gkscore2").innerHTML = responseText[12];
        if (responseText[13] == "OUT") {

            if (document.getElementById("gkinjury2").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury2").classList.add('glyphicon-alert');
                document.getElementById("gkinjury2").classList.add('fa-lg');
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury2").classList.remove('fa-lg');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }

        document.getElementById("def6").style.display = "";
        document.getElementById("def7").style.display = "";
        document.getElementById("def8").style.display = "";
        var k = 1;
        for (i = 14; i < (6 * 8) + 14; i = i + 6) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.add('fa-lg');
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.remove('fa-lg');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }
        var length2 = 5;
        document.getElementById("mid3").style.display = "";
        document.getElementById("mid4").style.display = "";
        document.getElementById("mid5").style.display = "";
        document.getElementById("mid6").style.display = "none";
        var k = 1;
        for (i = (6 * 8) + 14; i < (length2 * 6) + (6 * 8) + 14; i = i + 6) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.add('fa-lg');
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.remove('fa-lg');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }
        var length3 = 5;
        document.getElementById("fwd3").style.display = "";
        document.getElementById("fwd4").style.display = "";
        document.getElementById("fwd5").style.display = "";
        document.getElementById("fwd6").style.display = "none";
        var k = 1;
        for (i = (6 * 8) + (5 * 6) + 14; i < (length3 * 6) + (5 * 6) + (6 * 8) + 14; i = i + 6) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }
    });
});


$(document).on("click", "#prevPlayersTrans", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#prevPlayersTrans').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("prevPlayersTrans").value = responseText[0];
        document.getElementById("nextPlayersTrans").value = responseText[1];
        document.getElementById("page").innerHTML = responseText[1] - 1;
        if (responseText[0] == 0) {
            document.getElementById("prevPlayersTrans").value = 1;
            document.getElementById("prevPlayersTrans").disabled = true;
            document.getElementById("startTrans").disabled = true;
        }
        if (responseText[1] == 11) {
            document.getElementById("nextPlayersTrans").disabled = false;
            document.getElementById("endTrans").disabled = false;
        }
        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-alert');
                document.getElementById("gkinjury1").classList.add('fa-lg');
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury1").classList.remove('fa-lg');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }



        document.getElementById("gkname2").innerHTML = responseText[8];
        document.getElementById("gkimage2").src = "img/" + responseText[9];
        document.getElementById("gkteam2").innerHTML = responseText[10];
        document.getElementById("gkprice2").innerHTML = responseText[11];
        document.getElementById("gkscore2").innerHTML = responseText[12];
        if (responseText[13] == "OUT") {

            if (document.getElementById("gkinjury2").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury2").classList.add('glyphicon-alert');
                document.getElementById("gkinjury2").classList.add('fa-lg');
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-alert')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-alert');
                document.getElementById("gkinjury2").classList.remove('fa-lg');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }



        if (responseText[1] - 1 == 1) {
            var length = 8;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "";
            document.getElementById("def8").style.display = "";
        } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
            var length = 7;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "";
            document.getElementById("def8").style.display = "none";
        } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
            var length = 6;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "none";
            document.getElementById("def8").style.display = "none";
        } else if (responseText[1] - 1 == 11) {
            var length = 5;
            document.getElementById("def6").style.display = "none";
            document.getElementById("def7").style.display = "none";
            document.getElementById("def8").style.display = "none";
        }
        var k = 1;
        for (i = 14; i < (length * 6) + 14; i = i + 6) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("definjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.add('fa-lg');
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("definjury" + k).classList.remove('fa-lg');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }

        if (responseText[1] - 1 == 1) {
            var length2 = 5;
            document.getElementById("mid3").style.display = "";
            document.getElementById("mid4").style.display = "";
            document.getElementById("mid5").style.display = "";
            document.getElementById("mid6").style.display = "none";
        } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3 || responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
            var length2 = 6;
            document.getElementById("mid3").style.display = "";
            document.getElementById("mid4").style.display = "";
            document.getElementById("mid5").style.display = "";
            document.getElementById("mid6").style.display = "";
        } else if (responseText[1] - 1 == 11) {
            var length2 = 2;
            document.getElementById("mid3").style.display = "none";
            document.getElementById("mid4").style.display = "none";
            document.getElementById("mid5").style.display = "none";
            document.getElementById("mid6").style.display = "none";
        }
        var k = 1;
        for (i = (length * 6) + 14; i < (length2 * 6) + (length * 6) + 14; i = i + 6) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.add('fa-lg');
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("midinjury" + k).classList.remove('fa-lg');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }

        if (responseText[1] - 1 == 1 || responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
            var length3 = 5;
            document.getElementById("fwd3").style.display = "";
            document.getElementById("fwd4").style.display = "";
            document.getElementById("fwd5").style.display = "";
            document.getElementById("fwd6").style.display = "none";
        } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
            var length3 = 6;
            document.getElementById("fwd3").style.display = "";
            document.getElementById("fwd4").style.display = "";
            document.getElementById("fwd5").style.display = "";
            document.getElementById("fwd6").style.display = "";
        } else if (responseText[1] - 1 == 11) {
            var length3 = 2;
            document.getElementById("fwd3").style.display = "none";
            document.getElementById("fwd4").style.display = "none";
            document.getElementById("fwd5").style.display = "none";
            document.getElementById("fwd6").style.display = "none";
        }
        var k = 1;
        for (i = (length * 6) + (length2 * 6) + 14; i < (length3 * 6) + (length2 * 6) + (length * 6) + 14; i = i + 6) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.add('fa-lg');
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-alert')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-alert');
                    document.getElementById("fwdinjury" + k).classList.remove('fa-lg');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }

            k = k + 1;
        }
    });
});

