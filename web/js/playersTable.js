$(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#prev').val();
    $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        $("#somediv").html("");
        var $h4 = $("<h4>");
                    $h4.css({"font-weight": "bold", "font-size": "15px", "text-align": "center", "padding-bottom": "1%"});
                    $h4.text(responseText[0] + " - " + responseText[3]).appendTo("#somediv");
                    var $buttonprev = $("<button>");
                    $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
                    $buttonprev.css({"font-size": "14px", "font-weight": "bold", "text-align": "center", "padding": "1%"});
                    $buttonprev.text("Previous").insertAfter($h4);
                    if (responseText[1] == "Gameweek 0") {
                        $buttonprev.css('visibility', 'hidden');
                    }

                    var $h5 = $("<h5>");
                    $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
                    $h5.css({'text-align': "center", 'font-weight': "bold", 'font-size': "17px", "left": "6.5%", 'margin-top': "-1%", 'margin-bottom': "-2%"});
                    $h5.text("Fixtures").insertAfter($buttonprev);
                    var $img = $("<img>");
                    $img.attr({src: "img/nwsllogo.png"});
                    $img.css({"width": " 31%", "padding-right": " 0.5%"});
                    $img.prependTo($h5);
                    var $buttonnext = $("<button>");
                    $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
                    $buttonnext.css({"font-size": "14px", "font-weight": "bold", "text-align": "center", "padding": "1%"});
                    $buttonnext.text("Next").insertAfter($h5);
                    if (responseText[2] == "Gameweek 23") {
                        $buttonnext.css('visibility', 'hidden');
                    }
                    for (i = responseText.length; i >= 3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-size': "15px", "margin-bottom": "0%", "margin-top": "2.5%", "padding-bottom": "1%", "border-bottom": "1px solid #e8e4e4"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if (i + 6 > 0) {
                            if (responseText[i] == responseText[i - 6]) {
                                $h6.css({"display": "none"});
                            }
                        }
                        var $div = $("<div>");
                        $div.attr({'class': "match col-sm-12"});
                        $div.css({"display": "block", "box-sizing": "border-box", "padding": ".5rem 2rem .5rem 2rem", "border-bottom": "1px solid #e8e4e4"});
                        $div.insertAfter($h6);
                        var $divrow = $("<div>");
                        $divrow.attr({'class': "row"});
                        $divrow.appendTo($div);
                        var $divh6 = $("<div>");
                        $divh6.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6.css({"left": "7.85%"});
                        $divh6.appendTo($divrow);
                        var $h6home = $("<h6>");
                        $h6home.attr({'class': "col-md-4  col-xs-4   "});
                        $h6home.css({"font-size": "17px", "width": "100%", "text-align": "right"});
                        $h6home.text(responseText[i + 1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/" + responseText[i + 2], 'class': "col-md-1 col-xs-1"});
                        $imghome.css({"width": "initial ", "margin-left": "1.2%"});
                        $imghome.appendTo($divrow);
                        var $divtime = $("<div>");
                        $divtime.attr({"class": "col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px", "width": "11.1%", "left": "-2.1%", "background-color": "#1d3260", "border-radius": " 3pt", "border": "1px solid #1d3260"});
                        $divtime.appendTo($divrow);
                        var $time = $("<h6>");
                        $time.css({"width": "100%", "text-align": "center", "color": "white", "font-size": "16px", "font-weight": "lighter"});
                        $time.text(responseText[i + 3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
                        $imgaway.css({"width": "initial ", "margin-left": "-5%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6a.css({"left": "-6.2%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4   "});
                        $h6away.css({"font-size": "17px", "width": "110%"});
                        $h6away.text(responseText[i + 4]).appendTo($divh6a);
                        if (i >= responseText.length) {
                            $divrow.css({"display": "none"});
                            $h6.css({"display": "none"});
                        }

                    }

                });
            });



$(document).on("click", "#next", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#next').val();
    $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        $("#somediv").html("");
        var $h4 = $("<h4>");
                    $h4.css({"font-weight": "bold", "font-size": "15px", "text-align": "center", "padding-bottom": "1%"});
                    $h4.text(responseText[0] + " - " + responseText[3]).appendTo("#somediv");
                    var $buttonprev = $("<button>");
                    $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
                    $buttonprev.css({"font-size": "14px", "font-weight": "bold", "text-align": "center", "padding": "1%"});
                    $buttonprev.text("Previous").insertAfter($h4);
                    if (responseText[1] == "Gameweek 0") {
                        $buttonprev.css('visibility', 'hidden');
                    }

                    var $h5 = $("<h5>");
                    $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
                    $h5.css({'text-align': "center", 'font-weight': "bold", 'font-size': "17px", "left": "6.5%", 'margin-top': "-1%", 'margin-bottom': "-2%"});
                    $h5.text("Fixtures").insertAfter($buttonprev);
                    var $img = $("<img>");
                    $img.attr({src: "img/nwsllogo.png"});
                    $img.css({"width": " 31%", "padding-right": " 0.5%"});
                    $img.prependTo($h5);
                    var $buttonnext = $("<button>");
                    $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
                    $buttonnext.css({"font-size": "14px", "font-weight": "bold", "text-align": "center", "padding": "1%"});
                    $buttonnext.text("Next").insertAfter($h5);
                    if (responseText[2] == "Gameweek 23") {
                        $buttonnext.css('visibility', 'hidden');
                    }
                    for (i = responseText.length; i >= 3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-size': "15px", "margin-bottom": "0%", "margin-top": "2.5%", "padding-bottom": "1%", "border-bottom": "1px solid #e8e4e4"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if (i + 6 > 0) {
                            if (responseText[i] == responseText[i - 6]) {
                                $h6.css({"display": "none"});
                            }
                        }
                        var $div = $("<div>");
                        $div.attr({'class': "match col-sm-12"});
                        $div.css({"display": "block", "box-sizing": "border-box", "padding": ".5rem 2rem .5rem 2rem", "border-bottom": "1px solid #e8e4e4"});
                        $div.insertAfter($h6);
                        var $divrow = $("<div>");
                        $divrow.attr({'class': "row"});
                        $divrow.appendTo($div);
                        var $divh6 = $("<div>");
                        $divh6.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6.css({"left": "7.85%"});
                        $divh6.appendTo($divrow);
                        var $h6home = $("<h6>");
                        $h6home.attr({'class': "col-md-4  col-xs-4   "});
                        $h6home.css({"font-size": "17px", "width": "100%", "text-align": "right"});
                        $h6home.text(responseText[i + 1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/" + responseText[i + 2], 'class': "col-md-1 col-xs-1"});
                        $imghome.css({"width": "initial ", "margin-left": "1.2%"});
                        $imghome.appendTo($divrow);
                        var $divtime = $("<div>");
                        $divtime.attr({"class": "col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px", "width": "11.1%", "left": "-2.1%", "background-color": "#1d3260", "border-radius": " 3pt", "border": "1px solid #1d3260"});
                        $divtime.appendTo($divrow);
                        var $time = $("<h6>");
                        $time.css({"width": "100%", "text-align": "center", "color": "white", "font-size": "16px", "font-weight": "lighter"});
                        $time.text(responseText[i + 3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
                        $imgaway.css({"width": "initial ", "margin-left": "-5%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6a.css({"left": "-6.2%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4   "});
                        $h6away.css({"font-size": "17px", "width": "110%"});
                        $h6away.text(responseText[i + 4]).appendTo($divh6a);
                        if (i >= responseText.length) {
                            $divrow.css({"display": "none"});
                            $h6.css({"display": "none"});
                        }

                    }

                });
            });




$(document).on("click", "#nextPlayers", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#nextPlayers').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("nextPlayers").value = responseText[1];
        document.getElementById("prevPlayers").value = responseText[0];
        document.getElementById("page").innerHTML = responseText[1] - 1;
        if (responseText[1] == 12) {
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
    });
});


$(document).on("click", "#end", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#end').val();
    var selectCat = document.getElementById('categorySelection').value;
    $.get("playersData", {page: page, cat: selectCat}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("page").innerHTML = 11;
        if (responseText[1] == 12) {
            document.getElementById("nextPlayers").disabled = true;
            document.getElementById("end").disabled = true;
            document.getElementById("prevPlayers").value = 10;
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
        var length3 = 2;
        document.getElementById("fwd3").style.display = "none";
        document.getElementById("fwd4").style.display = "none";
        document.getElementById("fwd5").style.display = "none";
        document.getElementById("fwd6").style.display = "none";
        var k = 1;
        console.log("i" + responseText[68] );
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
        if (responseText[1] == 11) {
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
                } else if (selectCat == 'goalScored') {
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
                } else if (selectCat == 'penaltySaved') {
                    document.getElementById("catGK").innerHTML = "PS";
                    document.getElementById("catDEF").innerHTML = "PS";
                    document.getElementById("catMID").innerHTML = "PS";
                    document.getElementById("catFWD").innerHTML = "PS";
                } else if (selectCat == 'penaltyMissed') {
                    document.getElementById("catGK").innerHTML = "PM";
                    document.getElementById("catDEF").innerHTML = "PM";
                    document.getElementById("catMID").innerHTML = "PM";
                    document.getElementById("catFWD").innerHTML = "PM";
                } else if (selectCat == 'yellowCard') {
                    document.getElementById("catGK").innerHTML = "YC";
                    document.getElementById("catDEF").innerHTML = "YC";
                    document.getElementById("catMID").innerHTML = "YC";
                    document.getElementById("catFWD").innerHTML = "YC";
                } else if (selectCat == 'redCard') {
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
                            document.getElementById("gkinjury" + gk).classList.add('glyphicon-alert');
                            document.getElementById("gkinjury" + gk).classList.add('fa-lg');
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
                            document.getElementById("definjury" + def).classList.add('glyphicon-alert');
                            document.getElementById("definjury" + def).classList.add('fa-lg');
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
                            document.getElementById("midinjury" + mid).classList.add('glyphicon-alert');
                            document.getElementById("midinjury" + mid).classList.add('fa-lg');
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
                            document.getElementById("fwdinjury" + fwd).classList.add('glyphicon-alert');
                            document.getElementById("fwdinjury" + fwd).classList.add('fa-lg');
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
                } else if (selectCat == 'goalScored') {
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
                } else if (selectCat == 'penaltySaved') {
                    document.getElementById("catGK").innerHTML = "PS";
                    document.getElementById("catDEF").innerHTML = "PS";
                    document.getElementById("catMID").innerHTML = "PS";
                    document.getElementById("catFWD").innerHTML = "PS";
                } else if (selectCat == 'penaltyMissed') {
                    document.getElementById("catGK").innerHTML = "PM";
                    document.getElementById("catDEF").innerHTML = "PM";
                    document.getElementById("catMID").innerHTML = "PM";
                    document.getElementById("catFWD").innerHTML = "PM";
                } else if (selectCat == 'yellowCard') {
                    document.getElementById("catGK").innerHTML = "YC";
                    document.getElementById("catDEF").innerHTML = "YC";
                    document.getElementById("catMID").innerHTML = "YC";
                    document.getElementById("catFWD").innerHTML = "YC";
                } else if (selectCat == 'redCard') {
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
                    document.getElementById("pageSelect").style.display = "";
                    document.getElementById("startSelect").style.display = "";
                    document.getElementById("startSelect").value = "Goalkeeper-1";
                    document.getElementById("prevPlayersSelect").style.display = "";
                    document.getElementById("prevPlayersSelect").value = "Goalkeeper-" + jsonResponse[0];
                    document.getElementById("nextPlayersSelect").style.display = "";
                    document.getElementById("nextPlayersSelect").value = "Goalkeeper-" + jsonResponse[1];
                    document.getElementById("endSelect").style.display = "";
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
                            document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                            document.getElementById("gkinjury" + k).classList.add('fa-lg');
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
            }
        };
        xhttp.open("GET", "playersSelection?pos=" + selectionPl + "-" + 1 + "&cat=" + selectCat, true);
        xhttp.send();
    } else if (selectionPl == "Boston Breakers" || selectionPl == "Chicago Red Stars" || selectionPl == "FC Kansas City" || selectionPl == "Houston Dash" ||
            selectionPl == "North Carolina Courage" || selectionPl == "Orlando Pride" || selectionPl == "Portland Thorns FC" || selectionPl == "Seattle Reign FC" ||
            selectionPl == "Sky Blue FC" || selectionPl == "Washington Spirit") {
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
                } else if (selectCat == 'goalScored') {
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
                } else if (selectCat == 'penaltySaved') {
                    document.getElementById("catGK").innerHTML = "PS";
                    document.getElementById("catDEF").innerHTML = "PS";
                    document.getElementById("catMID").innerHTML = "PS";
                    document.getElementById("catFWD").innerHTML = "PS";
                } else if (selectCat == 'penaltyMissed') {
                    document.getElementById("catGK").innerHTML = "PM";
                    document.getElementById("catDEF").innerHTML = "PM";
                    document.getElementById("catMID").innerHTML = "PM";
                    document.getElementById("catFWD").innerHTML = "PM";
                } else if (selectCat == 'yellowCard') {
                    document.getElementById("catGK").innerHTML = "YC";
                    document.getElementById("catDEF").innerHTML = "YC";
                    document.getElementById("catMID").innerHTML = "YC";
                    document.getElementById("catFWD").innerHTML = "YC";
                } else if (selectCat == 'redCard') {
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
                        document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("gkinjury" + k).classList.add('fa-lg');
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
                        document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("gkinjury" + k).classList.add('fa-lg');
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
                        document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("gkinjury" + k).classList.add('fa-lg');
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
                        document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("gkinjury" + k).classList.add('fa-lg');
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
                        document.getElementById("gkinjury" + k).classList.add('glyphicon-alert');
                        document.getElementById("gkinjury" + k).classList.add('fa-lg');
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

function openModalGK(i) {

    var name = document.getElementById("gkname" + i).textContent;
    var price = document.getElementById("gkprice" + i).textContent;
    var image = document.getElementById("gkimage" + i).src;
    var team = document.getElementById("gkteam" + i).textContent;
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

function openModalDEF(i) {

    var name = document.getElementById("namedef" + i).textContent;
    var price = document.getElementById("pricedef" + i).textContent;
    var image = document.getElementById("imagedef" + i).src;
    var team = document.getElementById("teamdef" + i).textContent;
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

function openModalMID(i) {

    var name = document.getElementById("namemid" + i).textContent;
    var price = document.getElementById("pricemid" + i).textContent;
    var image = document.getElementById("imagemid" + i).src;
    var team = document.getElementById("teammid" + i).textContent;
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

function openModalFWD(i) {

    var name = document.getElementById("namefwd" + i).textContent;
    var price = document.getElementById("pricefwd" + i).textContent;
    var image = document.getElementById("imagefwd" + i).src;
    var team = document.getElementById("teamfwd" + i).textContent;
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


function addPlayer() {

    var players = document.getElementById("totalPlayers").textContent;
    document.getElementById("checkbox").style.display = "";
    document.getElementById("checkbox").style.backgroundColor = "#92c992";
    document.getElementById("checkbox").style.border = "1px solid green";
    document.getElementById("playername").innerHTML = document.getElementById("playersName").textContent;
    document.getElementById("message").innerHTML = " has been added to your squad."
    document.getElementById("errorbox").style.display = 'none';
    document.getElementById("enterError").style.display = 'none';


    document.getElementById("totalPlayers").innerHTML = eval(players) + 1;
    var counter = 1;
    for (i = 1; i <= 15; i++) {
        if (document.getElementById("playerTeam").textContent == document.getElementById("team" + i).textContent) {
            counter = eval(counter) + 1;

        }
        if (counter > 4) {


            document.getElementById("errorbox").style.display = '';
            document.getElementById("teamError").style.display = '';
            document.getElementById("posError").style.display = 'none';
            document.getElementById("team").innerHTML = document.getElementById("playerTeam").textContent;
            break;
        }
    }
    if (document.getElementById("totalPlayers").innerHTML == '15') {

        document.getElementById("allPlayers").style.color = 'green';
        document.getElementById("totalPlayers").style.color = 'green';
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
            document.getElementById("gk" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("gk" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("imagegk" + i).src = "img/" + image;
            document.getElementById("namegk" + i).innerHTML = name;
            if(document.getElementById("gkinjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-alert")){
                document.getElementById("namegk" + i).style.backgroundColor="#c0020d";
                document.getElementById("namegk" + i).style.border= "2px solid #c0020d";
            }
            document.getElementById("team" + i).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selGK" + i).setAttribute('onclick', 'removeModalGK(' + i + ')');

        } else {

            if (counter > 4) {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("pos").innerHTML = 'Goalkeeper';
            } else {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
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

            document.getElementById("def" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("def" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("defimage" + i).src = "img/" + image;
            document.getElementById("defname" + i).innerHTML = name;
            if(document.getElementById("definjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-alert")){
                document.getElementById("defname" + i).style.backgroundColor="#c0020d";
                document.getElementById("defname" + i).style.border= "2px solid #c0020d";
            }
            document.getElementById("team" + (i + 2)).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selDEF" + i).setAttribute('onclick', 'removeModalDEF(' + i + ')');
        } else {
            if (counter > 4) {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("pos").innerHTML = 'Defender';
            } else {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
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
            document.getElementById("mid" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("mid" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("midimage" + i).src = "img/" + image;
            document.getElementById("midname" + i).innerHTML = name;
            if(document.getElementById("midinjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-alert")){
                document.getElementById("midname" + i).style.backgroundColor="#c0020d";
                document.getElementById("midname" + i).style.border= "2px solid #c0020d";
            }
            document.getElementById("team" + (i + 7)).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selMID" + i).setAttribute('onclick', 'removeModalMID(' + i + ')');
        } else {
            if (counter > 4) {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("pos").innerHTML = 'Midfielder';
            } else {
                document.getElementById("errorbox").style.display = '';
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
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

            document.getElementById("fwd" + document.getElementById("playerNo").textContent).style.pointerEvents = 'none';
            document.getElementById("fwd" + document.getElementById("playerNo").textContent).style.opacity = '0.6';
            document.getElementById("fwdimage" + i).src = "img/" + image;
            document.getElementById("fwdname" + i).innerHTML = name;
            if(document.getElementById("fwdinjury" + document.getElementById("playerNo").textContent).classList.contains("glyphicon-alert")){
                document.getElementById("fwdname" + i).style.backgroundColor="#c0020d";
                document.getElementById("fwdname" + i).style.border= "2px solid #c0020d";
            }
            document.getElementById("team" + (i + 12)).innerHTML = document.getElementById("playerTeam").textContent;
            document.getElementById("selFWD" + i).setAttribute('onclick', 'removeModalFWD(' + i + ')');

        } else {
            if (counter > 4) {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = '';
                document.getElementById("posError").style.display = '';
                document.getElementById("pos").innerHTML = 'Forward';
            } else {
                document.getElementById("checkbox").style.display = 'none';
                document.getElementById("errorbox").style.display = '';
                document.getElementById("teamError").style.display = 'none';
                document.getElementById("posError").style.display = '';
                document.getElementById("pos").innerHTML = 'Forward';
            }
        }

    }


    $('#players').modal('hide');
}


function reset() {
    document.getElementById("totalPlayers").innerHTML = '0';
    document.getElementById("allPlayers").style.color = '#d4213c';
    document.getElementById("totalPlayers").style.color = '#d4213c';
    document.getElementById("errorbox").style.display = 'none';
    document.getElementById("checkbox").style.display = "none";
    for (i = 1; i <= 15; i++) {
        document.getElementById("team" + i).innerHTML = '';
    }

    for (i = 1; i <= 2; i++) {
        document.getElementById("imagegk" + i).src = "img/" + 'subsgk.png';
        document.getElementById("namegk" + i).innerHTML = 'Goalkeeper';
        document.getElementById("namegk" + i).style.backgroundColor="#02509a";
        document.getElementById("namegk" + i).style.border= "2px solid #02509a";
        document.getElementById("team" + i).innerHTML = ' ';
        document.getElementById("selGK" + i).setAttribute('onclick', 'changeGK()');

    }
    for (i = 1; i <= 20; i++) {

        document.getElementById("gk" + i).style.pointerEvents = 'auto';
        document.getElementById("gk" + i).style.opacity = '1';
    }
    for (i = 1; i <= 5; i++) {
        document.getElementById("defimage" + i).src = "img/" + 'subs.png';
        document.getElementById("defname" + i).innerHTML = 'Defender';
        document.getElementById("defname" + i).style.backgroundColor="#02509a";
        document.getElementById("defname" + i).style.border= "2px solid #02509a";
        document.getElementById("team" + (i + 2)).innerHTML = ' ';
        document.getElementById("selDEF" + i).setAttribute('onclick', 'changeDEF()');
    }
    for (i = 1; i <= 20; i++) {

        document.getElementById("def" + i).style.pointerEvents = 'auto';
        document.getElementById("def" + i).style.opacity = '1';
    }
    for (i = 1; i <= 5; i++) {
        document.getElementById("midimage" + i).src = "img/" + 'subs.png';
        document.getElementById("midname" + i).innerHTML = 'Midfielder';
        document.getElementById("midname" + i).style.backgroundColor="#02509a";
        document.getElementById("midname" + i).style.border= "2px solid #02509a";
        document.getElementById("team" + (i + 7)).innerHTML = ' ';
        document.getElementById("selMID" + i).setAttribute('onclick', 'changeMID()');
    }
    for (i = 1; i <= 20; i++) {

        document.getElementById("mid" + i).style.pointerEvents = 'auto';
        document.getElementById("mid" + i).style.opacity = '1';
    }
    for (i = 1; i <= 3; i++) {
        document.getElementById("fwdimage" + i).src = "img/" + 'subs.png';
        document.getElementById("fwdname" + i).innerHTML = 'Forward';
        document.getElementById("fwdname" + i).style.backgroundColor="#02509a";
        document.getElementById("fwdname" + i).style.border= "2px solid #02509a";
        document.getElementById("team" + (i + 12)).innerHTML = ' ';
        document.getElementById("selFWD" + i).setAttribute('onclick', 'changeFWD()');
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
                } else if (selectCat == 'goalScored') {
                    document.getElementById("catsrch").innerHTML = "GS";
                } else if (selectCat == 'assist') {
                    document.getElementById("catsrch").innerHTML = "A";
                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("catsrch").innerHTML = "CS";
                } else if (selectCat == 'ownGoal') {
                    document.getElementById("catsrch").innerHTML = "OG";
                } else if (selectCat == 'goalConceded') {
                    document.getElementById("catsrch").innerHTML = "GC";
                } else if (selectCat == 'penaltySaved') {
                    document.getElementById("catsrch").innerHTML = "PS";
                } else if (selectCat == 'penaltyMissed') {
                    document.getElementById("catsrch").innerHTML = "PM";
                } else if (selectCat == 'yellowCard') {
                    document.getElementById("catsrch").innerHTML = "YC";
                } else if (selectCat == 'redCard') {
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
                            document.getElementById("srchinjury" + k).classList.add('glyphicon-alert');
                            document.getElementById("srchinjury" + k).classList.add('fa-lg');
                            document.getElementById("srchinjury" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("srchinjury" + k).classList.contains('glyphicon-alert')) {
                            document.getElementById("srchinjury" + k).classList.remove('glyphicon-alert');
                            document.getElementById("srchinjury" + k).classList.remove('fa-lg');
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

    } else {
        document.getElementById("errorbox").style.display = '';
        document.getElementById("posError").style.display = 'none';
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
        document.getElementById("namegk" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor="#02509a";
        document.getElementById("namegk" + document.getElementById("rmvplayerNo").textContent).style.border= "2px solid #02509a";
        document.getElementById("team" + (document.getElementById("rmvplayerNo").textContent)).innerHTML = ' ';
        document.getElementById("selGK" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeGK()');



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
        document.getElementById("defname" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor="#02509a";
        document.getElementById("defname" + document.getElementById("rmvplayerNo").textContent).style.border= "2px solid #02509a";
        document.getElementById("team" + (eval(document.getElementById("rmvplayerNo").textContent) + 2)).innerHTML = ' ';
        document.getElementById("selDEF" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeDEF()');


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
        document.getElementById("midname" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor="#02509a";
        document.getElementById("midname" + document.getElementById("rmvplayerNo").textContent).style.border= "2px solid #02509a";
        document.getElementById("team" + (eval(document.getElementById("rmvplayerNo").textContent) + 7)).innerHTML = ' ';
        document.getElementById("selMID" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeMID()');


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
        document.getElementById("fwdname" + document.getElementById("rmvplayerNo").textContent).style.backgroundColor="#02509a";
        document.getElementById("fwdname" + document.getElementById("rmvplayerNo").textContent).style.border= "2px solid #02509a";
        document.getElementById("team" + (eval(document.getElementById("rmvplayerNo").textContent) + 12)).innerHTML = ' ';
        document.getElementById("selFWD" + document.getElementById("rmvplayerNo").textContent).setAttribute('onclick', 'changeFWD()');
    }


    $('#removePlayer').modal('hide');
}




$(document).on("click", "#enterTeam", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var enterTeam = "";
    var counter = 0;
    for (i = 1; i <= 2; i++) {
        if (document.getElementById("namegk" + i).textContent == 'Goalkeeper') {
            document.getElementById("errorbox").style.display = '';
            document.getElementById("teamError").style.display = 'none';
            document.getElementById("posError").style.display = 'none';
            document.getElementById("enterError").style.display = '';
        } else {

            counter = eval(counter) + 1;
            enterTeam = enterTeam + document.getElementById("namegk" + i).textContent + "-" + document.getElementById("team" + (i)).textContent + ",";



        }
    }
    for (i = 1; i <= 5; i++) {
        if (document.getElementById("defname" + i).textContent == 'Defender') {
            document.getElementById("errorbox").style.display = '';
            document.getElementById("teamError").style.display = 'none';
            document.getElementById("posError").style.display = 'none';
            document.getElementById("enterError").style.display = '';
        } else {
            counter = eval(counter) + 1;
            enterTeam = enterTeam + document.getElementById("defname" + i).textContent + "-" + document.getElementById("team" + (i + 2)).textContent + ",";

        }
    }
    for (i = 1; i <= 5; i++) {
        if (document.getElementById("midname" + i).textContent == 'Midfielder') {
            document.getElementById("errorbox").style.display = '';
            document.getElementById("teamError").style.display = 'none';
            document.getElementById("posError").style.display = 'none';
            document.getElementById("enterError").style.display = '';
        } else {
            counter = eval(counter) + 1;
            enterTeam = enterTeam + document.getElementById("midname" + i).textContent + "-" + document.getElementById("team" + (i + 7)).textContent + ",";

        }
    }
    for (i = 1; i <= 3; i++) {
        if (document.getElementById("fwdname" + i).textContent == 'Forward') {
            document.getElementById("errorbox").style.display = '';
            document.getElementById("teamError").style.display = 'none';
            document.getElementById("posError").style.display = 'none';
            document.getElementById("enterError").style.display = '';
        } else {
            if (i == 3) {
                counter = eval(counter) + 1;
                enterTeam = enterTeam + document.getElementById("fwdname" + i).textContent + "-" + document.getElementById("team" + (i + 12)).textContent;
            } else {
                counter = eval(counter) + 1;
                enterTeam = enterTeam + document.getElementById("fwdname" + i).textContent + "-" + document.getElementById("team" + (i + 12)).textContent + ",";
            }


        }
    }
    console.log(enterTeam + "");
    if (counter == 15) {
        window.location = "enterTeam?name=" + enterTeam;
//        $.get("enterTeam", {gk1:enterTeam}, function (){
//             window.location ="enterRoster.html";
//        });
    }


});

function autopick() {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            var k = 1;
            for (i = 0; i < 6; i = i + 3) {
                document.getElementById("imagegk" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("namegk" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + k).innerHTML = jsonResponse[i + 2];
                k++;
            }
            var k = 1;
            for (i = 6; i < 21; i = i + 3) {
                document.getElementById("defimage" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("defname" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + (k + 2)).innerHTML = jsonResponse[i + 2];
                k++;
            }
            var k = 1;
            for (i = 21; i < 36; i = i + 3) {
                document.getElementById("midimage" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("midname" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + (k + 7)).innerHTML = jsonResponse[i + 2];
                k++;
            }
            var k = 1;
            for (i = 36; i < 45; i = i + 3) {
                document.getElementById("fwdimage" + k).src = "img/" + jsonResponse[i + 1];
                document.getElementById("fwdname" + k).innerHTML = jsonResponse[i];
                document.getElementById("team" + (k + 12)).innerHTML = jsonResponse[i + 2];
                k++;
            }

        }
    };
    xhttp.open("GET", "autopick", true);
    xhttp.send();
}