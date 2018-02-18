function goalkeeper(gk) {
    var name = gk.split("-")[0];
    var team = gk.split("-")[1];
    document.getElementById("gkname").innerHTML = name;
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
        document.getElementById("selDEF1").style.display = "";
        document.getElementById("selDEF2").style.display = "";
        document.getElementById("selDEF3").style.display = "none";
        document.getElementById("selDEF4").style.display = "";
        document.getElementById("selDEF5").style.display = "";
        document.getElementById("selDEF1").style.right = "0%";
        document.getElementById("selDEF2").style.right = "0%";
        document.getElementById("selDEF4").style.left = "0%";
        document.getElementById("selDEF5").style.left = "0%";
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
        document.getElementById("selDEF1").style.display = "";
        document.getElementById("selDEF2").style.display = "";
        document.getElementById("selDEF3").style.display = "";
        document.getElementById("selDEF4").style.display = "";
        document.getElementById("selDEF5").style.display = "";
        document.getElementById("selDEF1").style.right = "0%";
        document.getElementById("selDEF2").style.right = "0%";
        document.getElementById("selDEF3").style.right = "0%";
        document.getElementById("selDEF4").style.left = "0%";
        document.getElementById("selDEF5").style.left = "0%";
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
        document.getElementById("selDEF1").style.display = "none";
        document.getElementById("selDEF2").style.display = "";
        document.getElementById("selDEF3").style.display = "";
        document.getElementById("selDEF4").style.display = "";
        document.getElementById("selDEF5").style.display = "none";

        document.getElementById("selDEF2").style.right = "0%";
        document.getElementById("selDEF3").style.right = "0%";
        document.getElementById("selDEF4").style.left = "0%";

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
        document.getElementById("selMID1").style.display = "";
        document.getElementById("selMID2").style.display = "";
        document.getElementById("selMID3").style.display = "none";
        document.getElementById("selMID4").style.display = "";
        document.getElementById("selMID5").style.display = "";
        document.getElementById("selMID1").style.right = "0%";
        document.getElementById("selMID2").style.right = "0%";
        document.getElementById("selMID4").style.left = "0%";
        document.getElementById("selMID5").style.left = "0%";
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
        document.getElementById("selMID1").style.display = "";
        document.getElementById("selMID2").style.display = "";
        document.getElementById("selMID3").style.display = "";
        document.getElementById("selMID4").style.display = "";
        document.getElementById("selMID5").style.display = "";
        document.getElementById("selMID1").style.right = "0%";
        document.getElementById("selMID2").style.right = "0%";
        document.getElementById("selMID3").style.right = "0%";
        document.getElementById("selMID4").style.left = "0%";
        document.getElementById("selMID5").style.left = "0%";
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
        document.getElementById("selMID1").style.display = "none";
        document.getElementById("selMID2").style.display = "";
        document.getElementById("selMID3").style.display = "";
        document.getElementById("selMID4").style.display = "";
        document.getElementById("selMID5").style.display = "none";

        document.getElementById("selMID2").style.right = "0%";
        document.getElementById("selMID3").style.right = "0%";
        document.getElementById("selMID4").style.left = "0%";

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
        document.getElementById("selFWD1").style.display = "";
        document.getElementById("selFWD2").style.display = "none";
        document.getElementById("selFWD3").style.display = "";

        document.getElementById("selFWD1").style.right = "0%";
        document.getElementById("selFWD3").style.right = "0%";
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
        document.getElementById("selFWD1").style.display = "";
        document.getElementById("selFWD2").style.display = "";
        document.getElementById("selFWD3").style.display = "";

        document.getElementById("selFWD1").style.right = "0%";
        document.getElementById("selFWD2").style.right = "0%";
        document.getElementById("selFWD3").style.right = "0%";

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
    var i=2;
    for (j =1 ; j < 4; j++) {

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

