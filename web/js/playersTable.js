$(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#prev').val();
    $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        $("#somediv").html("");
        var $h4 = $("<h4>");
        $h4.css({"font-family": "arial", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
        $h4.text(responseText[0] + " - " + responseText[3]).appendTo("#somediv");
        var $buttonprev = $("<button>");
        $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
        $buttonprev.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2%", "padding-top": "0.6%"});
        $buttonprev.text("Previous").insertAfter($h4);
        if (responseText[1] == "Gameweek 0") {
            $buttonprev.css('visibility', 'hidden');
        }

        var $h5 = $("<h5>");
        $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
        $h5.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "17px", "left": "7.35%", 'margin-top': "-0.5%", 'margin-bottom': "-2%"});
        $h5.text("Fixtures").insertAfter($buttonprev);
        var $img = $("<img>");
        $img.attr({src: "img/nwsllogo.png"});
        $img.css({'height': "29%", "width": " 29%", "padding-right": " 0.5%"});
        $img.prependTo($h5);
        var $buttonnext = $("<button>");
        $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
        $buttonnext.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2.1%", "padding-top": "0.6%", "left": "2.2%"});
        $buttonnext.text("Next").insertAfter($h5);
        if (responseText[2] == "Gameweek 23") {
            $buttonnext.css('visibility', 'hidden');
        }
        for (i = responseText.length; i >= 3; i = i - 6) {

            var $h6 = $("<h6>");
            $h6.attr({class: "col-sm-12"});
            $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left": "-2.05%", "margin-bottom": "1%", "margin-top": "2.5%"});
            $h6.text(responseText[i]).insertAfter($buttonnext);
            if (i + 6 > 0) {
                if (responseText[i] == responseText[i - 6]) {
                    $h6.css({"display": "none"});
                }
            }
            var $div = $("<div>");
            $div.attr({'class': "match col-sm-12"});
            $div.css({"width": "104.3%", "left": "-2.1%"});
            $div.insertAfter($h6);
            var $divrow = $("<div>");
            $divrow.attr({'class': "row"});
            $divrow.appendTo($div);
            var $divh6 = $("<div>");
            $divh6.attr({'class': "col-md-4  col-xs-4   "});
            $divh6.css({"left": "3.7%"});
            $divh6.appendTo($divrow);
            var $h6home = $("<h6>");
            $h6home.attr({'class': "col-md-4  col-xs-4   "});
            $h6home.css({"margin-left": "2.5%", "font-size": "17px", "width": "230px", "text-align": "right"});
            $h6home.text(responseText[i + 1]).appendTo($divh6);
            var $imghome = $("<img>");
            $imghome.attr({src: "img/" + responseText[i + 2], 'class': "col-md-1 col-xs-1"});
            $imghome.css({"width": "initial ", "margin-left": "-1%", "margin-right": "2%"});
            $imghome.appendTo($divrow);
            var $divtime = $("<div>");
            $divtime.attr({"class": "col-md-2  col-xs-2  skor "});
            $divtime.css({"letter-spacing": "0.5px", "width": "15%", "left": "-4.3%", "background-color": "#1d3260", "border-radius": " 3pt"});
            $divtime.appendTo($divrow);
            var $time = $("<h6>");
            $time.css({"width": "100%", "text-align": "center", "color": "white", "font-family": "arial", "font-size": "16px", "font-weight": "lighter"});
            $time.text(responseText[i + 3]).appendTo($divtime);
            var $imgaway = $("<img>");
            $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
            $imgaway.css({"width": "initial ", "margin-left": "-7%"});
            $imgaway.appendTo($divrow);
            var $divh6a = $("<div>");
            $divh6a.attr({'class': "col-md-4  col-xs-4   "});
            $divh6a.css({"left": "-7%", "width": "30%"});
            $divh6a.appendTo($divrow);
            var $h6away = $("<h6>");
            $h6away.attr({'class': "col-md-4  col-xs-4   "});
            $h6away.css({"font-size": "17px", "width": "230px", "text-align": "left"});
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
        $h4.css({"font-family": "arial", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
        $h4.text(responseText[0] + " - " + responseText[3]).appendTo("#somediv");
        var $buttonprev = $("<button>");
        $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
        $buttonprev.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2%", "padding-top": "0.6%"});
        $buttonprev.text("Previous").insertAfter($h4);
        if (responseText[1] == "Gameweek 0") {
            $buttonprev.css('visibility', 'hidden');
        }

        var $h5 = $("<h5>");
        $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
        $h5.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "17px", "left": "7.35%", 'margin-top': "-0.5%", 'margin-bottom': "-2%"});
        $h5.text("Fixtures").insertAfter($buttonprev);
        var $img = $("<img>");
        $img.attr({src: "img/nwsllogo.png"});
        $img.css({'height': "29%", "width": " 29%", "padding-right": " 0.5%"});
        $img.prependTo($h5);
        var $buttonnext = $("<button>");
        $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
        $buttonnext.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2.1%", "padding-top": "0.6%", "left": "2.2%"});
        $buttonnext.text("Next").insertAfter($h5);
        if (responseText[2] == "Gameweek 23") {
            $buttonnext.css('visibility', 'hidden');
        }
        for (i = responseText.length; i >= 3; i = i - 6) {

            var $h6 = $("<h6>");
            $h6.attr({class: "col-sm-12"});
            $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left": "-2.05%", "margin-bottom": "1%", "margin-top": "2.5%"});
            $h6.text(responseText[i]).insertAfter($buttonnext);
            if (i + 6 > 0) {
                if (responseText[i] == responseText[i - 6]) {
                    $h6.css({"display": "none"});
                }
            }
            var $div = $("<div>");
            $div.attr({'class': "match col-sm-12"});
            $div.css({"width": "104.3%", "left": "-2.1%"});
            $div.insertAfter($h6);
            var $divrow = $("<div>");
            $divrow.attr({'class': "row"});
            $divrow.appendTo($div);
            var $divh6 = $("<div>");
            $divh6.attr({'class': "col-md-4  col-xs-4   "});
            $divh6.css({"left": "3.7%"});
            $divh6.appendTo($divrow);
            var $h6home = $("<h6>");
            $h6home.attr({'class': "col-md-4  col-xs-4   "});
            $h6home.css({"margin-left": "2.5%", "font-size": "17px", "width": "230px", "text-align": "right"});
            $h6home.text(responseText[i + 1]).appendTo($divh6);
            var $imghome = $("<img>");
            $imghome.attr({src: "img/" + responseText[i + 2], 'class': "col-md-1 col-xs-1"});
            $imghome.css({"width": "initial ", "margin-left": "-1%", "margin-right": "2%"});
            $imghome.appendTo($divrow);
            var $divtime = $("<div>");
            $divtime.attr({"class": "col-md-2  col-xs-2  skor "});
            $divtime.css({"letter-spacing": "0.5px", "width": "15%", "left": "-4.3%", "background-color": "#1d3260", "border-radius": " 3pt"});
            $divtime.appendTo($divrow);
            var $time = $("<h6>");
            $time.css({"width": "100%", "text-align": "center", "color": "white", "font-family": "arial", "font-size": "16px", "font-weight": "lighter"});
            $time.text(responseText[i + 3]).appendTo($divtime);
            var $imgaway = $("<img>");
            $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
            $imgaway.css({"width": "initial ", "margin-left": "-7%"});
            $imgaway.appendTo($divrow);
            var $divh6a = $("<div>");
            $divh6a.attr({'class': "col-md-4  col-xs-4   "});
            $divh6a.css({"left": "-7%", "width": "30%"});
            $divh6a.appendTo($divrow);
            var $h6away = $("<h6>");
            $h6away.attr({'class': "col-md-4  col-xs-4   "});
            $h6away.css({"font-size": "17px", "width": "230px"});
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
    $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
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
        document.getElementById("gkname2").innerHTML = responseText[7];
        document.getElementById("gkimage2").src = "img/" + responseText[8];
        document.getElementById("gkteam2").innerHTML = responseText[9];
        document.getElementById("gkprice2").innerHTML = "$" + responseText[10];
        document.getElementById("gkscore2").innerHTML = responseText[11];
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
        for (i = 12; i < (length * 5) + 12; i = i + 5) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
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
        for (i = (length * 5) + 12; i < (length2 * 5) + (length * 5) + 12; i = i + 5) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
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
        for (i = (length * 5) + (length2 * 5) + 12; i < (length3 * 5) + (length2 * 5) + (length * 5) + 12; i = i + 5) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }
    });
});


$(document).on("click", "#end", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#end').val();
    $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
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
        document.getElementById("gkname2").innerHTML = responseText[7];
        document.getElementById("gkimage2").src = "img/" + responseText[8];
        document.getElementById("gkteam2").innerHTML = responseText[9];
        document.getElementById("gkprice2").innerHTML = responseText[10];
        document.getElementById("gkscore2").innerHTML = responseText[11];
        document.getElementById("def6").style.display = "none";
        document.getElementById("def7").style.display = "none";
        document.getElementById("def8").style.display = "none";
        var k = 1;
        for (i = 12; i < (5 * 5) + 12; i = i + 5) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }
        var length2 = 2;
        document.getElementById("mid3").style.display = "none";
        document.getElementById("mid4").style.display = "none";
        document.getElementById("mid5").style.display = "none";
        document.getElementById("mid6").style.display = "none";
        var k = 1;
        for (i = (5 * 5) + 12; i < (length2 * 5) + (5 * 5) + 12; i = i + 5) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }
        var length3 = 2;
        document.getElementById("fwd3").style.display = "none";
        document.getElementById("fwd4").style.display = "none";
        document.getElementById("fwd5").style.display = "none";
        document.getElementById("fwd6").style.display = "none";
        var k = 1;
        for (i = (5 * 2) + (5 * 5) + 12; i < (length3 * 5) + (5 * 5) + (5 * 2) + 12; i = i + 5) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }

    });
});


$(document).on("click", "#start", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#start').val();
    $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
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
        document.getElementById("gkname2").innerHTML = responseText[7];
        document.getElementById("gkimage2").src = "img/" + responseText[8];
        document.getElementById("gkteam2").innerHTML = responseText[9];
        document.getElementById("gkprice2").innerHTML = responseText[10];
        document.getElementById("gkscore2").innerHTML = responseText[11];
        document.getElementById("def6").style.display = "";
        document.getElementById("def7").style.display = "";
        document.getElementById("def8").style.display = "";
        var k = 1;
        for (i = 12; i < (5 * 8) + 12; i = i + 5) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }
        var length2 = 5;
        document.getElementById("mid3").style.display = "";
        document.getElementById("mid4").style.display = "";
        document.getElementById("mid5").style.display = "";
        document.getElementById("mid6").style.display = "none";
        var k = 1;
        for (i = (5 * 8) + 12; i < (length2 * 5) + (5 * 8) + 12; i = i + 5) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }
        var length3 = 5;
        document.getElementById("fwd3").style.display = "";
        document.getElementById("fwd4").style.display = "";
        document.getElementById("fwd5").style.display = "";
        document.getElementById("fwd6").style.display = "none";
        var k = 1;
        for (i = (5 * 8) + (5 * 5) + 12; i < (length3 * 5) + (5 * 5) + (5 * 8) + 12; i = i + 5) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }
    });
});


$(document).on("click", "#prevPlayers", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#prevPlayers').val();
    $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
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
        document.getElementById("gkname2").innerHTML = responseText[7];
        document.getElementById("gkimage2").src = "img/" + responseText[8];
        document.getElementById("gkteam2").innerHTML = responseText[9];
        document.getElementById("gkprice2").innerHTML = responseText[10];
        document.getElementById("gkscore2").innerHTML = responseText[11];
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
        for (i = 12; i < (length * 5) + 12; i = i + 5) {

            document.getElementById("namedef" + k).innerHTML = responseText[i];
            document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
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
        for (i = (length * 5) + 12; i < (length2 * 5) + (length * 5) + 12; i = i + 5) {

            document.getElementById("namemid" + k).innerHTML = responseText[i];
            document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
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
        for (i = (length * 5) + (length2 * 5) + 12; i < (length3 * 5) + (length2 * 5) + (length * 5) + 12; i = i + 5) {

            document.getElementById("namefwd" + k).innerHTML = responseText[i];
            document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
            document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
            document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
            document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
            k = k + 1;
        }
    });
});



function showPlayers(str) {
    var xhttp;
    if (str == "all") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);
                document.getElementById("total").innerHTML = jsonResponse[jsonResponse.length - 1];
                document.getElementById("gk").style.display = "";
                document.getElementById("def").style.display = "";
                document.getElementById("mid").style.display = "";
                document.getElementById("fwd").style.display = "";
                document.getElementById("start").style.display = "";
                document.getElementById("start").disabled = true;
                document.getElementById("prevPlayers").style.display = "";
                document.getElementById("prevPlayers").disable = true;
                document.getElementById("nextPlayers").style.display = "";
                document.getElementById("nextPlayers").disable = false;
                document.getElementById("nextPlayers").value = 2;
                document.getElementById("end").style.display = "";
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
                console.log("Json Response: " + jsonResponse.length + "GK:" + jsonResponse[0]);
                for (k = 0; k < jsonResponse.length - 1; k = k + 5) {
                    if (k <= 5) {

                        document.getElementById("gkname" + gk).innerHTML = jsonResponse[k];
                        document.getElementById("gkimage" + gk).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("gkteam" + gk).innerHTML = jsonResponse[k + 2];
                        document.getElementById("gkprice" + gk).innerHTML = "$" + jsonResponse[k + 3];
                        document.getElementById("gkscore" + gk).innerHTML = jsonResponse[k + 4];
                        gk++;

                    } else if (k <= 45) {

                        document.getElementById("namedef" + def).innerHTML = jsonResponse[k];
                        document.getElementById("imagedef" + def).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("teamdef" + def).innerHTML = jsonResponse[k + 2];
                        document.getElementById("pricedef" + def).innerHTML = "$" + jsonResponse[k + 3];
                        document.getElementById("scoredef" + def).innerHTML = jsonResponse[k + 4];
                        def++;
                    } else if (k <= 70) {

                        document.getElementById("namemid" + mid).innerHTML = jsonResponse[k];
                        document.getElementById("imagemid" + mid).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("teammid" + mid).innerHTML = jsonResponse[k + 2];
                        document.getElementById("pricemid" + mid).innerHTML = "$" + jsonResponse[k + 3];
                        document.getElementById("scoremid" + mid).innerHTML = jsonResponse[k + 4];
                        mid++;
                    } else {

                        document.getElementById("namefwd" + fwd).innerHTML = jsonResponse[k];
                        document.getElementById("imagefwd" + fwd).src = "img/" + jsonResponse[k + 1];
                        document.getElementById("teamfwd" + fwd).innerHTML = jsonResponse[k + 2];
                        document.getElementById("pricefwd" + fwd).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("scorefwd" + fwd).innerHTML = jsonResponse[k + 4];
                        fwd++;
                    }


                }
            }
        };
        xhttp.open("GET", "allPlayers?pos=" + str, true);
        xhttp.send();
    } else if (str == "Goalkeeper" || str == "Defender" || str == "Midfielder" || str == "Forward") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

                if (str == "Goalkeeper") {
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
                    for (i = 4; i < jsonResponse.length; i = i + 5) {

                        document.getElementById("gk" + k).style.display = "";
                        document.getElementById("gkname" + k).innerHTML = jsonResponse[i];
                        document.getElementById("gkimage" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("gkteam" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("gkprice" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("gkscore" + k).innerHTML = jsonResponse[i + 4];


                        k = k + 1;
                    }
                } else if (str == "Defender") {

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
                    for (i = 4; i < jsonResponse.length; i = i + 5) {


                        document.getElementById("def" + k).style.display = "";
                        document.getElementById("namedef" + k).innerHTML = jsonResponse[i];
                        document.getElementById("imagedef" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("teamdef" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("pricedef" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("scoredef" + k).innerHTML = jsonResponse[i + 4];
                        k = k + 1;
                    }
                } else if (str == "Midfielder") {
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
                    for (i = 4; i < jsonResponse.length; i = i + 5) {


                        document.getElementById("mid" + k).style.display = "";
                        document.getElementById("namemid" + k).innerHTML = jsonResponse[i];
                        document.getElementById("imagemid" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("teammid" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("pricemid" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("scoremid" + k).innerHTML = jsonResponse[i + 4];
                        k = k + 1;
                    }
                } else if (str == "Forward") {
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
                    for (i = 4; i < jsonResponse.length; i = i + 5) {


                        document.getElementById("fwd" + k).style.display = "";
                        document.getElementById("namefwd" + k).innerHTML = jsonResponse[i];
                        document.getElementById("imagefwd" + k).src = "img/" + jsonResponse[i + 1];
                        document.getElementById("teamfwd" + k).innerHTML = jsonResponse[i + 2];
                        document.getElementById("pricefwd" + k).innerHTML = "$" + jsonResponse[i + 3];
                        document.getElementById("scorefwd" + k).innerHTML = jsonResponse[i + 4];
                        k = k + 1;
                    }
                }
            }
        };
        xhttp.open("GET", "playersSelection?pos=" + str + "-" + 1, true);
        xhttp.send();
    } else if (str == "Boston Breakers" || str == "Chicago Red Stars" || str == "FC Kansas City" || str == "Houston Dash" ||
            str == "North Carolina Courage" || str == "Orlando Pride" || str == "Portland Thorns FC" || str == "Seattle Reign FC" ||
            str == "Sky Blue FC" || str == "Washington Spirit") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

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
                document.getElementById("total").innerHTML=+jsonResponse[0]+ +jsonResponse[1]+ +jsonResponse[2]+ +jsonResponse[3];
                var k = 1;
                for (i = 4; i < (jsonResponse[0] * 5) + 4; i = i + 5) {

                    document.getElementById("gk" + k).style.display = "";
                    document.getElementById("gkname" + k).innerHTML = jsonResponse[i];
                    document.getElementById("gkimage" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("gkteam" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("gkprice" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("gkscore" + k).innerHTML = jsonResponse[i + 4];


                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("gk" + k).style.display = "none";
                }
                var k = 1;
                for (i = (jsonResponse[0] * 5) + 4; i < (jsonResponse[0] * 5)+ (jsonResponse[1] * 5) + 4; i = i + 5) {

                    document.getElementById("def" + k).style.display = "";
                    document.getElementById("namedef" + k).innerHTML = jsonResponse[i];
                    document.getElementById("imagedef" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("teamdef" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("pricedef" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("scoredef" + k).innerHTML = jsonResponse[i + 4];
                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("def" + k).style.display = "none";
                }
                var k = 1;
                for (i = (jsonResponse[0] * 5)+ (jsonResponse[1] * 5) + 4; i < (jsonResponse[0] * 5)+ (jsonResponse[1] * 5)+ (jsonResponse[2] * 5)+ 4; i = i + 5) {

                    document.getElementById("mid" + k).style.display = "";
                    document.getElementById("namemid" + k).innerHTML = jsonResponse[i];
                    document.getElementById("imagemid" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("teammid" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("pricemid" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("scoremid" + k).innerHTML = jsonResponse[i + 4];
                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("mid" + k).style.display = "none";
                }
                var k = 1;
                for (i = (jsonResponse[0] * 5)+ (jsonResponse[1] * 5)+ (jsonResponse[2] * 5)+ 4; i < (jsonResponse[0] * 5)+ (jsonResponse[1] * 5)+ (jsonResponse[2] * 5)+ (jsonResponse[3] * 5)+ 4; i = i + 5) {

                    document.getElementById("fwd" + k).style.display = "";
                    document.getElementById("namefwd" + k).innerHTML = jsonResponse[i];
                    document.getElementById("imagefwd" + k).src = "img/" + jsonResponse[i + 1];
                    document.getElementById("teamfwd" + k).innerHTML = jsonResponse[i + 2];
                    document.getElementById("pricefwd" + k).innerHTML = "$" + jsonResponse[i + 3];
                    document.getElementById("scorefwd" + k).innerHTML = jsonResponse[i + 4];
                    k = k + 1;
                }
                for (i = k; k <= 20; k++) {
                    document.getElementById("fwd" + k).style.display = "none";
                }
            }
        };
        xhttp.open("GET", "playersSelectionTeam?team=" + str, true);
        xhttp.send();
    }
}




$(document).on("click", "#nextPlayersSelect", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var page = $('#nextPlayersSelect').val();
    $.get("playersSelection", {pos: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];


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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
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
    $.get("playersSelection", {pos: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...



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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];

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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
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
    $.get("playersSelection", {pos: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...


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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];


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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {


                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
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
    $.get("playersSelection", {pos: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("gk" + k).style.display = "";
                document.getElementById("gkname" + k).innerHTML = responseText[i];
                document.getElementById("gkimage" + k).src = "img/" + responseText[i + 1];
                document.getElementById("gkteam" + k).innerHTML = responseText[i + 2];
                document.getElementById("gkprice" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("gkscore" + k).innerHTML = responseText[i + 4];

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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("def" + k).style.display = "";
                document.getElementById("namedef" + k).innerHTML = responseText[i];
                document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {


                document.getElementById("mid" + k).style.display = "";
                document.getElementById("namemid" + k).innerHTML = responseText[i];
                document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
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
            for (i = 4; i < responseText.length; i = i + 5) {

                document.getElementById("fwd" + k).style.display = "";
                document.getElementById("namefwd" + k).innerHTML = responseText[i];
                document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                k = k + 1;
            }
            for (i = k; k <= 20; k++) {
                document.getElementById("fwd" + k).style.display = "none";
            }
        }
    });
});
