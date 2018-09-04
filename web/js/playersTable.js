$(document).on("click", "#nextPlayers", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#nextPlayers').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("nextPlayers").value = responseText[1];
        console.log(responseText);
        document.getElementById("prevPlayers").value = responseText[0];
        document.getElementById("page").innerHTML = responseText[1] - 1;
        if (responseText[1] == 11) {
            document.getElementById("nextPlayers").disabled = true;
            document.getElementById("end").disabled = true;
        }
        if (responseText[1] == 3) {
            document.getElementById("prevPlayers").disabled = false;
            document.getElementById("start").disabled = false;
        }
        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = "$" + responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").style.paddingBottom = '10px';
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }
        for (j = 1; j <= 2; j++) {
            if (document.getElementById("gkname1").innerHTML == document.getElementById("namegk" + j).innerHTML) {
                document.getElementById("gk1").style.pointerEvents = 'none';
                document.getElementById("gk1").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk1").style.pointerEvents = 'auto';
                document.getElementById("gk1").style.opacity = '1';
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
                document.getElementById("gkinjury2").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").style.paddingBottom = '10px';
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }

        for (j = 1; j <= 2; j++) {
            if (document.getElementById("gkname2").innerHTML == document.getElementById("namegk" + j).innerHTML) {
                document.getElementById("gk2").style.pointerEvents = 'none';
                document.getElementById("gk2").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk2").style.pointerEvents = 'auto';
                document.getElementById("gk2").style.opacity = '1';
            }
        }
        if ((responseText[1] - 1) <= 9) {
            var length = 6;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "none";
            document.getElementById("def8").style.display = "none";
        } else {
            var length = 7;
            document.getElementById("def6").style.display = "";
            document.getElementById("def7").style.display = "";
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
                    document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).style.paddingBottom = '10px';
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                    document.getElementById("def" + k).style.pointerEvents = 'none';
                    document.getElementById("def" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("def" + k).style.pointerEvents = 'auto';
                    document.getElementById("def" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

        if (responseText[1] - 1 <= 9) {
            var length2 = 6;
            document.getElementById("mid3").style.display = "";
            document.getElementById("mid4").style.display = "";
            document.getElementById("mid5").style.display = "";
            document.getElementById("mid6").style.display = "";
        } else if (responseText[1] - 1 == 10) {
            var length2 = 3;
            document.getElementById("mid3").style.display = "";
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
                    document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');                  
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                    document.getElementById("mid" + k).style.pointerEvents = 'none';
                    document.getElementById("mid" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("mid" + k).style.pointerEvents = 'auto';
                    document.getElementById("mid" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

        if (responseText[1] - 1 <= 10) {
            var length3 = 6;
            document.getElementById("fwd3").style.display = "";
            document.getElementById("fwd4").style.display = "";
            document.getElementById("fwd5").style.display = "";
            document.getElementById("fwd6").style.display = "";
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
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 3; j++) {
                if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                    document.getElementById("fwd" + k).style.pointerEvents = 'none';
                    document.getElementById("fwd" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                    document.getElementById("fwd" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

        //checkNoDisableSide();
    });
});


$(document).on("click", "#end", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#end').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("page").innerHTML = 10;
        if (responseText[1] == 11) {
            document.getElementById("nextPlayers").disabled = true;
            document.getElementById("end").disabled = true;
            document.getElementById("prevPlayers").value = 9;
            document.getElementById("prevPlayers").disabled = false;
            document.getElementById("start").disabled = false;
        }

        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").style.paddingBottom = '10px';
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }
        for (j = 1; j <= 2; j++) {
            if (document.getElementById("gkname1").innerHTML == document.getElementById("namegk" + j).innerHTML) {
                document.getElementById("gk1").style.pointerEvents = 'none';
                document.getElementById("gk1").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk1").style.pointerEvents = 'auto';
                document.getElementById("gk1").style.opacity = '1';
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
                document.getElementById("gkinjury2").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").style.paddingBottom = '10px';
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }
        for (j = 1; j <= 2; j++) {
            if (document.getElementById("gkname2").innerHTML == document.getElementById("namegk" + j).innerHTML) {
                document.getElementById("gk2").style.pointerEvents = 'none';
                document.getElementById("gk2").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk2").style.pointerEvents = 'auto';
                document.getElementById("gk2").style.opacity = '1';
            }

        }
        document.getElementById("def6").style.display = "";
        document.getElementById("def7").style.display = "";
        document.getElementById("def8").style.display = "none";
        var k = 1;
        for (i = 14; i < (6 * 7) + 14; i = i + 6) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).style.paddingBottom = '10px';
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                    document.getElementById("def" + k).style.pointerEvents = 'none';
                    document.getElementById("def" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("def" + k).style.pointerEvents = 'auto';
                    document.getElementById("def" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }
        var length2 = 3;
        document.getElementById("mid3").style.display = "";
        document.getElementById("mid4").style.display = "none";
        document.getElementById("mid5").style.display = "none";
        document.getElementById("mid6").style.display = "none";
        var k = 1;
        for (i = (6 * 7) + 14; i < (length2 * 6) + (6 * 7) + 14; i = i + 6) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                   
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                    document.getElementById("mid" + k).style.pointerEvents = 'none';
                    document.getElementById("mid" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("mid" + k).style.pointerEvents = 'auto';
                    document.getElementById("mid" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }
        var length3 = 6;
        document.getElementById("fwd3").style.display = "";
        document.getElementById("fwd4").style.display = "";
        document.getElementById("fwd5").style.display = "";
        document.getElementById("fwd6").style.display = "";
        var k = 1;
        console.log("i" + responseText[68]);
        for (i = (6 * 3) + (6 * 7) + 14; i < (length3 * 6) + (6 * 7) + (6 * 3) + 14; i = i + 6) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 3; j++) {
                if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                    document.getElementById("fwd" + k).style.pointerEvents = 'none';
                    document.getElementById("fwd" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                    document.getElementById("fwd" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

        //checkNoDisableSide();
    });
});


$(document).on("click", "#start", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#start').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("page").innerHTML = 1;
        if (responseText[0] == 0) {
            document.getElementById("prevPlayers").disabled = true;
            document.getElementById("start").disabled = true;
            document.getElementById("nextPlayers").value = 2;
            document.getElementById("nextPlayers").disabled = false;
            document.getElementById("end").disabled = false;
        }

        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").style.paddingBottom = '10px';
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }
        for (i = 1; i <= 2; i++) {
            if (document.getElementById("gkname1").innerHTML == document.getElementById("namegk" + i).innerHTML) {
                document.getElementById("gk1").style.pointerEvents = 'none';
                document.getElementById("gk1").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk1").style.pointerEvents = 'auto';
                document.getElementById("gk1").style.opacity = '1';
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
                document.getElementById("gkinjury2").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").style.paddingBottom = '10px';
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }
        for (i = 1; i <= 2; i++) {
            if (document.getElementById("gkname2").innerHTML == document.getElementById("namegk" + i).innerHTML) {
                document.getElementById("gk2").style.pointerEvents = 'none';
                document.getElementById("gk2").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk2").style.pointerEvents = 'auto';
                document.getElementById("gk2").style.opacity = '1';
            }

        }
        document.getElementById("def6").style.display = "";
        document.getElementById("def7").style.display = "none";
        document.getElementById("def8").style.display = "none";
        var k = 1;
        for (i = 14; i < (6 * 6) + 14; i = i + 6) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).style.paddingBottom = '10px';
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                    document.getElementById("def" + k).style.pointerEvents = 'none';
                    document.getElementById("def" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("def" + k).style.pointerEvents = 'auto';
                    document.getElementById("def" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }
        var length2 = 6;
        document.getElementById("mid3").style.display = "";
        document.getElementById("mid4").style.display = "";
        document.getElementById("mid5").style.display = "";
        document.getElementById("mid6").style.display = "";
        var k = 1;
        for (i = (6 * 6) + 14; i < (length2 * 6) + (6 * 6) + 14; i = i + 6) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                   
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                    document.getElementById("mid" + k).style.pointerEvents = 'none';
                    document.getElementById("mid" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("mid" + k).style.pointerEvents = 'auto';
                    document.getElementById("mid" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }
        var length3 = 6;
        document.getElementById("fwd3").style.display = "";
        document.getElementById("fwd4").style.display = "";
        document.getElementById("fwd5").style.display = "";
        document.getElementById("fwd6").style.display = "";
        var k = 1;
        for (i = (6 * 6) + (6 * 6) + 14; i < (length3 * 6) + (6 * 6) + (6 * 6) + 14; i = i + 6) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            if (responseText[i + 5] == "OUT") {

                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 3; j++) {
                if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                    document.getElementById("fwd" + k).style.pointerEvents = 'none';
                    document.getElementById("fwd" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                    document.getElementById("fwd" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

        //checkNoDisableSide();
    });
});


$(document).on("click", "#prevPlayers", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#prevPlayers').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("prevPlayers").value = responseText[0];
        document.getElementById("nextPlayers").value = responseText[1];
        document.getElementById("page").innerHTML = responseText[1] - 1;
        if (responseText[0] == 0) {
            document.getElementById("prevPlayers").value = 1;
            document.getElementById("prevPlayers").disabled = true;
            document.getElementById("start").disabled = true;
        }
        if (responseText[1] == 10) {
            document.getElementById("nextPlayers").disabled = false;
            document.getElementById("end").disabled = false;
        }
        document.getElementById("gkname1").innerHTML = responseText[2];
        document.getElementById("gkimage1").src = "img/" + responseText[3];
        document.getElementById("gkteam1").innerHTML = responseText[4];
        document.getElementById("gkprice1").innerHTML = responseText[5];
        document.getElementById("gkscore1").innerHTML = responseText[6];
        if (responseText[7] == "OUT") {

            if (document.getElementById("gkinjury1").classList.contains('glyphicon-info-sign')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-info-sign');
                document.getElementById("gkinjury1").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").style.paddingBottom = '10px';
                document.getElementById("gkinjury1").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury1").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury1").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury1").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury1").style.color = '';
            }

        }
        for (j = 1; j <= 2; j++) {
            if (document.getElementById("gkname1").innerHTML == document.getElementById("namegk" + j).innerHTML) {
                document.getElementById("gk1").style.pointerEvents = 'none';
                document.getElementById("gk1").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk1").style.pointerEvents = 'auto';
                document.getElementById("gk1").style.opacity = '1';
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
                document.getElementById("gkinjury2").classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").style.paddingBottom = '10px';
                document.getElementById("gkinjury2").style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("gkinjury2").classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("gkinjury2").classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("gkinjury2").classList.add('glyphicon-info-sign');
                document.getElementById("gkinjury2").style.color = '';
            }

        }
        for (j = 1; j <= 2; j++) {
            if (document.getElementById("gkname2").innerHTML == document.getElementById("namegk" + j).innerHTML) {
                document.getElementById("gk2").style.pointerEvents = 'none';
                document.getElementById("gk2").style.opacity = '0.6';
                break;
            } else {
                document.getElementById("gk2").style.pointerEvents = 'auto';
                document.getElementById("gk2").style.opacity = '1';
            }

        }
        if (responseText[1] - 1 <= 10) {
            var length = 6;
            document.getElementById("def6").style.display = "";
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
                    document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).style.paddingBottom = '10px';
                    document.getElementById("definjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("definjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                    document.getElementById("def" + k).style.pointerEvents = 'none';
                    document.getElementById("def" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("def" + k).style.pointerEvents = 'auto';
                    document.getElementById("def" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

        if (responseText[1] - 1 < 10) {
            var length2 = 6;
            document.getElementById("mid3").style.display = "";
            document.getElementById("mid4").style.display = "";
            document.getElementById("mid5").style.display = "";
            document.getElementById("mid6").style.display = "";
        } else if (responseText[1] - 1 == 10) {
            var length2 = 3;
            document.getElementById("mid3").style.display = "";
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
                    document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("midinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                   
                    document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("midinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                    document.getElementById("mid" + k).style.pointerEvents = 'none';
                    document.getElementById("mid" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("mid" + k).style.pointerEvents = 'auto';
                    document.getElementById("mid" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

        if (responseText[1] - 1 <= 10) {
            var length3 = 6;
            document.getElementById("fwd3").style.display = "";
            document.getElementById("fwd4").style.display = "";
            document.getElementById("fwd5").style.display = "";
            document.getElementById("fwd6").style.display = "";
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
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                }

            } else {
                if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                    document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                    
                    document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("fwdinjury" + k).style.color = '';
                }

            }
            for (j = 1; j <= 3; j++) {
                if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                    document.getElementById("fwd" + k).style.pointerEvents = 'none';
                    document.getElementById("fwd" + k).style.opacity = '0.6';
                    break;
                } else {
                    document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                    document.getElementById("fwd" + k).style.opacity = '1';
                }

            }
            k = k + 1;
        }

                //checkNoDisableSide();
    });
});



function showPlayers() {


    var xhttp;
    var selectionPl = document.getElementById('selectPlayers').value;
    var selectCat = document.getElementById('categorySelection').value;
    console.log("Select players " + selectCat + " Select Category " + selectionPl);
    if ($('#searchBOX').val() != "") {
        $('#searchBOX').val('');
    }
    if (selectionPl == "all") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);
                if (selectCat == 'score') {
                    document.getElementById("catGK").innerHTML = "TS";
                    document.getElementById("catDEF").innerHTML = "TS";
                    document.getElementById("catMID").innerHTML = "TS";
                    document.getElementById("catFWD").innerHTML = "TS";
                } else if (selectCat == 'minutes') {
                    document.getElementById("catGK").innerHTML = "MP";
                    document.getElementById("catDEF").innerHTML = "MP";
                    document.getElementById("catMID").innerHTML = "MP";
                    document.getElementById("catFWD").innerHTML = "MP";
                } else if (selectCat == 'Goal') {
                    document.getElementById("catGK").innerHTML = "GS";
                    document.getElementById("catDEF").innerHTML = "GS";
                    document.getElementById("catMID").innerHTML = "GS";
                    document.getElementById("catFWD").innerHTML = "GS";
                } else if (selectCat == 'assist') {
                    document.getElementById("catGK").innerHTML = "A";
                    document.getElementById("catDEF").innerHTML = "A";
                    document.getElementById("catMID").innerHTML = "A";
                    document.getElementById("catFWD").innerHTML = "A";
                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("catGK").innerHTML = "CS";
                    document.getElementById("catDEF").innerHTML = "CS";
                    document.getElementById("catMID").innerHTML = "CS";
                    document.getElementById("catFWD").innerHTML = "CS";
                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("catGK").innerHTML = "CS";
                    document.getElementById("catDEF").innerHTML = "CS";
                    document.getElementById("catMID").innerHTML = "CS";
                    document.getElementById("catFWD").innerHTML = "CS";
                } else if (selectCat == 'ownGoal') {
                    document.getElementById("catGK").innerHTML = "OG";
                    document.getElementById("catDEF").innerHTML = "OG";
                    document.getElementById("catMID").innerHTML = "OG";
                    document.getElementById("catFWD").innerHTML = "OG";
                } else if (selectCat == 'goalConceded') {
                    document.getElementById("catGK").innerHTML = "GC";
                    document.getElementById("catDEF").innerHTML = "GC";
                    document.getElementById("catMID").innerHTML = "GC";
                    document.getElementById("catFWD").innerHTML = "GC";
                } else if (selectCat == 'pkSaved') {
                    document.getElementById("catGK").innerHTML = "PS";
                    document.getElementById("catDEF").innerHTML = "PS";
                    document.getElementById("catMID").innerHTML = "PS";
                    document.getElementById("catFWD").innerHTML = "PS";
                } else if (selectCat == 'pkMissed') {
                    document.getElementById("catGK").innerHTML = "PM";
                    document.getElementById("catDEF").innerHTML = "PM";
                    document.getElementById("catMID").innerHTML = "PM";
                    document.getElementById("catFWD").innerHTML = "PM";
                } else if (selectCat == 'yellow') {
                    document.getElementById("catGK").innerHTML = "YC";
                    document.getElementById("catDEF").innerHTML = "YC";
                    document.getElementById("catMID").innerHTML = "YC";
                    document.getElementById("catFWD").innerHTML = "YC";
                } else if (selectCat == 'red') {
                    document.getElementById("catGK").innerHTML = "RC";
                    document.getElementById("catDEF").innerHTML = "RC";
                    document.getElementById("catMID").innerHTML = "RC";
                    document.getElementById("catFWD").innerHTML = "RC";
                } else if (selectCat == 'saves') {
                    document.getElementById("catGK").innerHTML = "S";
                    document.getElementById("catDEF").innerHTML = "S";
                    document.getElementById("catMID").innerHTML = "S";
                    document.getElementById("catFWD").innerHTML = "S";
                }



                document.getElementById("search").style.display = "none";
                document.getElementById("total").innerHTML = jsonResponse[jsonResponse.length - 1];
                document.getElementById("gk").style.display = "";
                for (i = 1; i <= 20; i++) {
                    if (i <= 2) {
                        document.getElementById("gk" + i).style.display = "";
                    } else {
                        document.getElementById("gk" + i).style.display = "none";
                    }
                }
                document.getElementById("def").style.display = "";
                for (i = 1; i <= 20; i++) {
                    if (i <= 8) {
                        document.getElementById("def" + i).style.display = "";
                    } else {
                        document.getElementById("def" + i).style.display = "none";
                    }
                }
                document.getElementById("mid").style.display = "";
                for (i = 1; i <= 20; i++) {
                    if (i <= 6) {
                        document.getElementById("mid" + i).style.display = "";
                    } else {
                        document.getElementById("mid" + i).style.display = "none";
                    }
                }
                document.getElementById("fwd").style.display = "";
                for (i = 1; i <= 20; i++) {
                    if (i <= 5) {
                        document.getElementById("fwd" + i).style.display = "";
                    } else {
                        document.getElementById("fwd" + i).style.display = "none";
                    }
                }

                document.getElementById("start").style.display = "";
                document.getElementById("start").disabled = true;
                document.getElementById("prevPlayers").style.display = "";
                document.getElementById("prevPlayers").disabled = true;
                document.getElementById("nextPlayers").style.display = "";
                document.getElementById("nextPlayers").disabled = false;
                document.getElementById("nextPlayers").value = 2;
                document.getElementById("end").style.display = "";
                document.getElementById("end").disabled = false;
                document.getElementById("pageTitle").style.display = "";
                document.getElementById("page").innerHTML = 1;
                document.getElementById("pageSelect").style.display = "none";
                document.getElementById("startSelect").style.display = "none";
                document.getElementById("prevPlayersSelect").style.display = "none";
                document.getElementById("nextPlayersSelect").style.display = "none";
                document.getElementById("endSelect").style.display = "none";



                for (i = 1; i < 21; i++) {

                    if (i >= 3) {
                        document.getElementById("gk" + i).style.display = "none";
                    }
                    if (i >= 6) {

                        document.getElementById("mid" + i).style.display = "none";
                        document.getElementById("fwd" + i).style.display = "none";
                    }
                    if (i >= 9) {
                        document.getElementById("def" + i).style.display = "none";
                    }
                }
                var gk = 1;
                var def = 1;
                var mid = 1;
                var fwd = 1;
                for (k = 0; k < jsonResponse.length - 1; k = k + 6) {
                    if (k <= 6) {

                        document.getElementById("gkname" + gk).innerHTML = jsonResponse[k];
                        document.getElementById("gkimage" + gk).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("gkteam" + gk).innerHTML = jsonResponse[k + 2];
                        document.getElementById("gkprice" + gk).innerHTML = "$" + jsonResponse[k + 3];
                        document.getElementById("gkscore" + gk).innerHTML = jsonResponse[k + 4];
                        if (jsonResponse[k + 5] == "OUT") {

                            document.getElementById("gkinjury" + gk).classList = '';
                            document.getElementById("gkinjury" + gk).classList.add('glyphicon');
                            document.getElementById("gkinjury" + gk).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("gkinjury" + gk).style.paddingBottom = '10px';
                            document.getElementById("gkinjury" + gk).style.color = '#c0020d';
                        } else {
                            document.getElementById("gkinjury" + gk).classList = '';
                            document.getElementById("gkinjury" + gk).classList.add('glyphicon');
                            document.getElementById("gkinjury" + gk).classList.add('glyphicon-info-sign');
                            document.getElementById("gkinjury" + gk).style.color = '';
                        }
                        for (j = 1; j <= 2; j++) {
                            if (document.getElementById("gkname" + gk).innerHTML == document.getElementById("namegk" + j).innerHTML) {
                                document.getElementById("gk" + gk).style.pointerEvents = 'none';
                                document.getElementById("gk" + gk).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("gk" + gk).style.pointerEvents = 'auto';
                                document.getElementById("gk" + gk).style.opacity = '1';
                            }
                        }
                        gk++;
                    } else if (k <= 54) {

                        document.getElementById("namedef" + def).innerHTML = jsonResponse[k];
                        document.getElementById("imagedef" + def).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("teamdef" + def).innerHTML = jsonResponse[k + 2];
                        document.getElementById("pricedef" + def).innerHTML = "$" + jsonResponse[k + 3];
                        document.getElementById("scoredef" + def).innerHTML = jsonResponse[k + 4];
                        if (jsonResponse[k + 5] == "OUT") {

                            document.getElementById("definjury" + def).classList = '';
                            document.getElementById("definjury" + def).classList.add('glyphicon');
                            document.getElementById("definjury" + def).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("definjury" + def).style.paddingBottom = '10px';
                            document.getElementById("definjury" + def).style.color = '#c0020d';
                        } else {
                            document.getElementById("definjury" + def).classList = '';
                            document.getElementById("definjury" + def).classList.add('glyphicon');
                            document.getElementById("definjury" + def).classList.add('glyphicon-info-sign');
                            document.getElementById("definjury" + def).style.color = '';
                        }
                        for (j = 1; j <= 5; j++) {
                            if (document.getElementById("namedef" + def).innerHTML == document.getElementById("defname" + j).innerHTML) {
                                document.getElementById("def" + def).style.pointerEvents = 'none';
                                document.getElementById("def" + def).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("def" + def).style.pointerEvents = 'auto';
                                document.getElementById("def" + def).style.opacity = '1';
                            }
                        }
                        def++;
                    } else if (k <= 84) {

                        document.getElementById("namemid" + mid).innerHTML = jsonResponse[k];
                        document.getElementById("imagemid" + mid).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("teammid" + mid).innerHTML = jsonResponse[k + 2];
                        document.getElementById("pricemid" + mid).innerHTML = "$" + jsonResponse[k + 3];
                        document.getElementById("scoremid" + mid).innerHTML = jsonResponse[k + 4];
                        if (jsonResponse[k + 5] == "OUT") {

                            document.getElementById("midinjury" + mid).classList = '';
                            document.getElementById("midinjury" + mid).classList.add('glyphicon');
                            document.getElementById("midinjury" + mid).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("midinjury" + mid).style.paddingBottom = '10px';
                            document.getElementById("midinjury" + mid).style.color = '#c0020d';
                        } else {
                            document.getElementById("midinjury" + mid).classList = '';
                            document.getElementById("midinjury" + mid).classList.add('glyphicon');
                            document.getElementById("midinjury" + mid).classList.add('glyphicon-info-sign');
                            document.getElementById("midinjury" + mid).style.color = '';
                        }
                        for (j = 1; j <= 5; j++) {
                            if (document.getElementById("namemid" + mid).innerHTML == document.getElementById("midname" + j).innerHTML) {
                                document.getElementById("mid" + mid).style.pointerEvents = 'none';
                                document.getElementById("mid" + mid).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("mid" + mid).style.pointerEvents = 'auto';
                                document.getElementById("mid" + mid).style.opacity = '1';
                            }
                        }
                        mid++;
                    } else {

                        document.getElementById("namefwd" + fwd).innerHTML = jsonResponse[k];
                        document.getElementById("imagefwd" + fwd).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("teamfwd" + fwd).innerHTML = jsonResponse[k + 2];
                        document.getElementById("pricefwd" + fwd).innerHTML = "$" + jsonResponse[k + 3];
                        document.getElementById("scorefwd" + fwd).innerHTML = jsonResponse[k + 4];
                        if (jsonResponse[k + 5] == "OUT") {

                            document.getElementById("fwdinjury" + fwd).classList = '';
                            document.getElementById("fwdinjury" + fwd).classList.add('glyphicon');
                            document.getElementById("fwdinjury" + fwd).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("fwdinjury" + fwd).style.paddingBottom = '10px';
                            document.getElementById("fwdinjury" + fwd).style.color = '#c0020d';
                        } else {
                            document.getElementById("fwdinjury" + fwd).classList = '';
                            document.getElementById("fwdinjury" + fwd).classList.add('glyphicon');
                            document.getElementById("fwdinjury" + fwd).classList.add('glyphicon-info-sign');
                            document.getElementById("fwdinjury" + fwd).style.color = '';
                        }
                        for (j = 1; j <= 3; j++) {
                            if (document.getElementById("namefwd" + fwd).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                                document.getElementById("fwd" + fwd).style.pointerEvents = 'none';
                                document.getElementById("fwd" + fwd).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("fwd" + fwd).style.pointerEvents = 'auto';
                                document.getElementById("fwd" + fwd).style.opacity = '1';
                            }
                        }
                        fwd++;
                    }


                }

                //checkNoDisableSide();
            }
        };
        xhttp.open("GET", "allPlayers?pos=" + selectionPl + "&cat=" + selectCat, true);
        xhttp.send();
    } else if (selectionPl == "Goalkeeper" || selectionPl == "Defender" || selectionPl == "Midfielder" || selectionPl == "Forward") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);
                if (selectCat == 'score') {
                    document.getElementById("catGK").innerHTML = "TS";
                    document.getElementById("catDEF").innerHTML = "TS";
                    document.getElementById("catMID").innerHTML = "TS";
                    document.getElementById("catFWD").innerHTML = "TS";
                } else if (selectCat == 'minutes') {
                    document.getElementById("catGK").innerHTML = "MP";
                    document.getElementById("catDEF").innerHTML = "MP";
                    document.getElementById("catMID").innerHTML = "MP";
                    document.getElementById("catFWD").innerHTML = "MP";
                } else if (selectCat == 'Goal') {
                    document.getElementById("catGK").innerHTML = "GS";
                    document.getElementById("catDEF").innerHTML = "GS";
                    document.getElementById("catMID").innerHTML = "GS";
                    document.getElementById("catFWD").innerHTML = "GS";
                } else if (selectCat == 'assist') {
                    document.getElementById("catGK").innerHTML = "A";
                    document.getElementById("catDEF").innerHTML = "A";
                    document.getElementById("catMID").innerHTML = "A";
                    document.getElementById("catFWD").innerHTML = "A";
                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("catGK").innerHTML = "CS";
                    document.getElementById("catDEF").innerHTML = "CS";
                    document.getElementById("catMID").innerHTML = "CS";
                    document.getElementById("catFWD").innerHTML = "CS";
                } else if (selectCat == 'ownGoal') {
                    document.getElementById("catGK").innerHTML = "OG";
                    document.getElementById("catDEF").innerHTML = "OG";
                    document.getElementById("catMID").innerHTML = "OG";
                    document.getElementById("catFWD").innerHTML = "OG";
                } else if (selectCat == 'goalConceded') {
                    document.getElementById("catGK").innerHTML = "GC";
                    document.getElementById("catDEF").innerHTML = "GC";
                    document.getElementById("catMID").innerHTML = "GC";
                    document.getElementById("catFWD").innerHTML = "GC";
                } else if (selectCat == 'pkSaved') {
                    document.getElementById("catGK").innerHTML = "PS";
                    document.getElementById("catDEF").innerHTML = "PS";
                    document.getElementById("catMID").innerHTML = "PS";
                    document.getElementById("catFWD").innerHTML = "PS";
                } else if (selectCat == 'pkMissed') {
                    document.getElementById("catGK").innerHTML = "PM";
                    document.getElementById("catDEF").innerHTML = "PM";
                    document.getElementById("catMID").innerHTML = "PM";
                    document.getElementById("catFWD").innerHTML = "PM";
                } else if (selectCat == 'yellow') {
                    document.getElementById("catGK").innerHTML = "YC";
                    document.getElementById("catDEF").innerHTML = "YC";
                    document.getElementById("catMID").innerHTML = "YC";
                    document.getElementById("catFWD").innerHTML = "YC";
                } else if (selectCat == 'red') {
                    document.getElementById("catGK").innerHTML = "RC";
                    document.getElementById("catDEF").innerHTML = "RC";
                    document.getElementById("catMID").innerHTML = "RC";
                    document.getElementById("catFWD").innerHTML = "RC";
                } else if (selectCat == 'saves') {
                    document.getElementById("catGK").innerHTML = "S";
                    document.getElementById("catDEF").innerHTML = "S";
                    document.getElementById("catMID").innerHTML = "S";
                    document.getElementById("catFWD").innerHTML = "S";
                }
                document.getElementById("search").style.display = "none";
                if (selectionPl == "Goalkeeper") {
                    document.getElementById("gk").style.display = "";
                    document.getElementById("def").style.display = "none";
                    document.getElementById("mid").style.display = "none";
                    document.getElementById("fwd").style.display = "none";

                    document.getElementById("start").style.display = "none";
                    document.getElementById("prevPlayers").style.display = "none";
                    document.getElementById("nextPlayers").style.display = "none";
                    document.getElementById("end").style.display = "none";
                    document.getElementById("pageTitle").style.display = "none";
                    document.getElementById("pageSelect").style.display = "none";
                    document.getElementById("startSelect").style.display = "none";
                    document.getElementById("startSelect").value = "Goalkeeper-1";
                    document.getElementById("prevPlayersSelect").style.display = "none";
                    document.getElementById("prevPlayersSelect").value = "Goalkeeper-" + jsonResponse[0];
                    document.getElementById("nextPlayersSelect").style.display = "none";
                    document.getElementById("nextPlayersSelect").value = "Goalkeeper-" + jsonResponse[1];
                    document.getElementById("endSelect").style.display = "none";
                    document.getElementById("endSelect").value = "Goalkeeper-" + jsonResponse[2];
                    document.getElementById("total").innerHTML = jsonResponse[3];
                    document.getElementById("pageNo").innerHTML = jsonResponse[1] - 1;
                    document.getElementById("totalPage").innerHTML = jsonResponse[1];
                    document.getElementById("nextPlayersSelect").disabled = false;
                    document.getElementById("endSelect").disabled = false;
                    document.getElementById("prevPlayersSelect").disabled = true;
                    document.getElementById("startSelect").disabled = true;


                    var k = 1;
                    for (i = 4; i < jsonResponse.length; i = i + 6) {

                        document.getElementById("gk" + k).style.display = "";
                        document.getElementById("gkname" + k).innerHTML = jsonResponse[i];
                        document.getElementById("gkimage" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("gkteam" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("gkprice" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("gkscore" + k).innerHTML = jsonResponse[i + 4];
                        if (jsonResponse[i + 5] == "OUT") {

                            document.getElementById("gkinjury" + k).classList = '';
                            document.getElementById("gkinjury" + k).classList.add('glyphicon');
                            document.getElementById("gkinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("gkinjury" + k).style.paddingBottom = '10px';
                            document.getElementById("gkinjury" + k).style.color = '#c0020d';
                        } else {
                            document.getElementById("gkinjury" + k).classList = '';
                            document.getElementById("gkinjury" + k).classList.add('glyphicon');
                            document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("gkinjury" + k).style.color = '';
                        }
                        for (j = 1; j <= 2; j++) {
                            if (document.getElementById("gkname" + k).innerHTML == document.getElementById("namegk" + j).innerHTML) {
                                document.getElementById("gk" + k).style.pointerEvents = 'none';
                                document.getElementById("gk" + k).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("gk" + k).style.pointerEvents = 'auto';
                                document.getElementById("gk" + k).style.opacity = '1';
                            }
                        }

                        k = k + 1;
                    }
                } else if (selectionPl == "Defender") {

                    document.getElementById("gk").style.display = "none";
                    document.getElementById("def").style.display = "";
                    document.getElementById("mid").style.display = "none";
                    document.getElementById("fwd").style.display = "none";

                    document.getElementById("start").style.display = "none";
                    document.getElementById("prevPlayers").style.display = "none";
                    document.getElementById("nextPlayers").style.display = "none";
                    document.getElementById("end").style.display = "none";
                    document.getElementById("pageTitle").style.display = "none";
                    document.getElementById("pageSelect").style.display = "";
                    document.getElementById("startSelect").style.display = "";
                    document.getElementById("startSelect").value = "Defender-1";
                    document.getElementById("prevPlayersSelect").style.display = "";
                    document.getElementById("prevPlayersSelect").value = "Defender-" + jsonResponse[0];
                    document.getElementById("nextPlayersSelect").style.display = "";
                    document.getElementById("nextPlayersSelect").value = "Defender-" + jsonResponse[1];
                    document.getElementById("endSelect").style.display = "";
                    document.getElementById("endSelect").value = "Defender-" + jsonResponse[2];
                    document.getElementById("total").innerHTML = jsonResponse[3];
                    document.getElementById("pageNo").innerHTML = jsonResponse[1] - 1;
                    document.getElementById("totalPage").innerHTML = jsonResponse[2];
                    document.getElementById("nextPlayersSelect").disabled = false;
                    document.getElementById("endSelect").disabled = false;
                    document.getElementById("prevPlayersSelect").disabled = true;
                    document.getElementById("startSelect").disabled = true;


                    var k = 1;
                    for (i = 4; i < jsonResponse.length; i = i + 6) {


                        document.getElementById("def" + k).style.display = "";
                        document.getElementById("namedef" + k).innerHTML = jsonResponse[i];
                        document.getElementById("imagedef" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("teamdef" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("pricedef" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("scoredef" + k).innerHTML = jsonResponse[i + 4];
                        if (jsonResponse[i + 5] == "OUT") {

                            if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                                document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                                document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                                document.getElementById("definjury" + k).style.paddingBottom = '10px';
                                document.getElementById("definjury" + k).style.color = '#c0020d';
                            }

                        } else {
                            if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                                document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                                document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                                document.getElementById("definjury" + k).style.color = '';
                            }

                        }
                        for (j = 1; j <= 5; j++) {
                            if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                                document.getElementById("def" + k).style.pointerEvents = 'none';
                                document.getElementById("def" + k).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("def" + k).style.pointerEvents = 'auto';
                                document.getElementById("def" + k).style.opacity = '1';
                            }
                        }
                        k = k + 1;
                    }
                } else if (selectionPl == "Midfielder") {
                    document.getElementById("gk").style.display = "none";
                    document.getElementById("def").style.display = "none";
                    document.getElementById("mid").style.display = "";
                    document.getElementById("fwd").style.display = "none";


                    document.getElementById("start").style.display = "none";
                    document.getElementById("prevPlayers").style.display = "none";
                    document.getElementById("nextPlayers").style.display = "none";
                    document.getElementById("end").style.display = "none";
                    document.getElementById("pageTitle").style.display = "none";
                    document.getElementById("pageSelect").style.display = "";
                    document.getElementById("startSelect").style.display = "";
                    document.getElementById("startSelect").value = "Midfielder-1";
                    document.getElementById("prevPlayersSelect").style.display = "";
                    document.getElementById("prevPlayersSelect").value = "Midfielder-" + jsonResponse[0];
                    document.getElementById("nextPlayersSelect").style.display = "";
                    document.getElementById("nextPlayersSelect").value = "Midfielder-" + jsonResponse[1];
                    document.getElementById("endSelect").style.display = "";
                    document.getElementById("endSelect").value = "Midfielder-" + jsonResponse[2];
                    document.getElementById("total").innerHTML = jsonResponse[3];
                    document.getElementById("pageNo").innerHTML = jsonResponse[1] - 1;
                    document.getElementById("totalPage").innerHTML = jsonResponse[2];
                    document.getElementById("nextPlayersSelect").disabled = false;
                    document.getElementById("endSelect").disabled = false;
                    document.getElementById("prevPlayersSelect").disabled = true;
                    document.getElementById("startSelect").disabled = true;


                    var k = 1;
                    for (i = 4; i < jsonResponse.length; i = i + 6) {


                        document.getElementById("mid" + k).style.display = "";
                        document.getElementById("namemid" + k).innerHTML = jsonResponse[i];
                        document.getElementById("imagemid" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("teammid" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("pricemid" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("scoremid" + k).innerHTML = jsonResponse[i + 4];
                        if (jsonResponse[i + 5] == "OUT") {

                            if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                                document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                                document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                                document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                                document.getElementById("midinjury" + k).style.color = '#c0020d';
                            }

                        } else {
                            if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                                document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                               
                                document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                                document.getElementById("midinjury" + k).style.color = '';
                            }

                        }
                        for (j = 1; j <= 5; j++) {
                            if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                                document.getElementById("mid" + k).style.pointerEvents = 'none';
                                document.getElementById("mid" + k).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("mid" + k).style.pointerEvents = 'auto';
                                document.getElementById("mid" + k).style.opacity = '1';
                            }
                        }
                        k = k + 1;
                    }
                } else if (selectionPl == "Forward") {
                    document.getElementById("gk").style.display = "none";
                    document.getElementById("def").style.display = "none";
                    document.getElementById("mid").style.display = "none";
                    document.getElementById("fwd").style.display = "";


                    document.getElementById("start").style.display = "none";
                    document.getElementById("prevPlayers").style.display = "none";
                    document.getElementById("nextPlayers").style.display = "none";
                    document.getElementById("end").style.display = "none";
                    document.getElementById("pageTitle").style.display = "none";
                    document.getElementById("pageSelect").style.display = "";
                    document.getElementById("startSelect").style.display = "";
                    document.getElementById("startSelect").value = "Forward-1";
                    document.getElementById("prevPlayersSelect").style.display = "";
                    document.getElementById("prevPlayersSelect").value = "Forward-" + jsonResponse[0];
                    document.getElementById("nextPlayersSelect").style.display = "";
                    document.getElementById("nextPlayersSelect").value = "Forward-" + jsonResponse[1];
                    document.getElementById("endSelect").style.display = "";
                    document.getElementById("endSelect").value = "Forward-" + jsonResponse[2];
                    document.getElementById("total").innerHTML = jsonResponse[3];
                    document.getElementById("pageNo").innerHTML = jsonResponse[1] - 1;
                    document.getElementById("totalPage").innerHTML = jsonResponse[2];
                    document.getElementById("nextPlayersSelect").disabled = false;
                    document.getElementById("endSelect").disabled = false;
                    document.getElementById("prevPlayersSelect").disabled = true;
                    document.getElementById("startSelect").disabled = true;

                    var k = 1;
                    for (i = 4; i < jsonResponse.length; i = i + 6) {


                        document.getElementById("fwd" + k).style.display = "";
                        document.getElementById("namefwd" + k).innerHTML = jsonResponse[i];
                        document.getElementById("imagefwd" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("teamfwd" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("pricefwd" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("scorefwd" + k).innerHTML = jsonResponse[i + 4];
                        if (jsonResponse[i + 5] == "OUT") {

                            if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                                document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                                document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                                document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                                document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                            }

                        } else {
                            if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                                document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                                
                                document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                                document.getElementById("fwdinjury" + k).style.color = '';
                            }

                        }
                        for (j = 1; j <= 3; j++) {
                            if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                                document.getElementById("fwd" + k).style.pointerEvents = 'none';
                                document.getElementById("fwd" + k).style.opacity = '0.6';
                                break;
                            } else {
                                document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                                document.getElementById("fwd" + k).style.opacity = '1';
                            }
                        }
                        k = k + 1;
                    }
                }

                       //checkNoDisableSide();
            }
        };
        xhttp.open("GET", "playersSelection?pos=" + selectionPl + "-" + 1 + "&cat=" + selectCat, true);
        xhttp.send();
    } else if (selectionPl == "Boston Breakers" || selectionPl == "Chicago Red Stars" || selectionPl == "Utah Royals FC" || selectionPl == "Houston Dash" ||
            selectionPl == "North Carolina Courage" || selectionPl == "Orlando Pride" || selectionPl == "Portland Thorns FC" || selectionPl == "Seattle Reign FC" ||
            selectionPl == "Sky Blue FC" || selectionPl == "Washington Spirit"
            ) {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);
                if (selectCat == 'score') {
                    document.getElementById("catGK").innerHTML = "TS";
                    document.getElementById("catDEF").innerHTML = "TS";
                    document.getElementById("catMID").innerHTML = "TS";
                    document.getElementById("catFWD").innerHTML = "TS";
                } else if (selectCat == 'minutes') {
                    document.getElementById("catGK").innerHTML = "MP";
                    document.getElementById("catDEF").innerHTML = "MP";
                    document.getElementById("catMID").innerHTML = "MP";
                    document.getElementById("catFWD").innerHTML = "MP";
                } else if (selectCat == 'Goal') {
                    document.getElementById("catGK").innerHTML = "GS";
                    document.getElementById("catDEF").innerHTML = "GS";
                    document.getElementById("catMID").innerHTML = "GS";
                    document.getElementById("catFWD").innerHTML = "GS";
                } else if (selectCat == 'assist') {
                    document.getElementById("catGK").innerHTML = "A";
                    document.getElementById("catDEF").innerHTML = "A";
                    document.getElementById("catMID").innerHTML = "A";
                    document.getElementById("catFWD").innerHTML = "A";
                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("catGK").innerHTML = "CS";
                    document.getElementById("catDEF").innerHTML = "CS";
                    document.getElementById("catMID").innerHTML = "CS";
                    document.getElementById("catFWD").innerHTML = "CS";
                } else if (selectCat == 'ownGoal') {
                    document.getElementById("catGK").innerHTML = "OG";
                    document.getElementById("catDEF").innerHTML = "OG";
                    document.getElementById("catMID").innerHTML = "OG";
                    document.getElementById("catFWD").innerHTML = "OG";
                } else if (selectCat == 'goalConceded') {
                    document.getElementById("catGK").innerHTML = "GC";
                    document.getElementById("catDEF").innerHTML = "GC";
                    document.getElementById("catMID").innerHTML = "GC";
                    document.getElementById("catFWD").innerHTML = "GC";
                } else if (selectCat == 'pkSaved') {
                    document.getElementById("catGK").innerHTML = "PS";
                    document.getElementById("catDEF").innerHTML = "PS";
                    document.getElementById("catMID").innerHTML = "PS";
                    document.getElementById("catFWD").innerHTML = "PS";
                } else if (selectCat == 'pkMissed') {
                    document.getElementById("catGK").innerHTML = "PM";
                    document.getElementById("catDEF").innerHTML = "PM";
                    document.getElementById("catMID").innerHTML = "PM";
                    document.getElementById("catFWD").innerHTML = "PM";
                } else if (selectCat == 'yellow') {
                    document.getElementById("catGK").innerHTML = "YC";
                    document.getElementById("catDEF").innerHTML = "YC";
                    document.getElementById("catMID").innerHTML = "YC";
                    document.getElementById("catFWD").innerHTML = "YC";
                } else if (selectCat == 'red') {
                    document.getElementById("catGK").innerHTML = "RC";
                    document.getElementById("catDEF").innerHTML = "RC";
                    document.getElementById("catMID").innerHTML = "RC";
                    document.getElementById("catFWD").innerHTML = "RC";
                } else if (selectCat == 'saves') {
                    document.getElementById("catGK").innerHTML = "S";
                    document.getElementById("catDEF").innerHTML = "S";
                    document.getElementById("catMID").innerHTML = "S";
                    document.getElementById("catFWD").innerHTML = "S";
                }
                document.getElementById("search").style.display = "none";
                document.getElementById("gk").style.display = "";
                document.getElementById("def").style.display = "";
                document.getElementById("mid").style.display = "";
                document.getElementById("fwd").style.display = "";

                document.getElementById("start").style.display = "none";
                document.getElementById("prevPlayers").style.display = "none";
                document.getElementById("nextPlayers").style.display = "none";
                document.getElementById("end").style.display = "none";
                document.getElementById("pageTitle").style.display = "none";
                document.getElementById("pageSelect").style.display = "none";
                document.getElementById("startSelect").style.display = "none";
                document.getElementById("prevPlayersSelect").style.display = "none";
                document.getElementById("nextPlayersSelect").style.display = "none";
                document.getElementById("endSelect").style.display = "none";


                document.getElementById("total").innerHTML = +jsonResponse[0] + +jsonResponse[1] + +jsonResponse[2] + +jsonResponse[3];
                var k = 1;
                for (i = 4; i < (jsonResponse[0] * 6) + 4; i = i + 6) {

                    document.getElementById("gk" + k).style.display = "";
                    document.getElementById("gkname" + k).innerHTML = jsonResponse[i];
                    document.getElementById("gkimage" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("gkteam" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("gkprice" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("gkscore" + k).innerHTML = jsonResponse[i + 4];
                    if (jsonResponse[i + 5] == "OUT") {

                        document.getElementById("gkinjury" + k).classList = '';
                        document.getElementById("gkinjury" + k).classList.add('glyphicon');
                        document.getElementById("gkinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("gkinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("gkinjury" + k).style.color = '#c0020d';

                    } else {
                        document.getElementById("gkinjury" + k).classList = '';
                        document.getElementById("gkinjury" + k).classList.add('glyphicon');
                        document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("gkinjury" + k).style.color = '';


                    }
                    for (j = 1; j <= 2; j++) {
                        if (document.getElementById("gkname" + k).innerHTML == document.getElementById("namegk" + j).innerHTML) {
                            document.getElementById("gk" + k).style.pointerEvents = 'none';
                            document.getElementById("gk" + k).style.opacity = '0.6';
                            break;
                        } else {
                            document.getElementById("gk" + k).style.pointerEvents = 'auto';
                            document.getElementById("gk" + k).style.opacity = '1';
                        }
                    }

                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("gk" + k).style.display = "none";
                }
                var k = 1;
                for (i = (jsonResponse[0] * 6) + 4; i < (jsonResponse[0] * 6) + (jsonResponse[1] * 6) + 4; i = i + 6) {

                    document.getElementById("def" + k).style.display = "";
                    document.getElementById("namedef" + k).innerHTML = jsonResponse[i];
                    document.getElementById("imagedef" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("teamdef" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("pricedef" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("scoredef" + k).innerHTML = jsonResponse[i + 4];
                    if (jsonResponse[i + 5] == "OUT") {

                        if (document.getElementById("definjury" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("definjury" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("definjury" + k).style.paddingBottom = '10px';
                            document.getElementById("definjury" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("definjury" + k).style.color = '';
                        }

                    }
                    for (j = 1; j <= 5; j++) {
                        if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                            document.getElementById("def" + k).style.pointerEvents = 'none';
                            document.getElementById("def" + k).style.opacity = '0.6';
                            break;
                        } else {
                            document.getElementById("def" + k).style.pointerEvents = 'auto';
                            document.getElementById("def" + k).style.opacity = '1';
                        }
                    }
                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("def" + k).style.display = "none";
                }
                var k = 1;
                for (i = (jsonResponse[0] * 6) + (jsonResponse[1] * 6) + 4; i < (jsonResponse[0] * 6) + (jsonResponse[1] * 6) + (jsonResponse[2] * 6) + 4; i = i + 6) {

                    document.getElementById("mid" + k).style.display = "";
                    document.getElementById("namemid" + k).innerHTML = jsonResponse[i];
                    document.getElementById("imagemid" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("teammid" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("pricemid" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("scoremid" + k).innerHTML = jsonResponse[i + 4];
                    if (jsonResponse[i + 5] == "OUT") {

                        if (document.getElementById("midinjury" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("midinjury" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                            document.getElementById("midinjury" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                           
                            document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("midinjury" + k).style.color = '';
                        }

                    }
                    for (j = 1; j <= 5; j++) {
                        if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                            document.getElementById("mid" + k).style.pointerEvents = 'none';
                            document.getElementById("mid" + k).style.opacity = '0.6';
                            break;
                        } else {
                            document.getElementById("mid" + k).style.pointerEvents = 'auto';
                            document.getElementById("mid" + k).style.opacity = '1';
                        }
                    }
                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("mid" + k).style.display = "none";
                }
                var k = 1;
                for (i = (jsonResponse[0] * 6) + (jsonResponse[1] * 6) + (jsonResponse[2] * 6) + 4; i < (jsonResponse[0] * 6) + (jsonResponse[1] * 6) + (jsonResponse[2] * 6) + (jsonResponse[3] * 6) + 4; i = i + 6) {

                    document.getElementById("fwd" + k).style.display = "";
                    document.getElementById("namefwd" + k).innerHTML = jsonResponse[i];
                    document.getElementById("imagefwd" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("teamfwd" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("pricefwd" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("scorefwd" + k).innerHTML = jsonResponse[i + 4];
                    if (jsonResponse[i + 5] == "OUT") {

                        if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("fwdinjury" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                            document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                            
                            document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("fwdinjury" + k).style.color = '';
                        }

                    }
                    for (j = 1; j <= 3; j++) {
                        if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                            document.getElementById("fwd" + k).style.pointerEvents = 'none';
                            document.getElementById("fwd" + k).style.opacity = '0.6';
                            break;
                        } else {
                            document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                            document.getElementById("fwd" + k).style.opacity = '1';
                        }
                    }
                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("fwd" + k).style.display = "none";
                }
            }

                    // checkNoDisableSide();

        };
        xhttp.open("GET", "playersSelectionTeam?team=" + selectionPl + "&cat=" + selectCat, true);
        xhttp.send();
    }

}




$(document).on("click", "#nextPlayersSelect", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#nextPlayersSelect').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        var parts = page.split("-");

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelect").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("gkinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }


                for (j = 1; j <= 2; j++) {
                    if (document.getElementById("gkname" + k).innerHTML == document.getElementById("namegk" + j).innerHTML) {
                        document.getElementById("gk" + k).style.pointerEvents = 'none';
                        document.getElementById("gk" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("gk" + k).style.pointerEvents = 'auto';
                        document.getElementById("gk" + k).style.opacity = '1';
                    }

                }


                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelect").value = "Defender-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Defender-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).style.paddingBottom = '10px';
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                        document.getElementById("def" + k).style.pointerEvents = 'none';
                        document.getElementById("def" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("def" + k).style.pointerEvents = 'auto';
                        document.getElementById("def" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelect").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                       
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                        document.getElementById("mid" + k).style.pointerEvents = 'none';
                        document.getElementById("mid" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("mid" + k).style.pointerEvents = 'auto';
                        document.getElementById("mid" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelect").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 3; j++) {
                    if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                        document.getElementById("fwd" + k).style.pointerEvents = 'none';
                        document.getElementById("fwd" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                        document.getElementById("fwd" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }

       // checkNoDisableSide();
    });
});



$(document).on("click", "#endSelect", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#endSelect').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...



        var parts = page.split("-");
        document.getElementById("nextPlayersSelect").disabled = true;
        document.getElementById("endSelect").disabled = true;
        document.getElementById("prevPlayersSelect").value = parts[1] - 1;
        document.getElementById("prevPlayersSelect").disabled = false;
        document.getElementById("startSelect").disabled = false;

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelect").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = parts[1];
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("gkinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }
                for (j = 1; j <= 2; j++) {
                    if (document.getElementById("gkname" + k).innerHTML == document.getElementById("namegk" + j).innerHTML) {
                        document.getElementById("gk" + k).style.pointerEvents = 'none';
                        document.getElementById("gk" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("gk" + k).style.pointerEvents = 'auto';
                        document.getElementById("gk" + k).style.opacity = '1';
                    }

                }

                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelect").value = "Defender-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Defender-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).style.paddingBottom = '10px';
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                        document.getElementById("def" + k).style.pointerEvents = 'none';
                        document.getElementById("def" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("def" + k).style.pointerEvents = 'auto';
                        document.getElementById("def" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelect").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                       
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                        document.getElementById("mid" + k).style.pointerEvents = 'none';
                        document.getElementById("mid" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("mid" + k).style.pointerEvents = 'auto';
                        document.getElementById("mid" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelect").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 3; j++) {
                    if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                        document.getElementById("fwd" + k).style.pointerEvents = 'none';
                        document.getElementById("fwd" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                        document.getElementById("fwd" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }

       // checkNoDisableSide();
    });
});




$(document).on("click", "#startSelect", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#startSelect').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...


        var parts = page.split("-");
        document.getElementById("nextPlayersSelect").disabled = false;
        document.getElementById("endSelect").disabled = false;

        document.getElementById("prevPlayersSelect").disabled = true;
        document.getElementById("startSelect").disabled = true;

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelect").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = parts[1];
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("gkinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }
                for (j = 1; j <= 2; j++) {
                    if (document.getElementById("gkname" + k).innerHTML == document.getElementById("namegk" + j).innerHTML) {
                        document.getElementById("gk" + k).style.pointerEvents = 'none';
                        document.getElementById("gk" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("gk" + k).style.pointerEvents = 'auto';
                        document.getElementById("gk" + k).style.opacity = '1';
                    }

                }


                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelect").value = "Defender-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Defender-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).style.paddingBottom = '10px';
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                        document.getElementById("def" + k).style.pointerEvents = 'none';
                        document.getElementById("def" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("def" + k).style.pointerEvents = 'auto';
                        document.getElementById("def" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelect").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                       
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                        document.getElementById("mid" + k).style.pointerEvents = 'none';
                        document.getElementById("mid" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("mid" + k).style.pointerEvents = 'auto';
                        document.getElementById("mid" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelect").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (parts[1] == responseText[2]) {
                document.getElementById("nextPlayersSelect").disabled = true;
                document.getElementById("endSelect").disabled = true;
            }
            if (responseText[1] == 3) {
                document.getElementById("prevPlayersSelect").disabled = false;
                document.getElementById("startSelect").disabled = false;
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
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 3; j++) {
                    if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                        document.getElementById("fwd" + k).style.pointerEvents = 'none';
                        document.getElementById("fwd" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                        document.getElementById("fwd" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }

       // checkNoDisableSide();
    });
});




$(document).on("click", "#prevPlayersSelect", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#prevPlayersSelect').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersSelection", {pos: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        var parts = page.split("-");

        if (parts[0] == "Goalkeeper") {
            document.getElementById("nextPlayersSelect").value = "Goalkeeper-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Goalkeeper-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;

            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelect").value = "Goalkeeper-" + 1;
                document.getElementById("prevPlayersSelect").disabled = true;
                document.getElementById("startSelect").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelect").disabled = false;
                document.getElementById("endSelect").disabled = false;
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
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                    document.getElementById("gkinjury" + k).style.paddingBottom = '10px';
                    document.getElementById("gkinjury" + k).style.color = '#c0020d';

                } else {
                    document.getElementById("gkinjury" + k).classList = '';
                    document.getElementById("gkinjury" + k).classList.add('glyphicon');
                    document.getElementById("gkinjury" + k).classList.add('glyphicon-info-sign');
                    document.getElementById("gkinjury" + k).style.color = '';
                }
                for (j = 1; j <= 2; j++) {
                    if (document.getElementById("gkname" + k).innerHTML == document.getElementById("namegk" + j).innerHTML) {
                        document.getElementById("gk" + k).style.pointerEvents = 'none';
                        document.getElementById("gk" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("gk" + k).style.pointerEvents = 'auto';
                        document.getElementById("gk" + k).style.opacity = '1';
                    }

                }

                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("gk" + k).style.display = "none";
            }
        } else if (parts[0] == "Defender") {
            document.getElementById("nextPlayersSelect").value = "Defender-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Defender-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelect").value = "Defender-" + 1;
                document.getElementById("prevPlayersSelect").disabled = true;
                document.getElementById("startSelect").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelect").disabled = false;
                document.getElementById("endSelect").disabled = false;
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
                        document.getElementById("definjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).style.paddingBottom = '10px';
                        document.getElementById("definjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("definjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("definjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        document.getElementById("definjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("definjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namedef" + k).innerHTML == document.getElementById("defname" + j).innerHTML) {
                        document.getElementById("def" + k).style.pointerEvents = 'none';
                        document.getElementById("def" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("def" + k).style.pointerEvents = 'auto';
                        document.getElementById("def" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("def" + k).style.display = "none";
            }
        } else if (parts[0] == "Midfielder") {
            document.getElementById("nextPlayersSelect").value = "Midfielder-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Midfielder-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;
            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelect").value = "Midfielder-" + 1;
                document.getElementById("prevPlayersSelect").disabled = true;
                document.getElementById("startSelect").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelect").disabled = false;
                document.getElementById("endSelect").disabled = false;
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
                        document.getElementById("midinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("midinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("midinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("midinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("midinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                       
                        document.getElementById("midinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("midinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 5; j++) {
                    if (document.getElementById("namemid" + k).innerHTML == document.getElementById("midname" + j).innerHTML) {
                        document.getElementById("mid" + k).style.pointerEvents = 'none';
                        document.getElementById("mid" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("mid" + k).style.pointerEvents = 'auto';
                        document.getElementById("mid" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("mid" + k).style.display = "none";
            }
        } else if (parts[0] == "Forward") {
            document.getElementById("nextPlayersSelect").value = "Forward-" + responseText[1];
            document.getElementById("prevPlayersSelect").value = "Forward-" + responseText[0];
            document.getElementById("pageNo").innerHTML = responseText[1] - 1;

            if (responseText[0] == 0) {
                document.getElementById("prevPlayersSelect").value = "Forward-" + 1;
                document.getElementById("prevPlayersSelect").disabled = true;
                document.getElementById("startSelect").disabled = true;
            }
            if (responseText[1] - 1 == parts[1]) {
                document.getElementById("nextPlayersSelect").disabled = false;
                document.getElementById("endSelect").disabled = false;
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
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                        document.getElementById("fwdinjury" + k).style.paddingBottom = '10px';
                        document.getElementById("fwdinjury" + k).style.color = '#c0020d';
                    }

                } else {
                    if (document.getElementById("fwdinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                        document.getElementById("fwdinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                        
                        document.getElementById("fwdinjury" + k).classList.add('glyphicon-info-sign');
                        document.getElementById("fwdinjury" + k).style.color = '';
                    }

                }
                for (j = 1; j <= 3; j++) {
                    if (document.getElementById("namefwd" + k).innerHTML == document.getElementById("fwdname" + j).innerHTML) {
                        document.getElementById("fwd" + k).style.pointerEvents = 'none';
                        document.getElementById("fwd" + k).style.opacity = '0.6';
                        break;
                    } else {
                        document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                        document.getElementById("fwd" + k).style.opacity = '1';
                    }

                }
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }

       // checkNoDisableSide();
    });
});



function changeGK()
{

    document.getElementById('selectPlayers').options[2].selected = "true";
    showPlayers();

}
function changeDEF()
{

    document.getElementById('selectPlayers').options[3].selected = "true";
    showPlayers();

}

function changeMID()
{

    document.getElementById('selectPlayers').options[4].selected = "true";
    showPlayers();

}

function changeFWD()
{

    document.getElementById('selectPlayers').options[5].selected = "true";
    showPlayers();

}




function addPlayer() {

    var players = document.getElementById("totalPlayers").textContent;
    var playerPrice = document.getElementById("playerPrice").textContent;
    var remainPrice = document.getElementById("remainPrice").textContent;
    document.getElementById("checkbox").style.display = "";
    document.getElementById("checkbox").style.backgroundColor = "#92c992";
    document.getElementById("checkbox").style.border = "1px solid #0ea331";
    document.getElementById("playername").innerHTML = document.getElementById("playersName").textContent;
    document.getElementById("message").innerHTML = " has been added to your squad."
    document.getElementById("errorbox").style.display = 'none';
    document.getElementById("errorbox").style.backgroundColor = "#ea344f";
    document.getElementById("errorbox").style.border = "1px solid #d4213c";
    document.getElementById("enterError").style.display = 'none';
    document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(playerPrice.split("$")[1]) * 10)) / 10).toFixed(1);
    if (document.getElementById("remainPrice").textContent < 0.0) {
        document.getElementById("remainPrice").style.color = '#d4213c';
        document.getElementById("dollar").style.color = '#d4213c';
        document.getElementById("enterTeam").disabled = true;
        console.log(document.getElementById("enterTeam").disabled);
    }
    var sum = eval(players) + 1;
    var counter = 1;
    for (i = 1; i <= 15; i++) {
        if (document.getElementById("playerTeam").textContent == document.getElementById("team" + i).textContent) {
            counter = eval(counter) + 1;

        }
        if (counter > 4) {


            document.getElementById("errorbox").style.display = '';
            document.getElementById("teamError").style.display = '';
            document.getElementById("posError").style.display = 'none';
            document.getElementById("moneyError").style.display = 'none';

            document.getElementById("team").innerHTML = document.getElementById("playerTeam").textContent;
            break;
        }
    }
    if (sum == '15') {

        document.getElementById("allPlayers").style.color = '#0ea331';
        document.getElementById("totalPlayers").style.color = '#0ea331';
    }
    if (document.getElementById("playerPosition").textContent == 'Goalkeeper') {
        var name = document.getElementById("playersName").textContent;
        var image = document.getElementById("playerImage").textContent;


        for (i = 1; i <= 3; i++) {
            if (i == 3) {
                break;
            }
            if (document.getElementById("namegk" + i).innerHTML == 'Goalkeeper') {
                break;
            }
        }
        if (i <= 2) {
            document.getElementById("totalPlayers").innerHTML = eval(players) + 1;

            document.getElementById("gk" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("gk" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("imagegk" + i).src = "img/" + image;
            document.getElementById("namegk" + i).innerHTML = name;
            if (document.getElementById("gkinjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-one-fine-red-dot")) {
                document.getElementById("namegk" + i).style.backgroundColor = "#c0020d";
                document.getElementById("namegk" + i).style.border = "2px solid #c0020d";
            }
            document.getElementById("pricegk" + i).innerHTML = document.getElementById("playerPrice").textContent + 'm';
            document.getElementById("team" + i).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selGK" + i).setAttribute('onclick', 'removeModalGK(' + i + ')');

        } else {

            if (counter > 4) {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Goalkeeper';
            } else {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Goalkeeper';
            }
        }


    } else if (document.getElementById("playerPosition").textContent == 'Defender') {
        var name = document.getElementById("playersName").textContent;
        var image = document.getElementById("playerImage").textContent;

        for (i = 1; i <= 6; i++) {
            if (i == 6) {
                break;
            }
            if (document.getElementById("defname" + i).innerHTML == 'Defender') {
                break;
            }
        }
        if (i <= 5) {
            document.getElementById("totalPlayers").innerHTML = eval(players) + 1;

            document.getElementById("def" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("def" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("defimage" + i).src = "img/" + image;
            document.getElementById("defname" + i).innerHTML = name;
            if (document.getElementById("definjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-one-fine-red-dot")) {
                document.getElementById("defname" + i).style.backgroundColor = "#c0020d";
                document.getElementById("defname" + i).style.border = "2px solid #c0020d";
            }
            document.getElementById("defprice" + i).innerHTML = document.getElementById("playerPrice").textContent + 'm';
            document.getElementById("team" + (i + 2)).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selDEF" + i).setAttribute('onclick', 'removeModalDEF(' + i + ')');
        } else {

            if (counter > 4) {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Defender';
            } else {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Defender';
            }
        }

    } else if (document.getElementById("playerPosition").textContent == 'Midfielder') {
        var name = document.getElementById("playersName").textContent;
        var image = document.getElementById("playerImage").textContent;
        document.getElementById("mid" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
        document.getElementById("mid" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
        for (i = 1; i <= 6; i++) {
            if (i == 6) {
                break;
            }
            if (document.getElementById("midname" + i).innerHTML == 'Midfielder') {
                break;
            }
        }
        if (i <= 5) {
            document.getElementById("totalPlayers").innerHTML = eval(players) + 1;

            document.getElementById("mid" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("mid" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("midimage" + i).src = "img/" + image;
            document.getElementById("midname" + i).innerHTML = name;
            if (document.getElementById("midinjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-one-fine-red-dot")) {
                document.getElementById("midname" + i).style.backgroundColor = "#c0020d";
                document.getElementById("midname" + i).style.border = "2px solid #c0020d";
            }
            document.getElementById("midprice" + i).innerHTML = document.getElementById("playerPrice").textContent + 'm';
            document.getElementById("team" + (i + 7)).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selMID" + i).setAttribute('onclick', 'removeModalMID(' + i + ')');
        } else {

            if (counter > 4) {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Midfielder';
            } else {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Midfielder';
            }
        }

    } else if (document.getElementById("playerPosition").textContent == 'Forward') {
        var name = document.getElementById("playersName").textContent;
        var image = document.getElementById("playerImage").textContent;

        for (i = 1; i <= 4; i++) {
            if (i == 4) {
                break;
            }
            if (document.getElementById("fwdname" + i).innerHTML == 'Forward') {
                break;
            }
        }
        if (i <= 3) {
            document.getElementById("totalPlayers").innerHTML = eval(players) + 1;

            document.getElementById("fwd" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("fwd" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("fwdimage" + i).src = "img/" + image;
            document.getElementById("fwdname" + i).innerHTML = name;
            if (document.getElementById("fwdinjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-one-fine-red-dot")) {
                document.getElementById("fwdname" + i).style.backgroundColor = "#c0020d";
                document.getElementById("fwdname" + i).style.border = "2px solid #c0020d";
            }
            document.getElementById("fwdprice" + i).innerHTML = document.getElementById("playerPrice").textContent + 'm';
            document.getElementById("team" + (i + 12)).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selFWD" + i).setAttribute('onclick', 'removeModalFWD(' + i + ')');

        } else {

            if (counter > 4) {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Forward';
            } else {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

                document.getElementById("pos").innerHTML = 'Forward';
            }
        }

    }


    $('#players').modal('hide');
}


function reset() {
    document.getElementById("autopick").disabled = false;

    document.getElementById("totalPlayers").innerHTML = '0';
    document.getElementById("allPlayers").style.color = '#d4213c';
    document.getElementById("totalPlayers").style.color = '#d4213c';
    document.getElementById("remainPrice").innerHTML = "100.0";
    document.getElementById("errorbox").style.display = 'none';
    document.getElementById("checkbox").style.display = "none";
    for (i = 1; i <= 15; i++) {
        document.getElementById("team" + i).innerHTML = '';
    }

    for (i = 1; i <= 2; i++) {
        document.getElementById("imagegk" + i).src = "img/" + 'subsgk.png';
        document.getElementById("namegk" + i).innerHTML = 'Goalkeeper';
        document.getElementById("namegk" + i).style.backgroundColor = "#02509a";
        document.getElementById("namegk" + i).style.border = "2px solid #02509a";
        document.getElementById("team" + i).innerHTML = ' ';
        document.getElementById("selGK" + i).setAttribute('onclick', 'changeGK()');
        document.getElementById("pricegk" + i).innerHTML = '';

    }
    for (i = 1; i <= 20; i++) {

        document.getElementById("gk" + i).style.pointerEvents = 'auto';
        document.getElementById("gk" + i).style.opacity = '1';
    }
    for (i = 1; i <= 5; i++) {
        document.getElementById("defimage" + i).src = "img/" + 'subs.png';
        document.getElementById("defname" + i).innerHTML = 'Defender';
        document.getElementById("defname" + i).style.backgroundColor = "#02509a";
        document.getElementById("defname" + i).style.border = "2px solid #02509a";
        document.getElementById("team" + (i + 2)).innerHTML = ' ';
        document.getElementById("selDEF" + i).setAttribute('onclick', 'changeDEF()');
        document.getElementById("defprice" + i).innerHTML = '';
    }
    for (i = 1; i <= 20; i++) {

        document.getElementById("def" + i).style.pointerEvents = 'auto';
        document.getElementById("def" + i).style.opacity = '1';
    }
    for (i = 1; i <= 5; i++) {
        document.getElementById("midimage" + i).src = "img/" + 'subs.png';
        document.getElementById("midname" + i).innerHTML = 'Midfielder';
        document.getElementById("midname" + i).style.backgroundColor = "#02509a";
        document.getElementById("midname" + i).style.border = "2px solid #02509a";
        document.getElementById("team" + (i + 7)).innerHTML = ' ';
        document.getElementById("selMID" + i).setAttribute('onclick', 'changeMID()');
        document.getElementById("midprice" + i).innerHTML = '';
    }
    for (i = 1; i <= 20; i++) {

        document.getElementById("mid" + i).style.pointerEvents = 'auto';
        document.getElementById("mid" + i).style.opacity = '1';
    }
    for (i = 1; i <= 3; i++) {
        document.getElementById("fwdimage" + i).src = "img/" + 'subs.png';
        document.getElementById("fwdname" + i).innerHTML = 'Forward';
        document.getElementById("fwdname" + i).style.backgroundColor = "#02509a";
        document.getElementById("fwdname" + i).style.border = "2px solid #02509a";
        document.getElementById("team" + (i + 12)).innerHTML = ' ';
        document.getElementById("selFWD" + i).setAttribute('onclick', 'changeFWD()');
        document.getElementById("fwdprice" + i).innerHTML = '';
    }
    for (i = 1; i <= 20; i++) {

        document.getElementById("fwd" + i).style.pointerEvents = 'auto';
        document.getElementById("fwd" + i).style.opacity = '1';
    }
}

function removeModalGK(i) {

    var name = document.getElementById("namegk" + i).textContent;
    var team = document.getElementById("gkteam" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("playersTitle").innerHTML = jsonResponse[0];
            document.getElementById("rmvplayersName").innerHTML = name;
            document.getElementById("rmvplayerPosition").innerHTML = jsonResponse[1];
            document.getElementById("rmvplayerNo").innerHTML = i;
            document.getElementById("rmvplayerTeam").innerHTML = team;
            if (name.indexOf("'") == 1) {

                var nameArray = name.split("'");

                name = nameArray[0] + "\\'" + nameArray[1];

            }


            document.getElementById("infoButtonRM").setAttribute('onclick', "openInfo('" + name + "')");
            $('#removePlayer').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function removeModalDEF(i) {

    var name = document.getElementById("defname" + i).textContent;
    var team = document.getElementById("teamdef" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("playersTitle").innerHTML = jsonResponse[0];
            document.getElementById("rmvplayersName").innerHTML = name;
            document.getElementById("rmvplayerPosition").innerHTML = jsonResponse[1];
            document.getElementById("rmvplayerNo").innerHTML = i;
            document.getElementById("rmvplayerTeam").innerHTML = team;
            if (name.indexOf("'") == 1) {

                var nameArray = name.split("'");

                name = nameArray[0] + "\\'" + nameArray[1];

            }


            document.getElementById("infoButtonRM").setAttribute('onclick', "openInfo('" + name + "')");
            $('#removePlayer').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function removeModalMID(i) {

    var name = document.getElementById("midname" + i).textContent;
    var team = document.getElementById("teammid" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("playersTitle").innerHTML = jsonResponse[0];
            document.getElementById("rmvplayersName").innerHTML = name;
            document.getElementById("rmvplayerPosition").innerHTML = jsonResponse[1];
            document.getElementById("rmvplayerNo").innerHTML = i;
            document.getElementById("rmvplayerTeam").innerHTML = team;
            if (name.indexOf("'") == 1) {

                var nameArray = name.split("'");

                name = nameArray[0] + "\\'" + nameArray[1];

            }


            document.getElementById("infoButtonRM").setAttribute('onclick', "openInfo('" + name + "')");
            $('#removePlayer').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function removeModalFWD(i) {

    var name = document.getElementById("fwdname" + i).textContent;
    var team = document.getElementById("teamfwd" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("playersTitle").innerHTML = jsonResponse[0];
            document.getElementById("rmvplayersName").innerHTML = name;
            document.getElementById("rmvplayerPosition").innerHTML = jsonResponse[1];
            document.getElementById("rmvplayerNo").innerHTML = i;
            document.getElementById("rmvplayerTeam").innerHTML = team;
            if (name.indexOf("'") == 1) {

                var nameArray = name.split("'");

                name = nameArray[0] + "\\'" + nameArray[1];

            }


            document.getElementById("infoButtonRM").setAttribute('onclick', "openInfo('" + name + "')");
            $('#removePlayer').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}


function search() {
    var selectCat = document.getElementById('categorySelection').value;
    var name = $('#searchBOX').val();
    if (name.length > 0) {
        document.getElementById("gk").style.display = "none";
        document.getElementById("def").style.display = "none";
        document.getElementById("mid").style.display = "none";
        document.getElementById("fwd").style.display = "none";
        document.getElementById("search").style.display = "";
        document.getElementById("start").style.display = "none";
        document.getElementById("prevPlayers").style.display = "none";
        document.getElementById("nextPlayers").style.display = "none";
        document.getElementById("end").style.display = "none";
        document.getElementById("pageTitle").style.display = "none";
        document.getElementById("pageSelect").style.display = "none";
        document.getElementById("startSelect").style.display = "none";
        document.getElementById("prevPlayersSelect").style.display = "none";
        document.getElementById("nextPlayersSelect").style.display = "none";
        document.getElementById("endSelect").style.display = "none";




        var xhttp;
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);
                var k = 1;
                if (selectCat == 'score') {
                    document.getElementById("catsrch").innerHTML = "TS";
                } else if (selectCat == 'minutes') {
                    document.getElementById("catsrch").innerHTML = "MP";
                } else if (selectCat == 'Goal') {
                    document.getElementById("catsrch").innerHTML = "GS";
                } else if (selectCat == 'assist') {
                    document.getElementById("catsrch").innerHTML = "A";
                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("catsrch").innerHTML = "CS";
                } else if (selectCat == 'ownGoal') {
                    document.getElementById("catsrch").innerHTML = "OG";
                } else if (selectCat == 'goalConceded') {
                    document.getElementById("catsrch").innerHTML = "GC";
                } else if (selectCat == 'pkSaved') {
                    document.getElementById("catsrch").innerHTML = "PS";
                } else if (selectCat == 'pkMissed') {
                    document.getElementById("catsrch").innerHTML = "PM";
                } else if (selectCat == 'yellow') {
                    document.getElementById("catsrch").innerHTML = "YC";
                } else if (selectCat == 'red') {
                    document.getElementById("catsrch").innerHTML = "RC";
                } else if (selectCat == 'saves') {
                    document.getElementById("catsrch").innerHTML = "S";
                }
                document.getElementById("total").innerHTML = (jsonResponse.length / 7);

                for (i = 0; i < jsonResponse.length; i = i + 7) {
                    if (k > 25)
                        break;

                    document.getElementById("search" + k).style.display = "";
                    document.getElementById("srchname" + k).innerHTML = jsonResponse[i];
                    document.getElementById("srchpos" + k).innerHTML = jsonResponse[i + 1];
                    document.getElementById("srchimage" + k).src = "img/" + jsonResponse[i + 2];
                    document.getElementById("srchteam" + k).innerHTML = jsonResponse[i + 3];
                    document.getElementById("srchprice" + k).innerHTML = "$" + jsonResponse[i + 4];
                    document.getElementById("srchscore" + k).innerHTML = jsonResponse[i + 5];
                    if (jsonResponse[i + 6] == "OUT") {

                        if (document.getElementById("srchinjury" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("srchinjury" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("srchinjury" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("srchinjury" + k).style.paddingBottom = '10px';
                            document.getElementById("srchinjury" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("srchinjury" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("srchinjury" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("srchinjury" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("srchinjury" + k).style.color = '';
                        }

                    }

                    k = k + 1;
                }

                for (k; k <= 25; k++) {
                    document.getElementById("search" + k).style.display = "none";
                }
            }
        };
        xhttp.open("GET", "searchBox?name=" + name + "&cat=" + selectCat, true);
        xhttp.send();
    } else {
        showPlayers();
    }


}


function searchModal(i) {
    var name = document.getElementById("srchname" + i).textContent;
    var price = document.getElementById("srchprice" + i).textContent;
    var image = document.getElementById("srchimage" + i).src;
    var team = document.getElementById("srchteam" + i).textContent;
    image = image.split("/")[5];






    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " " + price;
            document.getElementById("playersName").innerHTML = name;
            document.getElementById("playerNo").innerHTML = i;
            document.getElementById("playerPrice").innerHTML = price;
            document.getElementById("playerImage").innerHTML = image;
            document.getElementById("playerPosition").innerHTML = jsonResponse[1];
            document.getElementById("playerTeam").innerHTML = team;
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function removePlayer() {
    var players = document.getElementById("totalPlayers").textContent;
    document.getElementById("checkbox").style.display = "";
    document.getElementById("checkbox").style.backgroundColor = "#ea344f";
    document.getElementById("checkbox").style.border = "1px solid #d4213c";
    document.getElementById("playername").innerHTML = document.getElementById("rmvplayersName").textContent;
    document.getElementById("message").innerHTML = " remove from the squad."
    document.getElementById("enterError").style.display = 'none';
    document.getElementById("teamError").style.display = 'none';

    if (document.getElementById("remainPrice").textContent.indexOf('-') != -1) {
        console.log("@@@I am here!");
        document.getElementById("remainPrice").style.color = '#0ea331';
        document.getElementById("dollar").style.color = '#0ea331';
        document.getElementById("enterTeam").disabled = false;

    }
    document.getElementById("totalPlayers").innerHTML = eval(players) - 1;
    var counter = 0;
    for (i = 1; i <= 15; i++) {
        for (j = eval(i) + 1; j <= 15; j++) {
            if (document.getElementById("team" + j).textContent == document.getElementById("team" + i).textContent && document.getElementById("team" + i).textContent != "") {
                counter = eval(counter) + 1;

                break;
            }

        }


    }
    if (counter <= 4) {

        document.getElementById("errorbox").style.display = 'none';
        document.getElementById("posError").style.display = 'none';
        document.getElementById("moneyError").style.display = 'none';

    } else {
        document.getElementById("errorbox").style.display = '';
        document.getElementById("posError").style.display = 'none';
        document.getElementById("moneyError").style.display = 'none';

        document.getElementById("team").innerHTML = document.getElementById("playerTeam").textContent;
    }


    if (document.getElementById("totalPlayers").innerHTML != '15') {

        document.getElementById("allPlayers").style.color = '#d4213c';
        document.getElementById("totalPlayers").style.color = '#d4213c';
    }

    if (document.getElementById("rmvplayerPosition").textContent == 'Goalkeeper') {
        var name = document.getElementById("rmvplayersName").textContent;

        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkname" + i).textContent == name) {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
                break;
            }
        }
        document.getElementById("imagegk" + document.getElementById("rmvplayerNo").textContent).src = "img/" + 'subsgk.png';
        document.getElementById("namegk" + document.getElementById("rmvplayerNo").textContent).innerHTML = 'Goalkeeper';
        document.getElementById("namegk" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor = "#02509a";
        document.getElementById("namegk" + document.getElementById("rmvplayerNo").textContent).style.border = "2px solid #02509a";
        document.getElementById("team" + (document.getElementById("rmvplayerNo").textContent)).innerHTML = ' ';
        document.getElementById("selGK" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeGK()');
        var playerPrice = document.getElementById("pricegk" + document.getElementById("rmvplayerNo").textContent).textContent;
        document.getElementById("pricegk" + document.getElementById("rmvplayerNo").textContent).innerHTML = "";
        console.log(playerPrice);
        var remainPrice = document.getElementById("remainPrice").textContent;
        var price = playerPrice.split("$")[1].split("m")[0];
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);


    } else if (document.getElementById("rmvplayerPosition").textContent == 'Defender') {
        var name = document.getElementById("rmvplayersName").textContent;

        for (k = 1; k <= 20; k++) {
            if (document.getElementById("defname" + k).textContent == name) {
                document.getElementById("def" + k).style.pointerEvents = 'auto';
                document.getElementById("def" + k).style.opacity = '1';
                break;
            }
        }

        document.getElementById("defimage" + document.getElementById("rmvplayerNo").textContent).src = "img/" + 'subs.png';
        document.getElementById("defname" + document.getElementById("rmvplayerNo").textContent).innerHTML = 'Defender';
        document.getElementById("defname" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor = "#02509a";
        document.getElementById("defname" + document.getElementById("rmvplayerNo").textContent).style.border = "2px solid #02509a";
        document.getElementById("team" + (eval(document.getElementById("rmvplayerNo").textContent) + 2)).innerHTML = ' ';
        document.getElementById("selDEF" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeDEF()');
        var playerPrice = document.getElementById("defprice" + document.getElementById("rmvplayerNo").textContent).textContent;
        document.getElementById("defprice" + document.getElementById("rmvplayerNo").textContent).innerHTML = "";
        console.log(playerPrice);
        var remainPrice = document.getElementById("remainPrice").textContent;
        var price = playerPrice.split("$")[1].split("m")[0];
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);


    } else if (document.getElementById("rmvplayerPosition").textContent == 'Midfielder') {
        var name = document.getElementById("rmvplayersName").textContent;

        for (k = 1; k <= 20; k++) {
            if (document.getElementById("midname" + k).textContent == name) {
                document.getElementById("mid" + k).style.pointerEvents = 'auto';
                document.getElementById("mid" + k).style.opacity = '1';
                break;
            }
        }
        document.getElementById("midimage" + document.getElementById("rmvplayerNo").textContent).src = "img/" + 'subs.png';
        document.getElementById("midname" + document.getElementById("rmvplayerNo").textContent).innerHTML = 'Midfielder';
        document.getElementById("midname" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor = "#02509a";
        document.getElementById("midname" + document.getElementById("rmvplayerNo").textContent).style.border = "2px solid #02509a";
        document.getElementById("team" + (eval(document.getElementById("rmvplayerNo").textContent) + 7)).innerHTML = ' ';
        document.getElementById("selMID" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeMID()');
        var playerPrice = document.getElementById("midprice" + document.getElementById("rmvplayerNo").textContent).textContent;
        document.getElementById("midprice" + document.getElementById("rmvplayerNo").textContent).innerHTML = "";
        console.log(playerPrice);
        var remainPrice = document.getElementById("remainPrice").textContent;
        var price = playerPrice.split("$")[1].split("m")[0];
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);



    } else if (document.getElementById("rmvplayerPosition").textContent == 'Forward') {
        var name = document.getElementById("rmvplayersName").textContent;

        for (k = 1; k <= 20; k++) {
            if (document.getElementById("fwdname" + k).textContent == name) {
                document.getElementById("fwd" + k).style.pointerEvents = 'auto';
                document.getElementById("fwd" + k).style.opacity = '1';
                break;
            }
        }
        document.getElementById("fwdimage" + document.getElementById("rmvplayerNo").textContent).src = "img/" + "subs.png";
        document.getElementById("fwdname" + document.getElementById("rmvplayerNo").textContent).innerHTML = 'Forward';
        document.getElementById("fwdname" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor = "#02509a";
        document.getElementById("fwdname" + document.getElementById("rmvplayerNo").textContent).style.border = "2px solid #02509a";
        document.getElementById("team" + (eval(document.getElementById("rmvplayerNo").textContent) + 12)).innerHTML = ' ';
        document.getElementById("selFWD" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeFWD()');

        var playerPrice = document.getElementById("fwdprice" + document.getElementById("rmvplayerNo").textContent).textContent;
        document.getElementById("fwdprice" + document.getElementById("rmvplayerNo").textContent).innerHTML = "";
        console.log(playerPrice);
        var remainPrice = document.getElementById("remainPrice").textContent;
        var price = playerPrice.split("$")[1].split("m")[0];
        document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) + (eval(price) * 10)) / 10).toFixed(1);
    }


    $('#removePlayer').modal('hide');
}




$(document).on("click", "#enterTeam", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var enterTeam = "";
    var counter = 0;
    console.log(document.getElementById("remainPrice").textContent);
    if (document.getElementById("remainPrice").textContent < 0.0) {
        document.getElementById("errorbox").style.backgroundColor = "#ea344f";
        document.getElementById("errorbox").style.border = "1px solid #d4213c";
        document.getElementById("errorbox").style.display = '';
        document.getElementById("teamError").style.display = 'none';
        document.getElementById("posError").style.display = 'none';
        document.getElementById("enterError").style.display = 'none';
        document.getElementById("moneyError").style.display = "";
    } else {


        for (i = 1; i <= 2; i++) {
            if (document.getElementById("namegk" + i).textContent == 'Goalkeeper') {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = 'none';
                document.getElementById("enterError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

            } else {
                var name = document.getElementById("namegk" + i).textContent;

//            if (name.indexOf("'") == 1) {
//
//                var nameArray = name.split("'");
//
//                name = nameArray[0] + "\\'" + nameArray[1];
//                console.log(name);
//
//            }
                counter = eval(counter) + 1;
                enterTeam = enterTeam + name + "-" + document.getElementById("team" + (i)).textContent + ",";



            }
        }
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("defname" + i).textContent == 'Defender') {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = 'none';
                document.getElementById("enterError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

            } else {
                counter = eval(counter) + 1;
                var name = document.getElementById("defname" + i).textContent;
//            if (name.indexOf("'") == 1) {
//
//                var nameArray = name.split("'");
//
//                name = nameArray[0] + "\\'" + nameArray[1];
//                console.log(name);
//
//            }
                enterTeam = enterTeam + name + "-" + document.getElementById("team" + (i + 2)).textContent + ",";

            }
        }
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("midname" + i).textContent == 'Midfielder') {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = 'none';
                document.getElementById("enterError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

            } else {
                counter = eval(counter) + 1;
                var name = document.getElementById("midname" + i).textContent;
//            if (name.indexOf("'") == 1) {
//
//                var nameArray = name.split("'");
//
//                name = nameArray[0] + "\\'" + nameArray[1];
//                console.log(name);
//
//            }
                enterTeam = enterTeam + name + "-" + document.getElementById("team" + (i + 7)).textContent + ",";

            }
        }
        for (i = 1; i <= 3; i++) {
            if (document.getElementById("fwdname" + i).textContent == 'Forward') {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = 'none';
                document.getElementById("enterError").style.display = '';
                document.getElementById("moneyError").style.display = 'none';

            } else {
                if (i == 3) {
                    counter = eval(counter) + 1;
                    var name = document.getElementById("fwdname" + i).textContent;
//                if (name.indexOf("'") == 1) {
//
//                    var nameArray = name.split("'");
//
//                    name = nameArray[0] + "\\'" + nameArray[1];
//                    console.log(name);
//
//                }
                    enterTeam = enterTeam + name + "-" + document.getElementById("team" + (i + 12)).textContent;
                } else {
                    counter = eval(counter) + 1;
                    var name = document.getElementById("fwdname" + i).textContent;
//                if (name.indexOf("'") == 1) {
//
//                    var nameArray = name.split("'");
//
//                    name = nameArray[0] + "\\'" + nameArray[1];
//                    console.log(name);
//
//                }
                    enterTeam = enterTeam + name + "-" + document.getElementById("team" + (i + 12)).textContent + ",";
                }


            }
        }
        console.log(enterTeam + "");
        if (counter == 15) {
            backTeam();
            window.location = "enterTeam?name=" + enterTeam;
//        $.get("enterTeam", {gk1:enterTeam}, function (){
//             window.location ="enterRoster.html";
//        });
        }

    }
});

function autopick() {
    document.getElementById("autopick").disabled = true;

    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            var k = 1;
            console.log(jsonResponse.length);
            document.getElementById("allPlayers").style.color = '#0ea331';
            document.getElementById("totalPlayers").style.color = '#0ea331';
            document.getElementById("totalPlayers").innerHTML = '15';
            for (i = 0; i < 8; i = i + 4) {
                document.getElementById("imagegk" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("namegk" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + k).innerHTML = jsonResponse[i + 2];
                document.getElementById("pricegk" + k).innerHTML = "$" + jsonResponse[i + 3] + "m";
                var remainPrice = document.getElementById("remainPrice").textContent;
                document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(jsonResponse[i + 3]) * 10)) / 10).toFixed(1);
                document.getElementById("selGK" + k).setAttribute('onclick', 'removeModalGK(' + k + ')');

                k++;
                for (j = 1; j <= 2; j = j + 1) {
                    if (document.getElementById("gkname" + j).textContent == jsonResponse[i]) {
                        document.getElementById("gk" + j).style.opacity = '0.6';
                        document.getElementById("gk" + j).style.pointerEvents = 'none';
                    }
                }
            }
            var k = 1;
            for (i = 8; i < 28; i = i + 4) {
                document.getElementById("defimage" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("defname" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + (k + 2)).innerHTML = jsonResponse[i + 2];
                document.getElementById("defprice" + k).innerHTML = "$" + jsonResponse[i + 3] + "m";
                var remainPrice = document.getElementById("remainPrice").textContent;
                document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(jsonResponse[i + 3]) * 10)) / 10).toFixed(1);
                document.getElementById("selDEF" + k).setAttribute('onclick', 'removeModalDEF(' + k + ')');

                k++;
                for (j = 1; j <= 6; j = j + 1) {
                    if (document.getElementById("namedef" + j).textContent == jsonResponse[i]) {
                        document.getElementById("def" + j).style.opacity = '0.6';
                        document.getElementById("def" + j).style.pointerEvents = 'none';
                    }
                }
            }
            var k = 1;
            for (i = 28; i < 48; i = i + 4) {
                document.getElementById("midimage" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("midname" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + (k + 7)).innerHTML = jsonResponse[i + 2];
                document.getElementById("midprice" + k).innerHTML = "$" + jsonResponse[i + 3] + "m";
                var remainPrice = document.getElementById("remainPrice").textContent;
                document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(jsonResponse[i + 3]) * 10)) / 10).toFixed(1);
                document.getElementById("selMID" + k).setAttribute('onclick', 'removeModalMID(' + k + ')');

                k++;
                for (j = 1; j <= 6; j = j + 1) {
                    if (document.getElementById("namemid" + j).textContent == jsonResponse[i]) {
                        document.getElementById("mid" + j).style.opacity = '0.6';
                        document.getElementById("mid" + j).style.pointerEvents = 'none';
                    }
                }
            }
            var k = 1;
            for (i = 48; i < 60; i = i + 4) {
                document.getElementById("fwdimage" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("fwdname" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + (k + 12)).innerHTML = jsonResponse[i + 2];
                document.getElementById("fwdprice" + k).innerHTML = "$" + jsonResponse[i + 3] + "m";
                var remainPrice = document.getElementById("remainPrice").textContent;
                document.getElementById("remainPrice").innerHTML = (((eval(remainPrice) * 10) - (eval(jsonResponse[i + 3]) * 10)) / 10).toFixed(1);
                document.getElementById("selFWD" + k).setAttribute('onclick', 'removeModalFWD(' + k + ')');

                k++;
                for (j = 1; j <= 6; j = j + 1) {
                    if (document.getElementById("namefwd" + j).textContent == jsonResponse[i]) {
                        document.getElementById("fwd" + j).style.opacity = '0.6';
                        document.getElementById("fwd" + j).style.pointerEvents = 'none';
                    }
                }
            }

        }
    };
    xhttp.open("GET", "autopick", true);
    xhttp.send();
}




function backTeamButton() {
    if (localStorage.getItem('firstLoad')) {
        for (i = 1; i <= 2; i++) {
            document.getElementById("namegk" + i).innerHTML = localStorage.getItem('namegk' + i);
            document.getElementById("pricegk" + i).innerHTML = localStorage.getItem('pricegk' + i);
            document.getElementById("team" + i).innerHTML = localStorage.getItem('team' + i);
            var color = localStorage.getItem('colorgk' + i);
            if (color == "rgb(192, 2, 13)") {
                document.getElementById("namegk" + i).style.backgroundColor = color;
                document.getElementById("namegk" + i).style.border = localStorage.getItem('bordergk' + i);
            }
            document.getElementById("selGK" + i).setAttribute('onclick', 'removeModalGK(' + i + ')');
            document.getElementById("imagegk" + i).src = "img/" + localStorage.getItem('imagegk' + i);
            for (j = 1; j <= 2; j++) {
                if (document.getElementById("namegk" + i).textContent == document.getElementById("gkname" + j).textContent) {
                    document.getElementById("gk" + j).style.opacity = '0.6';
                    document.getElementById("gk" + j).style.pointerEvents = 'none';
                }
            }
        }
        for (i = 1; i <= 5; i++) {
            document.getElementById("defname" + i).innerHTML = localStorage.getItem('defname' + i);
            document.getElementById("defprice" + i).innerHTML = localStorage.getItem('defprice' + i);
            document.getElementById("team" + (i + 2)).innerHTML = localStorage.getItem('team' + (i + 2));
            var color = localStorage.getItem('defcolor' + i);
            if (color == "rgb(192, 2, 13)") {
                document.getElementById("defname" + i).style.backgroundColor = color;
                document.getElementById("defname" + i).style.border = localStorage.getItem('defborder' + i);
            }
            document.getElementById("selDEF" + i).setAttribute('onclick', 'removeModalDEF(' + i + ')');
            document.getElementById("defimage" + i).src = "img/" + localStorage.getItem('defimage' + i);
            for (j = 1; j <= 8; j++) {
                if (document.getElementById("defname" + i).textContent == document.getElementById("namedef" + j).textContent) {
                    document.getElementById("def" + j).style.opacity = '0.6';
                    document.getElementById("def" + j).style.pointerEvents = 'none';
                }
            }
        }
        for (i = 1; i <= 5; i++) {
            document.getElementById("midname" + i).innerHTML = localStorage.getItem('midname' + i);
            document.getElementById("midprice" + i).innerHTML = localStorage.getItem('midprice' + i);
            document.getElementById("team" + (i + 7)).innerHTML = localStorage.getItem('team' + (i + 7));
            var color = localStorage.getItem('midcolor' + i);
            if (color == "rgb(192, 2, 13)") {
                document.getElementById("midname" + i).style.backgroundColor = color;
                document.getElementById("midname" + i).style.border = localStorage.getItem('midborder' + i);
            }
            document.getElementById("selMID" + i).setAttribute('onclick', 'removeModalMID(' + i + ')');
            document.getElementById("midimage" + i).src = "img/" + localStorage.getItem('midimage' + i);
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("midname" + i).textContent == document.getElementById("namemid" + j).textContent) {
                    document.getElementById("mid" + j).style.opacity = '0.6';
                    document.getElementById("mid" + j).style.pointerEvents = 'none';
                }
            }
        }
        for (i = 1; i <= 3; i++) {
            document.getElementById("fwdname" + i).innerHTML = localStorage.getItem('fwdname' + i);
            document.getElementById("fwdprice" + i).innerHTML = localStorage.getItem('fwdprice' + i);
            document.getElementById("team" + (i + 12)).innerHTML = localStorage.getItem('team' + (i + 12));
            var color = localStorage.getItem('fwdcolor' + i);
            if (color == "rgb(192, 2, 13)") {
                document.getElementById("fwdname" + i).style.backgroundColor = color;
                document.getElementById("fwdname" + i).style.border = localStorage.getItem('fwdborder' + i);
            }
            document.getElementById("selFWD" + i).setAttribute('onclick', 'removeModalFWD(' + i + ')');
            document.getElementById("fwdimage" + i).src = "img/" + localStorage.getItem('fwdimage' + i);
            for (j = 1; j <= 5; j++) {
                if (document.getElementById("fwdname" + i).textContent == document.getElementById("namefwd" + j).textContent) {
                    document.getElementById("fwd" + j).style.opacity = '0.6';
                    document.getElementById("fwd" + j).style.pointerEvents = 'none';
                }
            }
        }
        document.getElementById("allPlayers").style.color = '#0ea331';
        document.getElementById("totalPlayers").style.color = '#0ea331';
        document.getElementById("totalPlayers").innerHTML = '15';
        document.getElementById("remainPrice").innerHTML = localStorage.getItem('remainBugdet');
        localStorage.removeItem('firstLoad');
    }
}

function backTeam() {
    for (i = 1; i <= 2; i++) {
        localStorage.setItem('namegk' + i, document.getElementById("namegk" + i).textContent);
        localStorage.setItem('pricegk' + i, document.getElementById("pricegk" + i).textContent);
        localStorage.setItem('team' + i, document.getElementById("team" + i).textContent);
        localStorage.setItem('colorgk' + i, document.getElementById("namegk" + i).style.backgroundColor);
        localStorage.setItem('bordergk' + i, document.getElementById("namegk" + i).style.border);
        localStorage.setItem('imagegk' + i, document.getElementById("imagegk" + i).src.split("/")[5]);
    }
    for (i = 1; i <= 5; i++) {
        localStorage.setItem('defname' + i, document.getElementById("defname" + i).textContent);
        localStorage.setItem('defprice' + i, document.getElementById("defprice" + i).textContent);
        localStorage.setItem('team' + (i + 2), document.getElementById("team" + (i + 2)).textContent);
        localStorage.setItem('defcolor' + i, document.getElementById("defname" + i).style.backgroundColor);
        localStorage.setItem('defborder' + i, document.getElementById("defname" + i).style.border);
        localStorage.setItem('defimage' + i, document.getElementById("defimage" + i).src.split("/")[5]);
    }
    for (i = 1; i <= 5; i++) {
        localStorage.setItem('midname' + i, document.getElementById("midname" + i).textContent);
        localStorage.setItem('midprice' + i, document.getElementById("midprice" + i).textContent);
        localStorage.setItem('team' + (i + 7), document.getElementById("team" + (i + 7)).textContent);
        localStorage.setItem('midcolor' + i, document.getElementById("midname" + i).style.backgroundColor);
        localStorage.setItem('midborder' + i, document.getElementById("midname" + i).style.border);
        localStorage.setItem('midimage' + i, document.getElementById("midimage" + i).src.split("/")[5]);
    }
    for (i = 1; i <= 3; i++) {
        console.log(i + " 0??00 " + document.getElementById("fwdprice" + i).textContent);
        localStorage.setItem('fwdname' + i, document.getElementById("fwdname" + i).textContent);
        localStorage.setItem('fwdprice' + i, document.getElementById("fwdprice" + i).textContent);
        localStorage.setItem('team' + (i + 12), document.getElementById("team" + (i + 12)).textContent);
        localStorage.setItem('fwdcolor' + i, document.getElementById("fwdname" + i).style.backgroundColor);
        localStorage.setItem('fwdborder' + i, document.getElementById("fwdname" + i).style.border);
        localStorage.setItem('fwdimage' + i, document.getElementById("fwdimage" + i).src.split("/")[5]);
    }
    localStorage.setItem('remainBugdet', document.getElementById("remainPrice").textContent);
    localStorage.setItem('firstLoad', true);
}
