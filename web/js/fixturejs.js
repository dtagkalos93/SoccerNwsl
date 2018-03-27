$(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#prev').val();
    $.get("fixtureprev", {previous: prev}, function (responseText) {
        document.getElementById("first").style.display = "none";
        document.getElementById("last").style.display = "";

        document.getElementById("prev").value = responseText[1];
        if (responseText[1] == "Gameweek 0") {
            document.getElementById("prev").disabled = true;
        } else {
            document.getElementById("prev").disabled = false;
        }
        document.getElementById("next").value = responseText[2];
        if (responseText[2] == "Gameweek 23") {
            document.getElementById("next").disabled = true;
        } else {
            document.getElementById("next").disabled = false;
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
            var daystr = responseText[j].split(" ");
            console.log(daystr[0] + " " + day);
            if (day != daystr[0].toLowerCase()) {
                console.log("here");
                console.log(daystr[0]);
                if (day != "") {
                    for (i; i < 4; i++) {
                        document.getElementById(day + "game" + i + "id").style.display = "none";
                    }
                    day = daystr[0].toLowerCase();
                    i = 0;
                    document.getElementById(day).style.display = "";
                    document.getElementById(day + "title").innerHTML = responseText[j];
                } else {
                    console.log(daystr[0]);
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

        for (i; i < 4; i++) {
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
            document.getElementById("prev").disabled= true;
        } else {
            document.getElementById("prev").disabled= false;
        }
        document.getElementById("next").value = responseText[2];
        if (responseText[2] == "Gameweek 25") {
            document.getElementById("next").disabled = true;
        } else {
            document.getElementById("next").disabled= false;
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
            var daystr = responseText[j].split(" ");
            
            if (day != daystr[0].toLowerCase()) {
                console.log(daystr[0]+"!!!!");
                if (day != "") {
                    for (i; i < 4; i++) {
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

        for (i; i < 4; i++) {
            document.getElementById(day + "game" + i + "id").style.display = "none";
        }
    });
});
