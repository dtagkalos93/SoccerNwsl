function stats(players) {
    var playersArray = players.split(",");
    k = 1;
    for (i = 0; i < (playersArray.length - 1); i++) {
        if (k == '21')
            break;
        var playersStats = playersArray[i].split("_");
        document.getElementById("statsname" + k).innerHTML = playersStats[0];
        document.getElementById("statsprice" + k).innerHTML = "$" + playersStats[1];
        team(playersStats[2], k, playersStats[3]);
        pos(playersStats[3], k);
        document.getElementById("statsmin" + k).innerHTML = playersStats[4];
        document.getElementById("statsgw" + k).innerHTML = playersStats[5];
        document.getElementById("statstotal" + k).innerHTML = playersStats[6];
        if (playersStats[7] == "OUT") {

            if (document.getElementById("statsinj" + k).classList.contains('glyphicon-info-sign')) {
                document.getElementById("statsinj" + k).classList.remove('glyphicon-info-sign');
                document.getElementById("statsinj" + k).classList.add('glyphicon-one-fine-red-dot');
                document.getElementById("statsinj" + k).style.paddingBottom = '10px';
                document.getElementById("statsinj" + k).style.color = '#c0020d';
            }

        } else {
            if (document.getElementById("statsinj" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                document.getElementById("statsinj" + k).classList.remove('glyphicon-one-fine-red-dot');
                document.getElementById("statsinj" + k).classList.add('glyphicon-info-sign');
                document.getElementById("statsinj" + k).style.color = '';
            }

        }
        k = eval(k) + 1;


    }
}

function team(team, k, pos) {
    if (team == 'Chicago Red Stars') {
        document.getElementById("statsteam" + k).innerHTML = "CHI";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/chicagogk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/stars1.png";

        }

    } else if (team == 'Houston Dash') {
        document.getElementById("statsteam" + k).innerHTML = "HOU";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/houstongk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/dash1.png";

        }
    } else if (team == 'North Carolina Courage') {
        document.getElementById("statsteam" + k).innerHTML = "NC";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/couragegk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/courage.png";

        }

    } else if (team == 'Orlando Pride') {
        document.getElementById("statsteam" + k).innerHTML = "ORL";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/orlandogk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/pride1.png";

        }
    } else if (team == 'Portland Thorns FC') {
        document.getElementById("statsteam" + k).innerHTML = "POR";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/thornsgk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/thorns1.png";

        }
    } else if (team == 'Seattle Reign FC') {
        document.getElementById("statsteam" + k).innerHTML = "SEA";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/seattlegk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/reign1.png";

        }
    } else if (team == 'Sky Blue FC') {
        document.getElementById("statsteam" + k).innerHTML = "NJ";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/skybluegk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/skyblue1.png";

        }
    } else if (team == 'Washington Spirit') {
        document.getElementById("statsteam" + k).innerHTML = "WAS";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/spiritgk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/spirit1.png";

        }
    } else if (team == 'Utah Royals FC') {
        document.getElementById("statsteam" + k).innerHTML = "UTA";
        if (pos == 'Goalkeeper') {
            document.getElementById("statsimg" + k).src = "img/kansasgk.png";

        } else {
            document.getElementById("statsimg" + k).src = "img/utahjr.png";

        }
    }
}

function pos(playerspos, k) {
    if (playerspos == 'Goalkeeper') {
        document.getElementById("statspos" + k).innerHTML = "GK";
    } else if (playerspos == 'Defender') {
        document.getElementById("statspos" + k).innerHTML = "DEF";
    } else if (playerspos == 'Midfielder') {
        document.getElementById("statspos" + k).innerHTML = "MID";

    } else if (playerspos == 'Forward') {
        document.getElementById("statspos" + k).innerHTML = "FWD";
    }
}


function showStats() {
    var k = 1;
    while (k <= 20) {
        document.getElementById("statsblc" + k).style.display = '';
        k = eval(k) + 1;

    }
    var xhttp;
    var selectionPl = document.getElementById('selectPlayers').value;
    var selectCat = document.getElementById('categorySelection').value;
    console.log("Select players " + selectCat + " Select Category " + selectionPl);

    if (selectionPl == "all") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var playersArray = data.split(",");
                k = 1;
                for (i = 0; i < (playersArray.length - 1); i++) {
                    if (k == '21')
                        break;
                    var playersStats = playersArray[i].split("_");
                    document.getElementById("statsname" + k).innerHTML = playersStats[0];
                    document.getElementById("statsprice" + k).innerHTML = "$" + playersStats[1];
                    team(playersStats[2], k, playersStats[3]);
                    pos(playersStats[3], k);
                    document.getElementById("statsmin" + k).innerHTML = playersStats[4];
                    document.getElementById("statsgw" + k).innerHTML = playersStats[5];
                    document.getElementById("statstotal" + k).innerHTML = playersStats[6];
                    if (playersStats[7] == "OUT") {

                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).style.paddingBottom = '10px';
                            document.getElementById("statsinj" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).style.color = '';
                        }

                    }
                    k = eval(k) + 1;


                }
                if (selectCat == 'minutes') {
                    document.getElementById("statschange").innerHTML = "MP";

                } else if (selectCat == 'Goal') {
                    document.getElementById("statschange").innerHTML = "GS";

                } else if (selectCat == 'assist') {
                    document.getElementById("statschange").innerHTML = "A";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'ownGoal') {
                    document.getElementById("statschange").innerHTML = "OG";

                } else if (selectCat == 'goalConceded') {
                    document.getElementById("statschange").innerHTML = "GC";

                } else if (selectCat == 'pkSaved') {
                    document.getElementById("statschange").innerHTML = "PS";

                } else if (selectCat == 'pkMissed') {
                    document.getElementById("statschange").innerHTML = "PM";

                } else if (selectCat == 'yellow') {
                    document.getElementById("statschange").innerHTML = "YC";

                } else if (selectCat == 'red') {
                    document.getElementById("statschange").innerHTML = "RC";

                } else if (selectCat == 'saves') {
                    document.getElementById("statschange").innerHTML = "S";

                }
                if (playersArray[20] == '1') {
                    document.getElementById("btndiv").style.display = "none";
                } else {
                    document.getElementById("btndiv").style.display = "";

                    document.getElementById("totalPagesstats").innerHTML = playersArray[20];
                    document.getElementById("pagestats").innerHTML = 1;
                    document.getElementById("prevbtn").value = '1';
                    document.getElementById("prevbtn").disabled = true;
                    document.getElementById("startbtn").disabled = true;
                    document.getElementById("nextbtn").value = '2';
                    document.getElementById("endbtn").value = playersArray[20];

                    document.getElementById("nextbtn").disabled = false;
                    document.getElementById("endbtn").disabled = false;



                }

            }
        };
        xhttp.open("GET", "showStats?pos=" + selectionPl + "&cat=all&cat2=" + selectCat, true);
        xhttp.send();
    } else if (selectionPl == "Goalkeeper" || selectionPl == "Defender" || selectionPl == "Midfielder" || selectionPl == "Forward") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;

                var playersArray = data.split(",");
                k = 1;
                for (i = 0; i < (playersArray.length - 1); i++) {
                    if (k == '21')
                        break;
                    var playersStats = playersArray[i].split("_");
                    document.getElementById("statsname" + k).innerHTML = playersStats[0];
                    document.getElementById("statsprice" + k).innerHTML = "$" + playersStats[1];
                    team(playersStats[2], k, playersStats[3]);
                    pos(playersStats[3], k);
                    document.getElementById("statsmin" + k).innerHTML = playersStats[4];
                    document.getElementById("statsgw" + k).innerHTML = playersStats[5];
                    document.getElementById("statstotal" + k).innerHTML = playersStats[6];
                    if (playersStats[7] == "OUT") {

                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).style.paddingBottom = '10px';
                            document.getElementById("statsinj" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).style.color = '';
                        }

                    }
                    k = eval(k) + 1;


                }
                if (selectCat == 'minutes') {
                    document.getElementById("statschange").innerHTML = "MP";

                } else if (selectCat == 'Goal') {
                    document.getElementById("statschange").innerHTML = "GS";

                } else if (selectCat == 'assist') {
                    document.getElementById("statschange").innerHTML = "A";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'ownGoal') {
                    document.getElementById("statschange").innerHTML = "OG";

                } else if (selectCat == 'goalConceded') {
                    document.getElementById("statschange").innerHTML = "GC";

                } else if (selectCat == 'pkSaved') {
                    document.getElementById("statschange").innerHTML = "PS";

                } else if (selectCat == 'pkMissed') {
                    document.getElementById("statschange").innerHTML = "PM";

                } else if (selectCat == 'yellow') {
                    document.getElementById("statschange").innerHTML = "YC";

                } else if (selectCat == 'red') {
                    document.getElementById("statschange").innerHTML = "RC";

                } else if (selectCat == 'saves') {
                    document.getElementById("statschange").innerHTML = "S";

                }
                if (playersArray[20] == '1') {
                    document.getElementById("btndiv").style.display = "none";
                } else {
                    document.getElementById("btndiv").style.display = "";

                    document.getElementById("totalPagesstats").innerHTML = playersArray[20];
                    document.getElementById("pagestats").innerHTML = 1;
                    document.getElementById("prevbtn").value = '1';
                    document.getElementById("prevbtn").disabled = true;
                    document.getElementById("startbtn").disabled = true;
                    document.getElementById("nextbtn").value = '2';
                    document.getElementById("endbtn").value = playersArray[20];

                    document.getElementById("nextbtn").disabled = false;
                    document.getElementById("endbtn").disabled = false;



                }



            }
        };
        xhttp.open("GET", "showStats?pos=" + selectionPl + "&cat=pos&cat2=" + selectCat, true);
        xhttp.send();
    } else if (selectionPl == "Chicago Red Stars" || selectionPl == "Utah Royals FC" || selectionPl == "Houston Dash" ||
            selectionPl == "North Carolina Courage" || selectionPl == "Orlando Pride" || selectionPl == "Portland Thorns FC" || selectionPl == "Seattle Reign FC" ||
            selectionPl == "Sky Blue FC" || selectionPl == "Washington Spirit"
            ) {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var playersArray = data.split(",");
                k = 1;
                for (i = 0; i < (playersArray.length - 1); i++) {
                    if (k == '21')
                        break;
                    var playersStats = playersArray[i].split("_");
                    document.getElementById("statsname" + k).innerHTML = playersStats[0];
                    document.getElementById("statsprice" + k).innerHTML = "$" + playersStats[1];
                    team(playersStats[2], k, playersStats[3]);
                    pos(playersStats[3], k);
                    document.getElementById("statsmin" + k).innerHTML = playersStats[4];
                    document.getElementById("statsgw" + k).innerHTML = playersStats[5];
                    document.getElementById("statstotal" + k).innerHTML = playersStats[6];
                    if (playersStats[7] == "OUT") {

                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).style.paddingBottom = '10px';
                            document.getElementById("statsinj" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).style.color = '';
                        }

                    }
                    k = eval(k) + 1;


                }
                if (k <= 20) {
                    while (k <= 20) {
                        document.getElementById("statsblc" + k).style.display = 'none';
                        k = eval(k) + 1;

                    }
                }


            }

            if (selectCat == 'minutes') {
                document.getElementById("statschange").innerHTML = "MP";

            } else if (selectCat == 'Goal') {
                document.getElementById("statschange").innerHTML = "GS";

            } else if (selectCat == 'assist') {
                document.getElementById("statschange").innerHTML = "A";

            } else if (selectCat == 'cleanSheet') {
                document.getElementById("statschange").innerHTML = "CS";

            } else if (selectCat == 'cleanSheet') {
                document.getElementById("statschange").innerHTML = "CS";

            } else if (selectCat == 'ownGoal') {
                document.getElementById("statschange").innerHTML = "OG";

            } else if (selectCat == 'goalConceded') {
                document.getElementById("statschange").innerHTML = "GC";

            } else if (selectCat == 'pkSaved') {
                document.getElementById("statschange").innerHTML = "PS";

            } else if (selectCat == 'pkMissed') {
                document.getElementById("statschange").innerHTML = "PM";

            } else if (selectCat == 'yellow') {
                document.getElementById("statschange").innerHTML = "YC";

            } else if (selectCat == 'red') {
                document.getElementById("statschange").innerHTML = "RC";

            } else if (selectCat == 'saves') {
                document.getElementById("statschange").innerHTML = "S";

            }
            if (playersArray[20] == '1') {
                document.getElementById("btndiv").style.display = "none";
            } else {
                document.getElementById("btndiv").style.display = "";

                document.getElementById("totalPagesstats").innerHTML = playersArray[20];
                document.getElementById("pagestats").innerHTML = 1;
                document.getElementById("prevbtn").value = '1';
                document.getElementById("prevbtn").disabled = true;
                document.getElementById("startbtn").disabled = true;
                document.getElementById("nextbtn").value = '2';
                document.getElementById("endbtn").value = playersArray[20];

                document.getElementById("nextbtn").disabled = false;
                document.getElementById("endbtn").disabled = false;



            }


        };
        xhttp.open("GET", "showStats?pos=" + selectionPl + "&cat=team&cat2=" + selectCat, true);
        xhttp.send();
    }
}



function changePage(from) {
    var k = 1;
    while (k <= 20) {
        document.getElementById("statsblc" + k).style.display = '';
        k = eval(k) + 1;

    }
    var xhttp;
    var selectionPl = document.getElementById('selectPlayers').value;
    var selectCat = document.getElementById('categorySelection').value;
    if (from == 'start') {
        var page = document.getElementById("startbtn").value;

    } else if (from == 'end') {
        var page = document.getElementById("endbtn").value;

    } else if (from == 'prev') {
        var page = document.getElementById("prevbtn").value;

    } else {
        var page = document.getElementById("nextbtn").value;

    }

    console.log("Select players " + selectCat + " Select Category " + selectionPl);

    if (selectionPl == "all") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

                var nameArray = jsonResponse["name"];
                var priceArray = jsonResponse["price"];
                var teamArray = jsonResponse["team"];
                var posArray = jsonResponse["pos"];
                var minArray = jsonResponse["min"];
                var gwpArray = jsonResponse["gwp"];
                var totalArray = jsonResponse["total"];
                var injuryArray = jsonResponse["injury"];
                var otherArray = jsonResponse["other"];

                k = 1;
                for (i = 0; i < nameArray.length; i++) {
                    console.log(nameArray[i]);
                    document.getElementById("statsname" + k).innerHTML = nameArray[i];
                    document.getElementById("statsprice" + k).innerHTML = "$" + priceArray[i];
                    team(teamArray[i], k, posArray[i]);
                    pos(posArray[3], k);
                    document.getElementById("statsmin" + k).innerHTML = minArray[i];
                    document.getElementById("statsgw" + k).innerHTML = gwpArray[i];
                    document.getElementById("statstotal" + k).innerHTML = totalArray[i];
                    if (injuryArray[i] == "OUT") {

                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).style.paddingBottom = '10px';
                            document.getElementById("statsinj" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).style.color = '';
                        }

                    }
                    k = eval(k) + 1;

                }
                if (k <= 20) {
                    console.log("here!");

                    while (k <= 20) {
                        document.getElementById("statsblc" + k).style.display = 'none';
                        k = eval(k) + 1;

                    }
                }

                if (selectCat == 'minutes') {
                    document.getElementById("statschange").innerHTML = "MP";

                } else if (selectCat == 'Goal') {
                    document.getElementById("statschange").innerHTML = "GS";

                } else if (selectCat == 'assist') {
                    document.getElementById("statschange").innerHTML = "A";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'ownGoal') {
                    document.getElementById("statschange").innerHTML = "OG";

                } else if (selectCat == 'goalConceded') {
                    document.getElementById("statschange").innerHTML = "GC";

                } else if (selectCat == 'pkSaved') {
                    document.getElementById("statschange").innerHTML = "PS";

                } else if (selectCat == 'pkMissed') {
                    document.getElementById("statschange").innerHTML = "PM";

                } else if (selectCat == 'yellow') {
                    document.getElementById("statschange").innerHTML = "YC";

                } else if (selectCat == 'red') {
                    document.getElementById("statschange").innerHTML = "RC";

                } else if (selectCat == 'saves') {
                    document.getElementById("statschange").innerHTML = "S";

                }
                document.getElementById("prevbtn").value = otherArray[0];
                document.getElementById("nextbtn").value = otherArray[1];
                document.getElementById("pagestats").innerHTML = page;
                if (otherArray[0] == 0) {
                    document.getElementById("prevbtn").disabled = true;
                    document.getElementById("startbtn").disabled = true;

                } else {
                    document.getElementById("prevbtn").disabled = false;
                    document.getElementById("startbtn").disabled = false;
                }
                if (otherArray[1] == otherArray[2]) {
                    document.getElementById("nextbtn").disabled = true;
                    document.getElementById("endbtn").disabled = true;

                } else {
                    document.getElementById("nextbtn").disabled = false;
                    document.getElementById("endbtn").disabled = false;
                }

            }
        };
        xhttp.open("GET", "changePages?pos=" + selectionPl + "&cat=all&cat2=" + selectCat + "&page=" + page, true);
        xhttp.send();
    } else if (selectionPl == "Goalkeeper" || selectionPl == "Defender" || selectionPl == "Midfielder" || selectionPl == "Forward") {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

                var nameArray = jsonResponse["name"];
                var priceArray = jsonResponse["price"];
                var teamArray = jsonResponse["team"];
                var posArray = jsonResponse["pos"];
                var minArray = jsonResponse["min"];
                var gwpArray = jsonResponse["gwp"];
                var totalArray = jsonResponse["total"];
                var injuryArray = jsonResponse["injury"];
                var otherArray = jsonResponse["other"];

                k = 1;
                for (i = 0; i < nameArray.length; i++) {
                    console.log(nameArray[i]);
                    document.getElementById("statsname" + k).innerHTML = nameArray[i];
                    document.getElementById("statsprice" + k).innerHTML = "$" + priceArray[i];
                    team(teamArray[i], k, posArray[i]);
                    pos(posArray[3], k);
                    document.getElementById("statsmin" + k).innerHTML = minArray[i];
                    document.getElementById("statsgw" + k).innerHTML = gwpArray[i];
                    document.getElementById("statstotal" + k).innerHTML = totalArray[i];
                    if (injuryArray[i] == "OUT") {

                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).style.paddingBottom = '10px';
                            document.getElementById("statsinj" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).style.color = '';
                        }

                    }
                    k = eval(k) + 1;

                }
                if (k <= 20) {
                    console.log("here!");

                    while (k <= 20) {
                        document.getElementById("statsblc" + k).style.display = 'none';
                        k = eval(k) + 1;

                    }
                }

                if (selectCat == 'minutes') {
                    document.getElementById("statschange").innerHTML = "MP";

                } else if (selectCat == 'Goal') {
                    document.getElementById("statschange").innerHTML = "GS";

                } else if (selectCat == 'assist') {
                    document.getElementById("statschange").innerHTML = "A";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'ownGoal') {
                    document.getElementById("statschange").innerHTML = "OG";

                } else if (selectCat == 'goalConceded') {
                    document.getElementById("statschange").innerHTML = "GC";

                } else if (selectCat == 'pkSaved') {
                    document.getElementById("statschange").innerHTML = "PS";

                } else if (selectCat == 'pkMissed') {
                    document.getElementById("statschange").innerHTML = "PM";

                } else if (selectCat == 'yellow') {
                    document.getElementById("statschange").innerHTML = "YC";

                } else if (selectCat == 'red') {
                    document.getElementById("statschange").innerHTML = "RC";

                } else if (selectCat == 'saves') {
                    document.getElementById("statschange").innerHTML = "S";

                }
                document.getElementById("prevbtn").value = otherArray[0];
                document.getElementById("nextbtn").value = otherArray[1];
                document.getElementById("pagestats").innerHTML = page;
                if (otherArray[0] == 0) {
                    document.getElementById("prevbtn").disabled = true;
                    document.getElementById("startbtn").disabled = true;

                } else {
                    document.getElementById("prevbtn").disabled = false;
                    document.getElementById("startbtn").disabled = false;
                }
                if (otherArray[1] == otherArray[2]) {
                    document.getElementById("nextbtn").disabled = true;
                    document.getElementById("endbtn").disabled = true;

                } else {
                    document.getElementById("nextbtn").disabled = false;
                    document.getElementById("endbtn").disabled = false;
                }


            }
        };
        xhttp.open("GET", "changePages?pos=" + selectionPl + "&cat=pos&cat2=" + selectCat + "&page=" + page, true);
        xhttp.send();
    } else if (selectionPl == "Chicago Red Stars" || selectionPl == "Utah Royals FC" || selectionPl == "Houston Dash" ||
            selectionPl == "North Carolina Courage" || selectionPl == "Orlando Pride" || selectionPl == "Portland Thorns FC" || selectionPl == "Seattle Reign FC" ||
            selectionPl == "Sky Blue FC" || selectionPl == "Washington Spirit"
            ) {
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = xhttp.responseText;
                var jsonResponse = JSON.parse(data);

                var nameArray = jsonResponse["name"];
                var priceArray = jsonResponse["price"];
                var teamArray = jsonResponse["team"];
                var posArray = jsonResponse["pos"];
                var minArray = jsonResponse["min"];
                var gwpArray = jsonResponse["gwp"];
                var totalArray = jsonResponse["total"];
                var injuryArray = jsonResponse["injury"];
                var otherArray = jsonResponse["other"];

                k = 1;
                for (i = 0; i < nameArray.length; i++) {
                    console.log(nameArray[i]);
                    document.getElementById("statsname" + k).innerHTML = nameArray[i];
                    document.getElementById("statsprice" + k).innerHTML = "$" + priceArray[i];
                    team(teamArray[i], k, posArray[i]);
                    pos(posArray[3], k);
                    document.getElementById("statsmin" + k).innerHTML = minArray[i];
                    document.getElementById("statsgw" + k).innerHTML = gwpArray[i];
                    document.getElementById("statstotal" + k).innerHTML = totalArray[i];
                    if (injuryArray[i] == "OUT") {

                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-info-sign')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).style.paddingBottom = '10px';
                            document.getElementById("statsinj" + k).style.color = '#c0020d';
                        }

                    } else {
                        if (document.getElementById("statsinj" + k).classList.contains('glyphicon-one-fine-red-dot')) {
                            document.getElementById("statsinj" + k).classList.remove('glyphicon-one-fine-red-dot');
                            document.getElementById("statsinj" + k).classList.add('glyphicon-info-sign');
                            document.getElementById("statsinj" + k).style.color = '';
                        }

                    }
                    k = eval(k) + 1;

                }
                if (k <= 20) {
                    console.log("here!");

                    while (k <= 20) {
                        document.getElementById("statsblc" + k).style.display = 'none';
                        k = eval(k) + 1;

                    }
                }

                if (selectCat == 'minutes') {
                    document.getElementById("statschange").innerHTML = "MP";

                } else if (selectCat == 'Goal') {
                    document.getElementById("statschange").innerHTML = "GS";

                } else if (selectCat == 'assist') {
                    document.getElementById("statschange").innerHTML = "A";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'cleanSheet') {
                    document.getElementById("statschange").innerHTML = "CS";

                } else if (selectCat == 'ownGoal') {
                    document.getElementById("statschange").innerHTML = "OG";

                } else if (selectCat == 'goalConceded') {
                    document.getElementById("statschange").innerHTML = "GC";

                } else if (selectCat == 'pkSaved') {
                    document.getElementById("statschange").innerHTML = "PS";

                } else if (selectCat == 'pkMissed') {
                    document.getElementById("statschange").innerHTML = "PM";

                } else if (selectCat == 'yellow') {
                    document.getElementById("statschange").innerHTML = "YC";

                } else if (selectCat == 'red') {
                    document.getElementById("statschange").innerHTML = "RC";

                } else if (selectCat == 'saves') {
                    document.getElementById("statschange").innerHTML = "S";

                }
                document.getElementById("prevbtn").value = otherArray[0];
                document.getElementById("nextbtn").value = otherArray[1];
                document.getElementById("pagestats").innerHTML = page;
                if (otherArray[0] == 0) {
                    document.getElementById("prevbtn").disabled = true;
                    document.getElementById("startbtn").disabled = true;

                } else {
                    document.getElementById("prevbtn").disabled = false;
                    document.getElementById("startbtn").disabled = false;
                }
                if (otherArray[1] == otherArray[2]) {
                    document.getElementById("nextbtn").disabled = true;
                    document.getElementById("endbtn").disabled = true;

                } else {
                    document.getElementById("nextbtn").disabled = false;
                    document.getElementById("endbtn").disabled = false;
                }
            }

        };
        xhttp.open("GET", "changePages?pos=" + selectionPl + "&cat=team&cat2=" + selectCat + "&page=" + page, true);
        xhttp.send();
    }
}