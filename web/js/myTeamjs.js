function goalkeeper(gk) {
    var name = gk.split("-")[0];
    var team = gk.split("-")[1];
    document.getElementById("gkname").innerHTML = name;


    if (team == 'BOS') {
        var teamName = 'Boston Breakers';
        var image = "breakersgk.png";
    } else if (team == 'CHI') {
        var teamName = 'Chicago Red Stars';

        var image = "chicagogk.png";
    } else if (team == 'HOU') {
        var teamName = 'Houston Dash';

        var image = "houstongk.png";
    } else if (team == 'NC') {
        var teamName = 'North Carolina Courage';

        var image = "couragegk.png";
    } else if (team == 'ORL') {
        var teamName = 'Orlando Pride';

        var image = "orlandogk.png";
    } else if (team == 'POR') {
        var teamName = 'Portland Thorns FC';

        var image = "thornsgk.png";
    } else if (team == 'SEA') {
        var teamName = 'Seattle Reign FC';

        var image = "seattlegk.png";
    } else if (team == 'NJ') {
        var teamName = 'Sky Blue FC';

        var image = "skybluegk.png";
    } else if (team == 'WAS') {
        var teamName = 'Washington Spirit';

        var image = "spiritgk.png";
    } else if (team == 'UTA') {
        var teamName = 'Utah Royals FC';

        var image = "kansasgk.png";
    }

    document.getElementById("gkimage").src = "img/" + image;

}

function defence(def, defNo) {
    if (defNo == '4') {
        document.getElementById("selDEF1").style = "";
        document.getElementById("selDEF2").style = "";
        document.getElementById("selDEF3").style = "";
        document.getElementById("selDEF3").style.display = "none";
        document.getElementById("selDEF4").style = "";
        document.getElementById("selDEF5").style = "";
        document.getElementById("selDEF1").className = "";
        document.getElementById("selDEF1").className = "col-md-3";
        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-3";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-3";
        document.getElementById("selDEF5").className = "";
        document.getElementById("selDEF5").className = "col-md-3";


        var defPlayer = def.split(",");


        var i = 1;
        for (j = 0; j < 4; j++) {
            if (i == 3) {
                i = i + 1;
            }
            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
            document.getElementById("defcptimage" + i).style.marginTop = "-21.5%";
            document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
            document.getElementById("defvcptimage" + i).style.marginTop = "-21.5%";
            document.getElementById("defimage" + i).style.marginLeft = "";

            if (team == 'BOS') {
                var teamName = 'Boston Breakers';
                var image = "breakers1.png";
            } else if (team == 'CHI') {
                var teamName = 'Chicago Red Stars';
                var image = "stars1.png";
            } else if (team == 'HOU') {
                var teamName = 'Houston Dash';

                var image = "dash1.png";
            } else if (team == 'NC') {
                var teamName = 'North Carolina Courage';
                var image = "courage.png";
            } else if (team == 'ORL') {
                var teamName = 'Orlando Pride';

                var image = "pride1.png";
            } else if (team == 'POR') {
                var teamName = 'Portland Thorns FC';
                var image = "thorns1.png";
            } else if (team == 'SEA') {
                var teamName = 'Seattle Reign FC';
                var image = "reign1.png";
            } else if (team == 'NJ') {
                var teamName = 'Sky Blue FC';
                var image = "skyblue1.png";
            } else if (team == 'WAS') {
                var image = "spirit1.png";
            } else if (team == 'UTA') {
                var teamName = 'Utah Royals FC';
                var image = "utahjr.png";
            }

            document.getElementById("defimage" + i).src = "img/" + image;

            i = i + 1;

        }



    } else if (defNo == '5') {
        document.getElementById("selDEF1").style = "";
        document.getElementById("selDEF2").style = "";
        document.getElementById("selDEF3").style = "";
        document.getElementById("selDEF4").style = "";
        document.getElementById("selDEF5").style = "";
        document.getElementById("selDEF1").className = "";
        document.getElementById("selDEF1").className = "col-md-2";
        document.getElementById("selDEF1").style.marginRight = "29.5px";
        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-2";
        document.getElementById("selDEF2").style.marginRight = "29.5px";
        document.getElementById("selDEF3").className = "";
        document.getElementById("selDEF3").className = "col-md-2";
        document.getElementById("selDEF3").style.marginRight = "29.5px";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-2";
        document.getElementById("selDEF4").style.marginRight = "29.5px";
        document.getElementById("selDEF5").className = "";
        document.getElementById("selDEF5").className = "col-md-2";


        var defPlayer = def.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("defcptimage" + i).style.paddingLeft = "84%";
            document.getElementById("defcptimage" + i).style.marginTop = "-35%";
            document.getElementById("defvcptimage" + i).style.paddingLeft = "84%";
            document.getElementById("defvcptimage" + i).style.marginTop = "-35%";
            document.getElementById("defimage" + i).style.marginLeft = "27px";
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
                var teamName = 'Washington Spirit';
                var image = "spirit1.png";
            } else if (team == 'UTA') {
                var image = "utahjr.png";
            }
            document.getElementById("defimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (defNo == '3') {



        document.getElementById("selDEF1").style = "";
        document.getElementById("selDEF1").style.display = "none";
        document.getElementById("selDEF2").style = "";
        document.getElementById("selDEF3").style = "";
        document.getElementById("selDEF4").style = "";
        document.getElementById("selDEF5").style = "";
        document.getElementById("selDEF5").style.display = "none";


        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-4";
        document.getElementById("selDEF3").className = "";
        document.getElementById("selDEF3").className = "col-md-4";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-4";


        var defPlayer = def.split(",");
        var i = 2;
        for (j = 0; j < 3; j++) {

            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
            document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
            document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
            document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
            document.getElementById("defimage" + i).style.marginLeft = "";
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
            } else if (team == 'UTA') {
                var image = "utahjr.png";
            }
            document.getElementById("defimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}


function midfielder(mid, midNo) {
    if (midNo == '4') {
        document.getElementById("selMID1").style = "";
        document.getElementById("selMID2").style = "";
        document.getElementById("selMID3").style = "";
        document.getElementById("selMID3").style.display = "none";
        document.getElementById("selMID4").style = "";
        document.getElementById("selMID5").style = "";
        document.getElementById("selMID1").className = "";
        document.getElementById("selMID1").className = "col-md-3";
        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-3";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-3";
        document.getElementById("selMID5").className = "";
        document.getElementById("selMID5").className = "col-md-3";
        var midPlayer = mid.split(",");
        var i = 1;
        for (j = 0; j < 4; j++) {
            if (i == 3) {
                i = i + 1;
            }
            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;

            document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
            document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
            document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
            document.getElementById("midvcptimage" + i).style.marginTop = "-21.3";
            document.getElementById("midimage" + i).style.marginLeft = "";

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
            } else if (team == 'UTA') {
                var image = "utahjr.png";
            }

            document.getElementById("midimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (midNo == '5') {
        document.getElementById("selMID1").style = "";
        document.getElementById("selMID2").style = "";
        document.getElementById("selMID3").style = "";
        document.getElementById("selMID4").style = "";
        document.getElementById("selMID5").style = "";
        document.getElementById("selMID1").className = "";
        document.getElementById("selMID1").className = "col-md-2";
        document.getElementById("selMID1").style.marginRight = "29.5px";
        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-2";
        document.getElementById("selMID2").style.marginRight = "29.5px";
        document.getElementById("selMID3").className = "";
        document.getElementById("selMID3").className = "col-md-2";
        document.getElementById("selMID3").style.marginRight = "29.5px";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-2";
        document.getElementById("selMID4").style.marginRight = "29.5px";
        document.getElementById("selMID5").className = "";
        document.getElementById("selMID5").className = "col-md-2";
        var midPlayer = mid.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;

            document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
            document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
            document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
            document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
            document.getElementById("midimage" + i).style.marginLeft = "27px";
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
            } else if (team == 'UTA') {
                var image = "utahjr.png";
            }
            document.getElementById("midimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (midNo == '3') {
        document.getElementById("selMID1").style = "";
        document.getElementById("selMID1").style.display = "none";
        document.getElementById("selMID2").style = "";
        document.getElementById("selMID3").style = "";
        document.getElementById("selMID4").style = "";
        document.getElementById("selMID5").style = "";
        document.getElementById("selMID5").style.display = "none";


        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-4";
        document.getElementById("selMID3").className = "";
        document.getElementById("selMID3").className = "col-md-4";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-4";

        var midPlayer = mid.split(",");
        var i = 2;
        for (j = 0; j < 3; j++) {

            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;
            document.getElementById("midname" + i).innerHTML = name;
            document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
            document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
            document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
            document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
            document.getElementById("midimage" + i).style.marginLeft = "";
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
            } else if (team == 'UTA') {
                var image = "utahjr.png";
            }
            document.getElementById("midimage" + i).src = "img/" + image;
            i = i + 1;
        }
    }
}

function forward(fwd, fwdNo) {
    if (fwdNo == '2') {
        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD1").style.paddingLeft = "15%";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD2").style.display = "none";
        document.getElementById("selFWD3").style = "";
        document.getElementById("selFWD3").style.paddingRight = "15%";


        document.getElementById("selFWD1").className = "";
        document.getElementById("selFWD1").className = "col-md-6";

        document.getElementById("selFWD3").className = "";
        document.getElementById("selFWD3").className = "col-md-6";
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
            document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
            document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
            document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
            document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
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
            } else if (team == 'UTA') {
                var image = "utahjr.png";
            }

            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (fwdNo == '3') {


        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD3").style = "";
        document.getElementById("selFWD1").style.paddingLeft = "0%";
        document.getElementById("selFWD1").style.paddingRight = "0%";
        document.getElementById("selFWD2").style.paddingLeft = "0%";
        document.getElementById("selFWD2").style.paddingRight = "0%";
        document.getElementById("selFWD3").style.paddingLeft = "0%";
        document.getElementById("selFWD3").style.paddingRight = "0%";

        document.getElementById("selFWD1").className = "";
        document.getElementById("selFWD1").className = "col-md-4";
        document.getElementById("selFWD2").className = "";
        document.getElementById("selFWD2").className = "col-md-4";
        document.getElementById("selFWD3").className = "";
        document.getElementById("selFWD3").className = "col-md-4";


        var fwdPlayer = fwd.split(",");
        var i = 1;

        for (j = 0; j < 3; j++) {

            var name = fwdPlayer[j].split("-")[0];
            var team = fwdPlayer[j].split("-")[1];
            document.getElementById("fwdname" + i).innerHTML = name;

            document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
            document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
            document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
            document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
            if (team == 'BOS') {
                var teamName = 'Boston Breakers';
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
            } else if (team == 'UTA') {
                var image = "utahjr.png";
            }
            document.getElementById("fwdimage" + i).src = "img/" + image;
            i = i + 1;
        }
    } else if (fwdNo == '1') {
        document.getElementById("selFWD1").style.display = "none";
        document.getElementById("selFWD2").style.display = "";
        document.getElementById("selFWD3").style.display = "none";
        document.getElementById("selFWD1").style.paddingLeft = "0%";
        document.getElementById("selFWD1").style.paddingRight = "0%";
        document.getElementById("selFWD2").style.paddingLeft = "0%";
        document.getElementById("selFWD2").style.paddingRight = "0%";
        document.getElementById("selFWD3").style.paddingLeft = "0%";
        document.getElementById("selFWD3").style.paddingRight = "0%";

        document.getElementById("selFWD1").style.right = "0%";
        document.getElementById("selFWD2").style.right = "0%";
        document.getElementById("selFWD3").style.left = "0%";

        document.getElementById("selFWD1").style = "";
        document.getElementById("selFWD1").style.display = "none";
        document.getElementById("selFWD2").style = "";
        document.getElementById("selFWD3").style.display = "none";


        document.getElementById("selFWD2").className = "";
        document.getElementById("selFWD2").className = "col-md-12";


        var fwdPlayer = fwd.split(",");
        var i = 2;
        for (j = 0; j < 1; j++) {

            var name = fwdPlayer[j].split("-")[0];
            var team = fwdPlayer[j].split("-")[1];
            document.getElementById("fwdname" + i).innerHTML = name;
            document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
            document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
            document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
            document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
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
            } else if (team == 'UTA') {
                var image = "utahjr.png";
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
    } else if (team == 'UTA') {
        var image = "kansasgk.png";
    }
    document.getElementById("benimage" + 1).src = "img/" + image;
    var i = 2;
    for (j = 1; j < 4; j++) {

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
        } else if (team == 'UTA') {
            var image = "utahjr.png";
        }
        document.getElementById("benimage" + i).src = "img/" + image;
        document.getElementById("benpos" + i).innerHTML = benPlayer[j].split("-")[2];
        i = i + 1;
    }
}

function captain(gk, defence, midfielder, forward) {
    var player = defence.split(",");

    var cptNO = 2;
    var i = 0;
    var name = gk.split("-")[0];
    document.getElementById("captain1").innerHTML = name + " -GK";
    document.getElementById("viceCaptain1").innerHTML = name + " -GK";
    while (i < (player.length)) {
        document.getElementById("captain" + cptNO).innerHTML = player[i].split("-")[0] + "-DEF";
        document.getElementById("viceCaptain" + cptNO).innerHTML = player[i].split("-")[0] + "-DEF";
        i = eval(i) + 1;
        cptNO = eval(cptNO) + 1;
    }
    player = midfielder.split(",");
    cptNO = eval(cptNO) - 1;
    i = 0;
    while (i < (player.length)) {
        document.getElementById("captain" + cptNO).innerHTML = player[i].split("-")[0] + "-MID";
        document.getElementById("viceCaptain" + cptNO).innerHTML = player[i].split("-")[0] + "-MID";
        i = eval(i) + 1;
        cptNO = eval(cptNO) + 1;
    }
    player = forward.split(",");
    cptNO = eval(cptNO) - 1;
    i = 0;
    while (i < (player.length - 1)) {

        document.getElementById("captain" + cptNO).innerHTML = player[i].split("-")[0] + "-FWD";
        document.getElementById("viceCaptain" + cptNO).innerHTML = player[i].split("-")[0] + "-FWD";
        i = eval(i) + 1;
        cptNO = eval(cptNO) + 1;
    }
}


















function saveTeam() {
    var cpt = document.getElementById("captainSel").value;
    var vcpt = document.getElementById("vcaptainSel").value;
    console.log(vcpt);
    var gk = document.getElementById("gkname").textContent;
    var image = document.getElementById("gkimage").src.split("/")[5];
    if (image == "breakersgk.png") {
        gk = gk + '-BOS-Goalkeeper';
    } else if (image == "chicagogk.png") {
        gk = gk + '-CHI-Goalkeeper';
    } else if (image == "houstongk.png") {
        gk = gk + '-HOU-Goalkeeper';
    } else if (image == "couragegk.png") {
        gk = gk + '-NC-Goalkeeper';
    } else if (image == "orlandogk.png") {
        gk = gk + '-ORL-Goalkeeper';
    } else if (image == "thornsgk.png") {
        gk = gk + '-POR-Goalkeeper';
    } else if (image == "seattlegk.png") {
        gk = gk + '-SEA-Goalkeeper';
    } else if (image == "skybluegk.png") {
        gk = gk + '-NJ-Goalkeeper';
    } else if (image == "spiritgk.png") {
        gk = gk + '-WAS-Goalkeeper';
    } else if (image == "kansasgk.png") {
        gk = gk + '-UTA-Goalkeeper';
    }
    var def = "";
    var defNO = 0;
    var mid = "";
    var midNO = 0;
    var fwd = "";
    var fwdNO = 0;
    var ben = "";
    //captain,vice
    for (i = 1; i <= 5; i++) {
        if (document.getElementById("selDEF" + i).style.display != "none") {
            def = def + document.getElementById("defname" + i).textContent;
            var image = document.getElementById("defimage" + i).src.split("/")[5];
            if (image == "breakers1.png") {
                def = def + '-BOS-Defence,';
            } else if (image == "stars1.png") {
                def = def + '-CHI-Defence,';
            } else if (image == "dash1.png") {
                def = def + '-HOU-Defence,';
            } else if (image == "courage.png") {
                def = def + '-NC-Defence,';
            } else if (image == "pride1.png") {
                def = def + '-ORL-Defence,';
            } else if (image == "thorns1.png") {
                def = def + '-POR-Defence,';
            } else if (image == "reign1.png") {
                def = def + '-SEA-Defence,';
            } else if (image == "skyblue1.png") {
                def = def + '-NJ-Defence,';
            } else if (image == "spirit1.png") {
                def = def + '-WAS-Defence,';
            } else if (image == "utahjr.png") {
                def = def + '-UTA-Defence,';
            }
            defNO = eval(defNO) + 1;
        }
    }
    for (i = 1; i <= 5; i++) {
        if (document.getElementById("selMID" + i).style.display != "none") {
            mid = mid + document.getElementById("midname" + i).textContent;
            var image = document.getElementById("midimage" + i).src.split("/")[5];
            if (image == "breakers1.png") {
                mid = mid + '-BOS-Midfielder,';
            } else if (image == "stars1.png") {
                mid = mid + '-CHI-Midfielder,';
            } else if (image == "dash1.png") {
                mid = mid + '-HOU-Midfielder,';
            } else if (image == "courage.png") {
                mid = mid + '-NC-Midfielder,';
            } else if (image == "pride1.png") {
                mid = mid + '-ORL-Midfielder,';
            } else if (image == "thorns1.png") {
                mid = mid + '-POR-Midfielder,';
            } else if (image == "reign1.png") {
                mid = mid + '-SEA-Midfielder,';
            } else if (image == "skyblue1.png") {
                mid = mid + '-NJ-Midfielder,';
            } else if (image == "spirit1.png") {
                mid = mid + '-WAS-Midfielder,';
            } else if (image == "utahjr.png") {
                mid = mid + '-UTA-Midfielder,';
            }
            midNO = eval(midNO) + 1;

        }
    }
    for (i = 1; i <= 3; i++) {
        if (document.getElementById("selFWD" + i).style.display != "none") {
            fwd = fwd + document.getElementById("fwdname" + i).textContent;
            var image = document.getElementById("fwdimage" + i).src.split("/")[5];
            if (image == "breakers1.png") {
                fwd = fwd + '-BOS-Forward,';
            } else if (image == "stars1.png") {
                fwd = fwd + '-CHI-Forward,';
            } else if (image == "dash1.png") {
                fwd = fwd + '-HOU-Forward,';
            } else if (image == "courage.png") {
                fwd = fwd + '-NC-Forward,';
            } else if (image == "pride1.png") {
                fwd = fwd + '-ORL-Forward,';
            } else if (image == "thorns1.png") {
                fwd = fwd + '-POR-Forward,';
            } else if (image == "reign1.png") {
                fwd = fwd + '-SEA-Forward,';
            } else if (image == "skyblue1.png") {
                fwd = fwd + '-NJ-Forward,';
            } else if (image == "spirit1.png") {
                fwd = fwd + '-WAS-Forward,';
            } else if (image == "utahjr.png") {
                fwd = fwd + '-UTA-Forward,';
            }
            fwdNO = eval(fwdNO) + 1;

        }
    }
    var ben = document.getElementById("benname1").textContent;
    var image = document.getElementById("benimage1").src.split("/")[5];
    if (image == "breakersgk.png") {
        ben = ben + '-BOS-Goalkeeper,';
    } else if (image == "chicagogk.png") {
        ben = ben + '-CHI-Goalkeeper,';
    } else if (image == "houstongk.png") {
        ben = ben + '-HOU-Goalkeeper,';
    } else if (image == "couragegk.png") {
        ben = ben + '-NC-Goalkeeper,';
    } else if (image == "orlandogk.png") {
        ben = ben + '-ORL-Goalkeeper,';
    } else if (image == "thornsgk.png") {
        ben = ben + '-POR-Goalkeeper,';
    } else if (image == "seattlegk.png") {
        ben = ben + '-SEA-Goalkeeper,';
    } else if (image == "skybluegk.png") {
        ben = ben + '-NJ-Goalkeeper,';
    } else if (image == "spiritgk.png") {
        ben = ben + '-WAS-Goalkeeper,';
    } else if (image == "kansasgk.png") {
        ben = ben + '-UTA-Goalkeeper,';
    }
    for (i = 2; i <= 4; i++) {
        if (document.getElementById("ben" + i).style.display != "none") {
            ben = ben + document.getElementById("benname" + i).textContent;
            var image = document.getElementById("benimage" + i).src.split("/")[5];
            console.log(image);
            if (image == "breakers1.png") {
                ben = ben + '-BOS-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "stars1.png") {
                ben = ben + '-CHI-' + document.getElementById("benpos" + i).textContent + ",";
                console.log(document.getElementById("benpos" + i).textContent);
            } else if (image == "dash1.png") {
                ben = ben + '-HOU-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "courage.png") {
                ben = ben + '-NC-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "pride1.png") {
                ben = ben + '-ORL-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "thorns1.png") {
                ben = ben + '-POR-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "reign1.png") {
                ben = ben + '-SEA-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "skyblue1.png") {
                ben = ben + '-NJ-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "spirit1.png") {
                ben = ben + '-WAS-' + document.getElementById("benpos" + i).textContent + ",";
            } else if (image == "utahjr.png") {
                ben = ben + '-UTA-' + document.getElementById("benpos" + i).textContent + ",";
            }
        }
    }
    var formation = defNO + '-' + midNO + "-" + fwdNO;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {


            document.getElementById("saveTeam").disabled = true;

        }
    };
    xhttp.open("GET", "saveTeam?gk=" + gk + "&def=" + def + "&mid=" + mid + "&fwd=" + fwd + "&ben=" + ben + "&formation=" + formation + "&captain=" + cpt + "&vcaptain=" + vcpt, true);
    xhttp.send();
}

function selectCaptain() {
    var captain = document.getElementById("captainSel").value;
    console.log(captain);

    var name = captain.split("-")[0];
    var nametest = captain.split("-")[0];
    console.log(nametest[0] + "??");
    var pos = captain.split("-")[1];
    document.getElementById("gkcptimage").style.display = "none";
    for (i = 1; i <= 5; i++) {
        document.getElementById("defcptimage" + i).style.display = "none";
        document.getElementById("midcptimage" + i).style.display = "none";
        if (i <= 3)
            document.getElementById("fwdcptimage" + i).style.display = "none";
    }
    for (i = 1; i <= 11; i++) {

        if (document.getElementById("viceCaptain" + i).textContent == captain) {
            document.getElementById("viceCaptain" + i).disabled = false;
        }
    }
    if (pos == 'GK') {
        document.getElementById("gkcptimage").style.display = "";
    } else if (pos == "DEF") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("defname" + i).textContent == name) {
                console.log(document.getElementById("defcptimage" + i));
                document.getElementById("defcptimage" + i).style.display = "";
                break;
            }
        }
    } else if (pos == "MID") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("midname" + i).textContent == name) {
                document.getElementById("midcptimage" + i).style.display = "";
                break;
            }
        }
    } else if (pos == "FWD") {
        for (i = 1; i <= 3; i++) {
            if (document.getElementById("fwdname" + i).textContent == name) {
                document.getElementById("fwdcptimage" + i).style.display = "";
                break;
            }
        }
    }

    for (i = 1; i <= 11; i++) {
        document.getElementById("viceCaptain" + i).disabled = false;

        if (document.getElementById("viceCaptain" + i).textContent == captain) {
            document.getElementById("viceCaptain" + i).disabled = true;
        }
    }
    document.getElementById("saveTeam").disabled = false;

}

function selectVCaptain() {
    var vcaptain = document.getElementById("vcaptainSel").value;
    var name = vcaptain.split("-")[0].split(" ")[0];
    var pos = vcaptain.split("-")[1];
    document.getElementById("gkvcptimage").style.display = "none";
    for (i = 1; i <= 5; i++) {
        document.getElementById("defvcptimage" + i).style.display = "none";
        document.getElementById("midvcptimage" + i).style.display = "none";
        if (i <= 3)
            document.getElementById("fwdvcptimage" + i).style.display = "none";
    }
    for (i = 1; i <= 11; i++) {
        if (document.getElementById("captain" + i).textContent == vcaptain) {
            document.getElementById("captain" + i).disabled = false;
        }
    }
    if (pos == 'GK') {
        document.getElementById("gkvcptimage").style.display = "";
    } else if (pos == "DEF") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("defname" + i).textContent == name) {
                document.getElementById("defvcptimage" + i).style.display = "";
                break;
            }
        }
    } else if (pos == "MID") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("midname" + i).textContent == name) {
                document.getElementById("midvcptimage" + i).style.display = "";
                break;
            }
        }
    } else if (pos == "FWD") {
        for (i = 1; i <= 3; i++) {
            if (document.getElementById("fwdname" + i).textContent == name) {
                document.getElementById("fwdvcptimage" + i).style.display = "";
                break;
            }
        }
    }

    for (i = 1; i <= 11; i++) {
        document.getElementById("captain" + i).disabled = false;

        if (document.getElementById("captain" + i).textContent == vcaptain) {
            document.getElementById("captain" + i).disabled = true;
        }
    }
    document.getElementById("saveTeam").disabled = false;

}