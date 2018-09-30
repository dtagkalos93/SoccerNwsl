$(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#prev').val();
    for (j = 0; j < 4; j++) {
        $("#mondaygame" + j).collapse('hide');
        $("#wednesdaygame" + j).collapse('hide');
        $("#thursdaygame" + j).collapse('hide');
        $("#tuesdaygame" + j).collapse('hide');
        $("#fridaygame" + j).collapse('hide');
        $("#saturdaygame" + j).collapse('hide');
        $("#sundaygame" + j).collapse('hide');
    }
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
        if (responseText[2] == "Gameweek 25") {
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
    for (j = 0; j < 4; j++) {
        $("#mondaygame" + j).collapse('hide');
        $("#wednesdaygame" + j).collapse('hide');
        $("#thursdaygame" + j).collapse('hide');
        $("#tuesdaygame" + j).collapse('hide');
        $("#fridaygame" + j).collapse('hide');
        $("#saturdaygame" + j).collapse('hide');
        $("#sundaygame" + j).collapse('hide');
    }
    $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("first").style.display = "none";
        document.getElementById("last").style.display = "";

        document.getElementById("prev").value = responseText[1];
        if (responseText[1] == "Gameweek 0") {
            document.getElementById("prev").disabled = true;
        } else {
            document.getElementById("prev").disabled = false;
        }
        document.getElementById("next").value = responseText[2];
        if (responseText[2] == "Gameweek 25") {
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

            if (day != daystr[0].toLowerCase()) {
                console.log(daystr[0] + "!!!!");
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



$(document).on("click", "#prevFix", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#prevFix').val();
    for (j = 0; j < 4; j++) {
        $("#mondaygame" + j).collapse('hide');
        $("#wednesdaygame" + j).collapse('hide');
        $("#thursdaygame" + j).collapse('hide');
        $("#tuesdaygame" + j).collapse('hide');
        $("#fridaygame" + j).collapse('hide');
        $("#saturdaygame" + j).collapse('hide');
        $("#sundaygame" + j).collapse('hide');
    }
    console.log("here");
    $.get("fixture", {previous: prev}, function (responseText) {
        document.getElementById("first").style.display = "none";
        document.getElementById("last").style.display = "";

        document.getElementById("prevFix").value = responseText[1];
        if (responseText[1] == "Gameweek 0") {
            document.getElementById("prevFix").disabled = true;
        } else {
            document.getElementById("prevFix").disabled = false;
        }
        document.getElementById("nextFix").value = responseText[2];
        if (responseText[2] == "Gameweek 25") {
            document.getElementById("nextFix").disabled = true;
        } else {
            document.getElementById("nextFix").disabled = false;
        }

        document.getElementById("gameweekid").innerHTML = responseText[0] + " - " + responseText[3];
        console.log(responseText[0] + " - " + responseText[3]);
        document.getElementById("monday").style.display = "none";
        console.log(document.getElementById("tuesday"));
        document.getElementById("tuesday").style.display = "none";
        document.getElementById("wednesday").style.display = "none";
        document.getElementById("thursday").style.display = "none";
        document.getElementById("friday").style.display = "none";
        document.getElementById("saturday").style.display = "none";
        document.getElementById("sunday").style.display = "none";
        var i = 0;
        var j = 3;
        var day = "";
        for (j; j < responseText.length; j = j + 7) {
            var daystr = responseText[j].split(" ");
            console.log(daystr[0] + " " + day);
            if (day != daystr[0].toLowerCase()) {
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
            document.getElementById(day + "stadium" + i).innerHTML = responseText[j + 6];

            document.getElementById(day + "game" + i + "id").style.display = "";
            i = i + 1;
        }
        console.log(i);

        for (i; i < 4; i++) {
            document.getElementById(day + "game" + i + "id").style.display = "none";
        }

    });
});

$(document).on("click", "#nextFix", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    var prev = $('#nextFix').val();
    for (j = 0; j < 4; j++) {
        $("#mondaygame" + j).collapse('hide');
        $("#wednesdaygame" + j).collapse('hide');
        $("#thursdaygame" + j).collapse('hide');
        $("#tuesdaygame" + j).collapse('hide');
        $("#fridaygame" + j).collapse('hide');
        $("#saturdaygame" + j).collapse('hide');
        $("#sundaygame" + j).collapse('hide');
    }
    $.get("fixture", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
        document.getElementById("first").style.display = "none";
        document.getElementById("last").style.display = "";

        document.getElementById("prevFix").value = responseText[1];
        if (responseText[1] == "Gameweek 0") {
            document.getElementById("prevFix").disabled = true;
        } else {
            document.getElementById("prevFix").disabled = false;
        }
        document.getElementById("nextFix").value = responseText[2];
        if (responseText[2] == "Gameweek 25") {
            document.getElementById("nextFix").disabled = true;
        } else {
            document.getElementById("nextFix").disabled = false;
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
        for (j; j < responseText.length; j = j + 7) {
            var daystr = responseText[j].split(" ");

            if (day != daystr[0].toLowerCase()) {
                console.log(daystr[0] + "!!!!");
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
            document.getElementById(day + "stadium" + i).innerHTML = responseText[j + 6];

            document.getElementById(day + "game" + i + "id").style.display = "";
            i = i + 1;
        }

        for (i; i < 4; i++) {
            document.getElementById(day + "game" + i + "id").style.display = "none";
        }
    });
});

function fixturestats(i) {

    var gw = document.getElementById("gameweekid").textContent.split("-");
    var home = document.getElementById("home" + i).textContent;
    var away = document.getElementById("away" + i).textContent;
    console.log(gw + " " + home + " " + away);
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            var homegoal = jsonResponse["homegoal"];
            var awaygoal = jsonResponse["awaygoal"];
            var homeassist = jsonResponse["homeassist"];
            var awayassist = jsonResponse["awayassist"];
            var homeown = jsonResponse["homeown"];
            var awayown = jsonResponse["awayown"];
            var homepkmissed = jsonResponse["homepkmissed"];
            var awaypkmissed = jsonResponse["awaypkmissed"];
            var homepksaved = jsonResponse["homepksaved"];
            var awaypksaved = jsonResponse["awaypksaved"];
            var homesaves = jsonResponse["homesaves"];
            var awaysaves = jsonResponse["awaysaves"];
            var homeyellow = jsonResponse["homeyellow"];
            var awayyellow = jsonResponse["awayyellow"];
            var homered = jsonResponse["homered"];
            var awayred = jsonResponse["awayred"];

            if (homegoal.length == 0 && awaygoal.length == 0) {
                document.getElementById("goaltitle" + i).style.display = "none";
                document.getElementById("goalstat" + i).style.display = "none";

            } else {
                document.getElementById("goaltitle" + i).style.display = "";
                document.getElementById("goalstat" + i).style.display = "";
                for (j = 0; j < homegoal.length; j++) {
                    if (homegoal[j].split("_")[1] != 1) {
                        document.getElementById("homegoal" + j + "-" + i).innerHTML = homegoal[j].split("_")[0] + " (" + homegoal[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homegoal" + j + "-" + i).innerHTML = homegoal[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaygoal.length; j++) {
                    if (homegoal[j].split("_")[1] != 1) {
                        document.getElementById("awaygoal" + j + "-" + i).innerHTML = awaygoal[j].split("_")[0] + " (" + awaygoal[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awaygoal" + j + "-" + i).innerHTML = awaygoal[j].split("_")[0];

                    }
                }
            }

            if (homeown.length == 0 && awayown.length == 0) {
                document.getElementById("owntitle" + i).style.display = "none";
                document.getElementById("ownstat" + i).style.display = "none";

            } else {
                document.getElementById("owntitle" + i).style.display = "";
                document.getElementById("ownstat" + i).style.display = "";
                for (j = 0; j < homeown.length; j++) {
                    if (homeown[j].split("_")[1] != 1) {
                        document.getElementById("homeown" + j + "-" + i).innerHTML = homeown[j].split("_")[0] + " (" + homeown[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homeown" + j + "-" + i).innerHTML = homeown[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayown.length; j++) {
                    if (awayown[j].split("_")[1] != 1) {
                        document.getElementById("awayown" + j + "-" + i).innerHTML = awayown[j].split("_")[0] + " (" + awayown[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awayown" + j + "-" + i).innerHTML = awayown[j].split("_")[0];

                    }
                }
            }

            if (homeassist.length == 0 && awayassist.length == 0) {
                document.getElementById("assisttitle" + i).style.display = "none";
                document.getElementById("assiststats" + i).style.display = "none";

            } else {
                document.getElementById("assisttitle" + i).style.display = "";
                document.getElementById("assiststats" + i).style.display = "";
                for (j = 0; j < homeassist.length; j++) {
                    if (homeassist[j].split("_")[1] != 1) {
                        document.getElementById("homeassist" + j + "-" + i).innerHTML = homeassist[j].split("_")[0] + " (" + homeassist[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homeassist" + j + "-" + i).innerHTML = homeassist[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayassist.length; j++) {
                    if (awayassist[j].split("_")[1] != 1) {
                        document.getElementById("awayassist" + j + "-" + i).innerHTML = awayassist[j].split("_")[0] + " (" + awayassist[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awayassist" + j + "-" + i).innerHTML = awayassist[j].split("_")[0];

                    }
                }
            }
            if (homeyellow.length == 0 && awayyellow.length == 0) {
                document.getElementById("yellowtitle" + i).style.display = "none";
                document.getElementById("yellowstats" + i).style.display = "none";

            } else {
                document.getElementById("yellowtitle" + i).style.display = "";
                document.getElementById("yellowstats" + i).style.display = "";
                for (j = 0; j < homeyellow.length; j++) {
                    if (homeyellow[j].split("_")[1] != 1) {
                        document.getElementById("homeyellow" + j + "-" + i).innerHTML = homeyellow[j].split("_")[0] + " (" + homeyellow[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homeyellow" + j + "-" + i).innerHTML = homeyellow[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayyellow.length; j++) {
                    if (awayyellow[j].split("_")[1] != 1) {
                        document.getElementById("awayyellow" + j + "-" + i).innerHTML = awayyellow[j].split("_")[0] + " (" + awayyellow[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awayyellow" + j + "-" + i).innerHTML = awayyellow[j].split("_")[0];

                    }
                }
            }

            if (homered.length == 0 && awayred.length == 0) {
                document.getElementById("redtitle" + i).style.display = "none";
                document.getElementById("redstats" + i).style.display = "none";

            } else {
                document.getElementById("redstats" + i).style.display = "";
                document.getElementById("redtitle" + i).style.display = "";
                for (j = 0; j < homered.length; j++) {
                    if (homered[j].split("_")[1] != 1) {
                        document.getElementById("homered" + j + "-" + i).innerHTML = homered[j].split("_")[0] + " (" + homered[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homered" + j + "-" + i).innerHTML = homered[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayred.length; j++) {
                    if (awayred[j].split("_")[1] != 1) {
                        document.getElementById("awayred" + j + "-" + i).innerHTML = awayred[j].split("_")[0] + " (" + awayred[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awayred" + j + "-" + i).innerHTML = awayred[j].split("_")[0];

                    }
                }
            }

            if (homepkmissed.length == 0 && awaypkmissed.length == 0) {
                document.getElementById("pkmissedstats" + i).style.display = "none";
                document.getElementById("pkmissedtitle" + i).style.display = "none";

            } else {
                document.getElementById("pkmissedstats" + i).style.display = "";
                document.getElementById("pkmissedtitle" + i).style.display = "";
                for (j = 0; j < homepkmissed.length; j++) {
                    if (homepkmissed[j].split("_")[1] != 1) {
                        document.getElementById("homepkmissed" + j + "-" + i).innerHTML = homepkmissed[j].split("_")[0] + " (" + homepkmissed[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homepkmissed" + j + "-" + i).innerHTML = homepkmissed[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaypkmissed.length; j++) {
                    if (awaypkmissed[j].split("_")[1] != 1) {
                        document.getElementById("awaypkmissed" + j + "-" + i).innerHTML = awaypkmissed[j].split("_")[0] + " (" + awaypkmissed[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awaypkmissed" + j + "-" + i).innerHTML = awaypkmissed[j].split("_")[0];

                    }
                }
            }

            if (homepksaved.length == 0 && awaypksaved.length == 0) {
                document.getElementById("pksavedstats" + i).style.display = "none";
                document.getElementById("pksavedtitle" + i).style.display = "none";

            } else {
                document.getElementById("pksavedstats" + i).style.display = "";
                document.getElementById("pksavedtitle" + i).style.display = "";
                for (j = 0; j < homepksaved.length; j++) {
                    if (homepksaved[j].split("_")[1] != 1) {
                        document.getElementById("homepksaved" + j + "-" + i).innerHTML = homepksaved[j].split("_")[0] + " (" + homepksaved[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homepksaved" + j + "-" + i).innerHTML = homepksaved[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaypksaved.length; j++) {
                    if (awaypksaved[j].split("_")[1] != 1) {
                        document.getElementById("awaypksaved" + j + "-" + i).innerHTML = awaypksaved[j].split("_")[0] + " (" + awaypksaved[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awaypksaved" + j + "-" + i).innerHTML = awaypksaved[j].split("_")[0];

                    }
                }
            }


            if (homesaves.length == 0 && awaysaves.length == 0) {
                document.getElementById("savestats" + i).style.display = "none";
                document.getElementById("savetitle" + i).style.display = "none";

            } else {
                document.getElementById("savetitle" + i).style.display = "";
                document.getElementById("savestats" + i).style.display = "";
                for (j = 0; j < homesaves.length; j++) {
                    if (homesaves[j].split("_")[1] != 1) {
                        document.getElementById("homesave" + j + "-" + i).innerHTML = homesaves[j].split("_")[0] + " (" + homesaves[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("homesave" + j + "-" + i).innerHTML = homesaves[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaysaves.length; j++) {
                    if (awaysaves[j].split("_")[1] != 1) {
                        document.getElementById("awaysave" + j + "-" + i).innerHTML = awaysaves[j].split("_")[0] + " (" + awaysaves[j].split("_")[1] + ")";
                    } else {
                        document.getElementById("awaysave" + j + "-" + i).innerHTML = awaysaves[j].split("_")[0];

                    }
                }
            }



        }
    }

    ;
    xhttp.open("GET", "fixtureStats?gw=" + gw + "&home=" + home + "&away=" + away, true);
    xhttp.send();

}


function fixturestatsbtn(i, day) {

    var gw = document.getElementById("gameweekid").textContent.split("-");
    var home = document.getElementById(day + "home" + i).textContent;
    var away = document.getElementById(day + "away" + i).textContent;
    console.log(gw + " " + home + " " + away);


    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            /*
             *  list.put("homegoal", homegoals);
             list.put("awaygoal", awaygoals);
             
             list.put("homeassist", homeassist);
             list.put("awayassist", awayassist);
             
             list.put("homeown", homeown);
             list.put("awayown", awayown);
             
             list.put("homepkmissed", homepkmissed);
             list.put("awaypkmissed", awaypkmissed);
             
             list.put("homepksaved", homepksaved);
             list.put("awaypksaved", awaypksaved);
             
             list.put("homesaves", homesaves);
             list.put("awaysaves", awaysaves);
             
             list.put("homeyellow", homeyellow);
             list.put("awayyellow", awayyellow);
             
             list.put("homered", homered);
             list.put("awayred", awayred);
             */
            var homegoal = jsonResponse["homegoal"];
            var awaygoal = jsonResponse["awaygoal"];
            var homeassist = jsonResponse["homeassist"];
            var awayassist = jsonResponse["awayassist"];
            var homeown = jsonResponse["homeown"];
            var awayown = jsonResponse["awayown"];
            var homepkmissed = jsonResponse["homepkmissed"];
            var awaypkmissed = jsonResponse["awaypkmissed"];
            var homepksaved = jsonResponse["homepksaved"];
            var awaypksaved = jsonResponse["awaypksaved"];
            var homesaves = jsonResponse["homesaves"];
            var awaysaves = jsonResponse["awaysaves"];
            var homeyellow = jsonResponse["homeyellow"];
            var awayyellow = jsonResponse["awayyellow"];
            var homered = jsonResponse["homered"];
            var awayred = jsonResponse["awayred"];

            if (homegoal.length == 0 && awaygoal.length == 0) {
                document.getElementById(day + "goaltitle" + i).style.display = "none";
                document.getElementById(day + "goalstat" + i).style.display = "none";

            } else {
                document.getElementById(day + "goaltitle" + i).style.display = "";
                console.log(document.getElementById(day + "goaltitle" + i));
                document.getElementById(day + "goalstat" + i).style.display = "";
                for (j = 0; j < homegoal.length; j++) {
                    if (homegoal[j].split("_")[1] != 1) {
                        document.getElementById(day + "homegoal" + j + "-" + i).innerHTML = homegoal[j].split("_")[0] + " (" + homegoal[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homegoal" + j + "-" + i).innerHTML = homegoal[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaygoal.length; j++) {
                    if (awaygoal[j].split("_")[1] != 1) {
                        document.getElementById(day + "awaygoal" + j + "-" + i).innerHTML = awaygoal[j].split("_")[0] + " (" + awaygoal[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awaygoal" + j + "-" + i).innerHTML = awaygoal[j].split("_")[0];

                    }
                }
            }

            if (homeown.length == 0 && awayown.length == 0) {
                document.getElementById(day + "owntitle" + i).style.display = "none";
                document.getElementById(day + "ownstat" + i).style.display = "none";

            } else {
                document.getElementById(day + "owntitle" + i).style.display = "";
                document.getElementById(day + "ownstat" + i).style.display = "";
                for (j = 0; j < homeown.length; j++) {
                    if (homeown[j].split("_")[1] != 1) {
                        document.getElementById(day + "homeown" + j + "-" + i).innerHTML = homeown[j].split("_")[0] + " (" + homeown[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homeown" + j + "-" + i).innerHTML = homeown[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayown.length; j++) {
                    if (awayown[j].split("_")[1] != 1) {
                        document.getElementById(day + "awayown" + j + "-" + i).innerHTML = awayown[j].split("_")[0] + " (" + awayown[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awayown" + j + "-" + i).innerHTML = awayown[j].split("_")[0];

                    }
                }
            }

            if (homeassist.length == 0 && awayassist.length == 0) {
                document.getElementById(day + "assisttitle" + i).style.display = "none";
                document.getElementById(day + "assiststats" + i).style.display = "none";

            } else {
                document.getElementById(day + "assisttitle" + i).style.display = "";
                document.getElementById(day + "assiststats" + i).style.display = "";
                for (j = 0; j < homeassist.length; j++) {
                    if (homeassist[j].split("_")[1] != 1) {
                        document.getElementById(day + "homeassist" + j + "-" + i).innerHTML = homeassist[j].split("_")[0] + " (" + homeassist[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homeassist" + j + "-" + i).innerHTML = homeassist[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayassist.length; j++) {
                    if (awayassist[j].split("_")[1] != 1) {
                        document.getElementById(day + "awayassist" + j + "-" + i).innerHTML = awayassist[j].split("_")[0] + " (" + awayassist[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awayassist" + j + "-" + i).innerHTML = awayassist[j].split("_")[0];

                    }
                }
            }
            if (homeyellow.length == 0 && awayyellow.length == 0) {
                document.getElementById(day + "yellowtitle" + i).style.display = "none";
                document.getElementById(day + "yellowstats" + i).style.display = "none";

            } else {
                document.getElementById(day + "yellowtitle" + i).style.display = "";
                document.getElementById(day + "yellowstats" + i).style.display = "";
                for (j = 0; j < homeyellow.length; j++) {
                    if (homeyellow[j].split("_")[1] != 1) {
                        document.getElementById(day + "homeyellow" + j + "-" + i).innerHTML = homeyellow[j].split("_")[0] + " (" + homeyellow[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homeyellow" + j + "-" + i).innerHTML = homeyellow[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayyellow.length; j++) {
                    if (awayyellow[j].split("_")[1] != 1) {
                        document.getElementById(day + "awayyellow" + j + "-" + i).innerHTML = awayyellow[j].split("_")[0] + " (" + awayyellow[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awayyellow" + j + "-" + i).innerHTML = awayyellow[j].split("_")[0];

                    }
                }
            }

            if (homered.length == 0 && awayred.length == 0) {
                document.getElementById(day + "redtitle" + i).style.display = "none";
                document.getElementById(day + "redstats" + i).style.display = "none";

            } else {
                document.getElementById(day + "redstats" + i).style.display = "";
                document.getElementById(day + "redtitle" + i).style.display = "";
                for (j = 0; j < homered.length; j++) {
                    if (homered[j].split("_")[1] != 1) {
                        document.getElementById(day + "homered" + j + "-" + i).innerHTML = homered[j].split("_")[0] + " (" + homered[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homered" + j + "-" + i).innerHTML = homered[j].split("_")[0];

                    }
                }
                for (j = 0; j < awayred.length; j++) {
                    if (awayred[j].split("_")[1] != 1) {
                        document.getElementById(day + "awayred" + j + "-" + i).innerHTML = awayred[j].split("_")[0] + " (" + awayred[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awayred" + j + "-" + i).innerHTML = awayred[j].split("_")[0];

                    }
                }
            }

            if (homepkmissed.length == 0 && awaypkmissed.length == 0) {
                document.getElementById(day + "pkmissedstats" + i).style.display = "none";
                document.getElementById(day + "pkmissedtitle" + i).style.display = "none";

            } else {
                document.getElementById(day + "pkmissedstats" + i).style.display = "";
                document.getElementById(day + "pkmissedtitle" + i).style.display = "";
                for (j = 0; j < homepkmissed.length; j++) {
                    if (homepkmissed[j].split("_")[1] != 1) {
                        document.getElementById(day + "homepkmissed" + j + "-" + i).innerHTML = homepkmissed[j].split("_")[0] + " (" + homepkmissed[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homepkmissed" + j + "-" + i).innerHTML = homepkmissed[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaypkmissed.length; j++) {
                    if (awaypkmissed[j].split("_")[1] != 1) {
                        document.getElementById(day + "awaypkmissed" + j + "-" + i).innerHTML = awaypkmissed[j].split("_")[0] + " (" + awaypkmissed[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awaypkmissed" + j + "-" + i).innerHTML = awaypkmissed[j].split("_")[0];

                    }
                }
            }

            if (homepksaved.length == 0 && awaypksaved.length == 0) {
                document.getElementById(day + "pksavedstats" + i).style.display = "none";
                document.getElementById(day + "pksavedtitle" + i).style.display = "none";

            } else {
                document.getElementById(day + "pksavedstats" + i).style.display = "";
                document.getElementById(day + "pksavedtitle" + i).style.display = "";
                for (j = 0; j < homepksaved.length; j++) {
                    if (homepksaved[j].split("_")[1] != 1) {
                        document.getElementById(day + "homepksaved" + j + "-" + i).innerHTML = homepksaved[j].split("_")[0] + " (" + homepksaved[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homepksaved" + j + "-" + i).innerHTML = homepksaved[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaypksaved.length; j++) {
                    if (awaypksaved[j].split("_")[1] != 1) {
                        document.getElementById(day + "awaypksaved" + j + "-" + i).innerHTML = awaypksaved[j].split("_")[0] + " (" + awaypksaved[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awaypksaved" + j + "-" + i).innerHTML = awaypksaved[j].split("_")[0];

                    }
                }
            }


            if (homesaves.length == 0 && awaysaves.length == 0) {
                document.getElementById(day + "savestats" + i).style.display = "none";
                document.getElementById(day + "savetitle" + i).style.display = "none";

            } else {
                document.getElementById(day + "savetitle" + i).style.display = "";
                document.getElementById(day + "savestats" + i).style.display = "";
                for (j = 0; j < homesaves.length; j++) {
                    if (homesaves[j].split("_")[1] != 1) {
                        document.getElementById(day + "homesave" + j + "-" + i).innerHTML = homesaves[j].split("_")[0] + " (" + homesaves[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "homesave" + j + "-" + i).innerHTML = homesaves[j].split("_")[0];

                    }
                }
                for (j = 0; j < awaysaves.length; j++) {
                    if (awaysaves[j].split("_")[1] != 1) {
                        document.getElementById(day + "awaysave" + j + "-" + i).innerHTML = awaysaves[j].split("_")[0] + " (" + awaysaves[j].split("_")[1] + ")";
                    } else {
                        document.getElementById(day + "awaysave" + j + "-" + i).innerHTML = awaysaves[j].split("_")[0];

                    }
                }
            }



        }
    }

    ;
    xhttp.open("GET", "fixtureStats?gw=" + gw + "&home=" + home + "&away=" + away, true);
    xhttp.send();

}