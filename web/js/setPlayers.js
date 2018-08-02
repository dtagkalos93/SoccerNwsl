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
            document.getElementById("defcptimage" + i).style.paddingLeft = "65.5%";
            document.getElementById("defcptimage" + i).style.marginTop = "-18.7%";
            document.getElementById("defvcptimage" + i).style.paddingLeft = "65.5%";
            document.getElementById("defvcptimage" + i).style.marginTop = "-18.7%";
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
        document.getElementById("selDEF1").style.marginRight = "32px";
        document.getElementById("selDEF2").className = "";
        document.getElementById("selDEF2").className = "col-md-2";
        document.getElementById("selDEF2").style.marginRight = "32px";
        document.getElementById("selDEF3").className = "";
        document.getElementById("selDEF3").className = "col-md-2";
        document.getElementById("selDEF3").style.marginRight = "32px";
        document.getElementById("selDEF4").className = "";
        document.getElementById("selDEF4").className = "col-md-2";
        document.getElementById("selDEF4").style.marginRight = "32px";
        document.getElementById("selDEF5").className = "";
        document.getElementById("selDEF5").className = "col-md-2";


        var defPlayer = def.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = defPlayer[j].split("-")[0];
            var team = defPlayer[j].split("-")[1];
            document.getElementById("defname" + i).innerHTML = name;
            document.getElementById("defcptimage" + i).style.paddingLeft = "82%";
            document.getElementById("defcptimage" + i).style.marginTop = "-30.6%";
            document.getElementById("defvcptimage" + i).style.paddingLeft = "82%";
            document.getElementById("defvcptimage" + i).style.marginTop = "-30.6%";
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
            document.getElementById("defcptimage" + i).style.paddingLeft = "61.3%";
            document.getElementById("defcptimage" + i).style.marginTop = "-12%";
            document.getElementById("defvcptimage" + i).style.paddingLeft = "61.3%";
            document.getElementById("defvcptimage" + i).style.marginTop = "-12%";
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
    console.log(mid + " !!!");
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

            document.getElementById("midcptimage" + i).style.paddingLeft = "65.5%";
            document.getElementById("midcptimage" + i).style.marginTop = "-18.7%";
            document.getElementById("midvcptimage" + i).style.paddingLeft = "65.5%";
            document.getElementById("midvcptimage" + i).style.marginTop = "-18.7%";
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
        document.getElementById("selMID1").style.marginRight = "32px";
        document.getElementById("selMID2").className = "";
        document.getElementById("selMID2").className = "col-md-2";
        document.getElementById("selMID2").style.marginRight = "32px";
        document.getElementById("selMID3").className = "";
        document.getElementById("selMID3").className = "col-md-2";
        document.getElementById("selMID3").style.marginRight = "32px";
        document.getElementById("selMID4").className = "";
        document.getElementById("selMID4").className = "col-md-2";
        document.getElementById("selMID4").style.marginRight = "32px";
        document.getElementById("selMID5").className = "";
        document.getElementById("selMID5").className = "col-md-2";
        var midPlayer = mid.split(",");
        var i = 1;

        for (j = 0; j < 5; j++) {

            var name = midPlayer[j].split("-")[0];
            var team = midPlayer[j].split("-")[1];
            document.getElementById("midname" + i).innerHTML = name;

            document.getElementById("midcptimage" + i).style.paddingLeft = "82%";
            document.getElementById("midcptimage" + i).style.marginTop = "-30.7%";
            document.getElementById("midvcptimage" + i).style.paddingLeft = "82%";
            document.getElementById("midvcptimage" + i).style.marginTop = "-30.7%";
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
            document.getElementById("midcptimage" + i).style.paddingLeft = "61.3%";
            document.getElementById("midcptimage" + i).style.marginTop = "-13.5%";
            document.getElementById("midvcptimage" + i).style.paddingLeft = "61.3%";
            document.getElementById("midvcptimage" + i).style.marginTop = "-13.5%";
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
            document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.9%";
            document.getElementById("fwdcptimage" + i).style.marginTop = "-12.1%";
            document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.9%";
            document.getElementById("fwdvcptimage" + i).style.marginTop = "-12.1%";
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
            document.getElementById("fwdcptimage" + i).style.marginTop = "-34px";
            document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
            document.getElementById("fwdvcptimage" + i).style.marginTop = "-34px";
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


function points(gk, def, mid, fwd, ben, captain) {
    var cpt = captain.split("-")[0];

    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            document.getElementById("oppgk").innerHTML = jsonResponse["gk"][0];
            var defTeam = jsonResponse["def"];
            if (defTeam.length == 4) {
                var j = 0;
                for (i = 1; i <= 5; i++) {
                    if (i == 3) {
                        i = 4;
                    }
                    document.getElementById("oppdef" + i).innerHTML = defTeam[j];
                    j = eval(j) + 1;
                }
            } else if (defTeam.length == 5) {
                var j = 0;
                for (i = 1; i <= 5; i++) {

                    document.getElementById("oppdef" + i).innerHTML = defTeam[j];
                    j = eval(j) + 1;
                }
            } else if (defTeam.length == 3) {
                var j = 0;
                for (i = 2; i <= 4; i++) {
                    document.getElementById("oppdef" + i).innerHTML = defTeam[j];
                    j = eval(j) + 1;
                }
            }
            var midTeam = jsonResponse["mid"];
            if (midTeam.length == 4) {
                var j = 0;
                for (i = 1; i <= 5; i++) {
                    if (i == 3) {
                        i = 4;
                    }
                    document.getElementById("oppmid" + i).innerHTML = midTeam[j];
                    j = eval(j) + 1;
                }
            } else if (midTeam.length == 5) {
                var j = 0;
                for (i = 1; i <= 5; i++) {

                    document.getElementById("oppmid" + i).innerHTML = midTeam[j];
                    j = eval(j) + 1;
                }
            } else if (midTeam.length == 3) {
                var j = 0;
                for (i = 2; i <= 4; i++) {
                    document.getElementById("oppmid" + i).innerHTML = midTeam[j];
                    j = eval(j) + 1;
                }
            }
            var fwdTeam = jsonResponse["fwd"];
            if (fwdTeam.length == 2) {
                var j = 0;
                for (i = 1; i <= 3; i++) {
                    if (i == 2)
                        i = 3;
                    document.getElementById("oppfwd" + i).innerHTML = fwdTeam[j];
                    j = eval(j) + 1;
                }
            } else if (fwdTeam.length == 1) {
                document.getElementById("oppfwd2").innerHTML = fwdTeam[0];
            } else if (fwdTeam.length == 3) {
                var j = 0;
                for (i = 1; i <= 3; i++) {
                    document.getElementById("oppfwd" + i).innerHTML = fwdTeam[j];
                    j = eval(j) + 1;
                }
            }
            var benTeam = jsonResponse["ben"];
            var j = 0;
            for (i = 1; i <= 4; i++) {
                document.getElementById("oppben" + i).innerHTML = benTeam[j];
                j = eval(j) + 1;
            }



        }
    };
    xhttp.open("GET", "findPoint?gk=" + gk + "&def=" + def + "&mid=" + mid + "&fwd=" + fwd + "&ben=" + ben + "&cpt=" + cpt, true);
    xhttp.send();
}

function captains(cpt, vice) {
    var nameCpt = cpt.split("-")[0];
    var posCpt = cpt.split("-")[1];
    var nameviceCpt = vice.split("-")[0];
    var posviceCpt = vice.split("-")[1];
    if (posCpt == "GK") {
        document.getElementById("gkcptimage").style.display = "";

    } else if (posCpt == "DEF") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("defname" + i).textContent == nameCpt) {
                document.getElementById("defcptimage" + i).style.display = "";

                break;
            }
        }
    } else if (posCpt == "MID") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("midname" + i).textContent == nameCpt) {
                document.getElementById("midcptimage" + i).style.display = "";

                break;
            }
        }
    } else if (posCpt == "FWD") {
        for (i = 1; i <= 3; i++) {
            if (document.getElementById("fwdname" + i).textContent == nameCpt) {
                document.getElementById("fwdcptimage" + i).style.display = "";

                break;
            }
        }
    }


    if (posviceCpt == "GK") {
        document.getElementById("gkvcptimage").style.display = "";

    } else if (posviceCpt == "DEF") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("defname" + i).textContent == nameviceCpt) {
                document.getElementById("defvcptimage" + i).style.display = "";

                break;
            }
        }
    } else if (posviceCpt == "MID") {
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("midname" + i).textContent == nameviceCpt) {
                document.getElementById("midvcptimage" + i).style.display = "";

                break;
            }
        }
    } else if (posviceCpt == "FWD") {
        for (i = 1; i <= 3; i++) {
            if (document.getElementById("fwdname" + i).textContent == nameviceCpt) {
                document.getElementById("fwdvcptimage" + i).style.display = "";

                break;
            }
        }
    }
}

function setPlayers(gk, def, mid, fwd) {
    var gkPlayers = gk.split(",");
    var pl = 1;
    for (i = 0; i < gkPlayers.length; i++) {
        var gkName = gkPlayers[i].split("-")[0];
        var gkTeam = gkPlayers[i].split("-")[1];
        document.getElementById("namegk" + pl).innerHTML = gkName;
        document.getElementById("team" + pl).innerHTML = gkTeam;

        if (gkTeam == 'BOS') {
            var image = "breakersgk.png";
        } else if (gkTeam == 'CHI') {
            var image = "chicagogk.png";
        } else if (gkTeam == 'HOU') {
            var image = "houstongk.png";
        } else if (gkTeam == 'NC') {
            var image = "couragegk.png";
        } else if (gkTeam == 'ORL') {
            var image = "orlandogk.png";
        } else if (gkTeam == 'POR') {
            var image = "thornsgk.png";
        } else if (gkTeam == 'SEA') {
            var image = "seattlegk.png";
        } else if (gkTeam == 'NJ') {
            var image = "skybluegk.png";
        } else if (gkTeam == 'WAS') {
            var image = "spiritgk.png";
        } else if (gkTeam == 'UTA') {
            var image = "kansasgk.png";
        }
        document.getElementById("imagegk" + pl).src = "img/" + image;
        pl = eval(pl) + 1;
    }
    var defPlayers = def.split(",");

    pl = 1;
    for (i = 0; i < defPlayers.length - 1; i++) {
        var defName = defPlayers[i].split("-")[0];
        var defTeam = defPlayers[i].split("-")[1];
        document.getElementById("defname" + pl).innerHTML = defName;
        document.getElementById("team" + (pl + 2)).innerHTML = defTeam;


        if (defTeam == 'BOS') {
            var image = "breakers1.png";
        } else if (defTeam == 'CHI') {
            var image = "stars1.png";
        } else if (defTeam == 'HOU') {
            var image = "dash1.png";
        } else if (defTeam == 'NC') {
            var image = "courage.png";
        } else if (defTeam == 'ORL') {
            var image = "pride1.png";
        } else if (defTeam == 'POR') {
            var image = "thorns1.png";
        } else if (defTeam == 'SEA') {
            var image = "reign1.png";
        } else if (defTeam == 'NJ') {
            var image = "skyblue1.png";
        } else if (defTeam == 'WAS') {
            var image = "spirit1.png";
        } else if (defTeam == 'UTA') {
            var image = "utahjr.png";
        }
        document.getElementById("defimage" + pl).src = "img/" + image;
        pl = eval(pl) + 1;
    }

    var midPlayers = mid.split(",");

    pl = 1;
    for (i = 0; i < midPlayers.length - 1; i++) {
        var midName = midPlayers[i].split("-")[0];
        var midTeam = midPlayers[i].split("-")[1];
        document.getElementById("midname" + pl).innerHTML = midName;
        document.getElementById("team" + (pl + 7)).innerHTML = midTeam;


        if (midTeam == 'BOS') {
            var image = "breakers1.png";
        } else if (midTeam == 'CHI') {
            var image = "stars1.png";
        } else if (midTeam == 'HOU') {
            var image = "dash1.png";
        } else if (midTeam == 'NC') {
            var image = "courage.png";
        } else if (midTeam == 'ORL') {
            var image = "pride1.png";
        } else if (midTeam == 'POR') {
            var image = "thorns1.png";
        } else if (midTeam == 'SEA') {
            var image = "reign1.png";
        } else if (midTeam == 'NJ') {
            var image = "skyblue1.png";
        } else if (midTeam == 'WAS') {
            var image = "spirit1.png";
        } else if (midTeam == 'UTA') {
            var image = "utahjr.png";
        }
        document.getElementById("midimage" + pl).src = "img/" + image;
        pl = eval(pl) + 1;
    }

    var fwdPlayers = fwd.split(",");

    pl = 1;
    for (i = 0; i < fwdPlayers.length - 1; i++) {
        var fwdName = fwdPlayers[i].split("-")[0];
        var fwdTeam = fwdPlayers[i].split("-")[1];
        document.getElementById("fwdname" + pl).innerHTML = fwdName;
        document.getElementById("team" + (pl + 12)).innerHTML = fwdTeam;

        if (fwdTeam == 'BOS') {
            var image = "breakers1.png";
        } else if (fwdTeam == 'CHI') {
            var image = "stars1.png";
        } else if (fwdTeam == 'HOU') {
            var image = "dash1.png";
        } else if (fwdTeam == 'NC') {
            var image = "courage.png";
        } else if (fwdTeam == 'ORL') {
            var image = "pride1.png";
        } else if (fwdTeam == 'POR') {
            var image = "thorns1.png";
        } else if (fwdTeam == 'SEA') {
            var image = "reign1.png";
        } else if (fwdTeam == 'NJ') {
            var image = "skyblue1.png";
        } else if (fwdTeam == 'WAS') {
            var image = "spirit1.png";
        } else if (fwdTeam == 'UTA') {
            var image = "utahjr.png";
        }
        document.getElementById("fwdimage" + pl).src = "img/" + image;
        pl = eval(pl) + 1;
    }

    setTeamNo();
    checkNoDisableSide();
    for (k = 1; k <= 2; k++) {
        for (j = 1; j <= 2; j++) {
            if (document.getElementById("gkname" + j).textContent == document.getElementById("namegk" + k).textContent) {

                document.getElementById("gk" + j).style.pointerEvents = 'none';
                document.getElementById("gk" + j).style.opacity = '0.6';
            }
        }
    }

    for (k = 1; k <= 5; k++) {
        for (j = 1; j <= 6; j++) {
            if (document.getElementById("namedef" + j).textContent == document.getElementById("defname" + k).textContent) {
                document.getElementById("def" + j).style.pointerEvents = 'none';
                document.getElementById("def" + j).style.opacity = '0.6';
            }
        }
    }
    for (k = 1; k <= 5; k++) {
        for (j = 1; j <= 6; j++) {
            if (document.getElementById("namemid" + j).textContent == document.getElementById("midname" + k).textContent) {
                document.getElementById("mid" + j).style.pointerEvents = 'none';
                document.getElementById("mid" + j).style.opacity = '0.6';
            }
        }
    }
    for (k = 1; k <= 3; k++) {
        for (j = 1; j <= 6; j++) {
            if (document.getElementById("namefwd" + j).textContent == document.getElementById("fwdname" + k).textContent) {
                document.getElementById("fwd" + j).style.pointerEvents = 'none';
                document.getElementById("fwd" + j).style.opacity = '0.6';
            }
        }
    }

}

function setPrice(gk, def, mid, fwd) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            var gkTeam = jsonResponse["gk"];
            pl = 1;
            for (i = 0; i < gkTeam.length; i++) {
                document.getElementById("pricegk" + pl).innerHTML = "$" + gkTeam[i] + "m";
                pl = eval(pl) + 1;
            }

            var defTeam = jsonResponse["def"];

            pl = 1;
            for (i = 0; i < defTeam.length; i++) {
                document.getElementById("defprice" + pl).innerHTML = "$" + defTeam[i] + "m";
                pl = eval(pl) + 1;
            }

            var midTeam = jsonResponse["mid"];

            pl = 1;
            for (i = 0; i < midTeam.length; i++) {
                document.getElementById("midprice" + pl).innerHTML = "$" + midTeam[i] + "m";
                pl = eval(pl) + 1;
            }

            var fwdTeam = jsonResponse["fwd"];

            pl = 1;
            for (i = 0; i < fwdTeam.length; i++) {
                document.getElementById("fwdprice" + pl).innerHTML = "$" + fwdTeam[i] + "m";
                pl = eval(pl) + 1;
            }



        }
    };
    xhttp.open("GET", "findPrice?gk=" + gk + "&def=" + def + "&mid=" + mid + "&fwd=" + fwd, true);
    xhttp.send();
}


function setTeamNo() {
    var chiNO = 0;
    var houNO = 0;
    var ncNO = 0;
    var orlNO = 0;
    var porNO = 0;
    var seaNO = 0;
    var njNO = 0;
    var utaNO = 0;
    var wasNO = 0;

    for (i = 1; i <= 15; i++) {
        if (document.getElementById("team" + i).textContent == "CHI") {
            chiNO = eval(chiNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "HOU") {
            houNO = eval(houNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "NC") {
            ncNO = eval(ncNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "ORL") {
            orlNO = eval(orlNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "POR") {
            porNO = eval(porNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "SEA") {
            seaNO = eval(seaNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "NJ") {
            njNO = eval(njNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "UTA") {
            utaNO = eval(utaNO) + 1;
        }
        if (document.getElementById("team" + i).textContent == "WAS") {
            wasNO = eval(wasNO) + 1;
        }
    }
    console.log("!!!" + utaNO);
    sessionStorage.clear();
    sessionStorage.setItem("chiNO", chiNO);
    sessionStorage.setItem("houNO", houNO);
    sessionStorage.setItem("ncNO", ncNO);
    sessionStorage.setItem("orlNO", orlNO);
    sessionStorage.setItem("porNO", porNO);
    sessionStorage.setItem("seaNO", seaNO);
    sessionStorage.setItem("njNO", njNO);
    sessionStorage.setItem("utaNO", utaNO);
    sessionStorage.setItem("wasNO", wasNO);
}


function checkNoDisableSide() {
    if (sessionStorage.getItem("chiNO") == "4") {
        document.getElementById("chi").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "CHI") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "CHI") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "CHI") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "CHI") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("chi").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "CHI") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "CHI") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "CHI") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "CHI") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }

    if (sessionStorage.getItem("houNO") == "4") {
        document.getElementById("hou").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "HOU") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "HOU") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "HOU") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "HOU") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("hou").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "HOU") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "HOU") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "HOU") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "HOU") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }



    if (sessionStorage.getItem("ncNO") == "4") {
        document.getElementById("nc").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "NC") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "NC") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "NC") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "NC") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("nc").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "NC") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "NC") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "NC") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "NC") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }

    if (sessionStorage.getItem("orlNO") == "4") {
        document.getElementById("orl").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "ORL") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "ORL") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "ORL") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "ORL") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("orl").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "ORL") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "ORL") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "ORL") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "ORL") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }

    if (sessionStorage.getItem("porNO") == "4") {
        document.getElementById("por").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "POR") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "POR") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "POR") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "POR") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("por").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "POR") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "POR") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "POR") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "POR") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }

    if (sessionStorage.getItem("seaNO") == "4") {
        document.getElementById("sea").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "SEA") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "SEA") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "SEA") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "SEA") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("sea").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "SEA") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "SEA") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "SEA") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "SEA") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }

    if (sessionStorage.getItem("njNO") == "4") {
        document.getElementById("nj").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "NJ") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "NJ") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "NJ") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "NJ") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("nj").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "NJ") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "NJ") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "NJ") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "NJ") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }

    if (sessionStorage.getItem("utaNO") == "4") {
        document.getElementById("uta").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "UTA") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "UTA") {
                console.log("here uta!" + sessionStorage.getItem("utaNO"));

                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "UTA") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i.textContent) == "UTA") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("uta").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "UTA") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "UTA") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "UTA") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "UTA") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }


    if (sessionStorage.getItem("wasNO") == "4") {
        document.getElementById("was").disabled = true;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "WAS") {
                document.getElementById("gk" + i).style.pointerEvents = 'none';
                document.getElementById("gk" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamdef" + i).textContent == "WAS") {
                document.getElementById("def" + i).style.pointerEvents = 'none';
                document.getElementById("def" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teammid" + i).textContent == "WAS") {
                document.getElementById("mid" + i).style.pointerEvents = 'none';
                document.getElementById("mid" + i).style.opacity = '0.6';
            }
            if (document.getElementById("teamfwd" + i).textContent == "WAS") {
                document.getElementById("fwd" + i).style.pointerEvents = 'none';
                document.getElementById("fwd" + i).style.opacity = '0.6';
            }

        }
    } else {
        document.getElementById("was").disabled = false;
        for (i = 1; i <= 20; i++) {
            if (document.getElementById("gkteam" + i).textContent == "WAS") {
                document.getElementById("gk" + i).style.pointerEvents = 'auto';
                document.getElementById("gk" + i).style.opacity = '1';
            }
            if (document.getElementById("teamdef" + i).textContent == "WAS") {
                document.getElementById("def" + i).style.pointerEvents = 'auto';
                document.getElementById("def" + i).style.opacity = '1';
            }
            if (document.getElementById("teammid" + i).textContent == "WAS") {
                document.getElementById("mid" + i).style.pointerEvents = 'auto';
                document.getElementById("mid" + i).style.opacity = '1';
            }
            if (document.getElementById("teamfwd" + i).textContent == "WAS") {
                document.getElementById("fwd" + i).style.pointerEvents = 'auto';
                document.getElementById("fwd" + i).style.opacity = '1';
            }

        }
    }
}


function setCaptain(captain, vice) {
    var cptArray = captain.split("-");
    var viceArray = vice.split("-");
    if (cptArray[1] == 'GK')
        document.getElementById("gkcptimage").style.display = "";
    if (viceArray[1] == 'GK')
        document.getElementById("gkvcptimage").style.display = "";

    if (cptArray[1] == 'DEF') {
        for (i = 1; i <= 5; i++) {
            if (cptArray[0] == document.getElementById("defname" + i).textContent)
                document.getElementById("defcptimage" + i).style.display = "";
        }
    }

    if (cptArray[1] == 'MID') {
        for (i = 1; i <= 5; i++) {
            if (cptArray[0] == document.getElementById("midname" + i).textContent)
                document.getElementById("midcptimage" + i).style.display = "";
        }
    }

    if (cptArray[1] == 'FWD') {
        for (i = 1; i <= 3; i++) {
            if (cptArray[0] == document.getElementById("fwdname" + i).textContent)
                document.getElementById("fwdcptimage" + i).style.display = "";
        }
    }


    if (viceArray[1] == 'DEF') {
        for (i = 1; i <= 5; i++) {
            if (viceArray[0] == document.getElementById("defname" + i).textContent)
                document.getElementById("defvcptimage" + i).style.display = "";
        }
    }

    if (viceArray[1] == 'MID') {
        for (i = 1; i <= 5; i++) {
            if (viceArray[0] == document.getElementById("midname" + i).textContent)
                document.getElementById("midvcptimage" + i).style.display = "";
        }
    }

    if (viceArray[1] == 'FWD') {
        for (i = 1; i <= 3; i++) {
            if (viceArray[0] == document.getElementById("fwdname" + i).textContent)
                document.getElementById("fwdvcptimage" + i).style.display = "";
        }
    }

}


