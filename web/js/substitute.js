//Pre Substitute
function changePlayer(playerID) {
    if (playerID == 'gkname') {
        document.getElementById("selGK").setAttribute('onclick', "openModalCancelGK('1')");
        document.getElementById("ben1").setAttribute('onclick', "openModalSubstitute('selGK','ben1')");
        for (i = 1; i <= 5; i++) {
            document.getElementById("selDEF" + i).style.opacity = "0.5";
            document.getElementById("selDEF" + i).setAttribute('onClick', "openModalInfo('defname" + i + "')");
            document.getElementById("selMID" + i).style.opacity = "0.5";
            document.getElementById("selMID" + i).setAttribute('onClick', "openModalInfo('midname" + i + "')");
        }
        for (i = 1; i <= 3; i++) {
            document.getElementById("selFWD" + i).style.opacity = "0.5";
            document.getElementById("selFWD" + i).setAttribute('onClick', "openModalInfo('fwdname" + i + "')");

        }
        for (i = 2; i <= 4; i++) {
            document.getElementById("ben" + i).style.opacity = "0.5";
            document.getElementById("ben" + i).setAttribute('onClick', "openModalInfo('benname" + i + "')");

        }
    } else if (playerID == 'ben1') {
        document.getElementById("ben1").setAttribute('onclick', "openModalcancelBEN('1')");
        document.getElementById("selGK").setAttribute('onclick', "openModalSubstitute('ben1','selGK')");
        for (i = 1; i <= 5; i++) {
            document.getElementById("selDEF" + i).style.opacity = "0.5";
            document.getElementById("selDEF" + i).setAttribute('onClick', "openModalInfo('defname" + i + "')");
            document.getElementById("selMID" + i).style.opacity = "0.5";
            document.getElementById("selMID" + i).setAttribute('onClick', "openModalInfo('midname" + i + "')");
        }
        for (i = 1; i <= 3; i++) {
            document.getElementById("selFWD" + i).style.opacity = "0.5";
            document.getElementById("selFWD" + i).setAttribute('onClick', "openModalInfo('fwdname" + i + "')");

        }
        for (i = 2; i <= 4; i++) {
            document.getElementById("ben" + i).style.opacity = "0.5";
            document.getElementById("ben" + i).setAttribute('onClick', "openModalInfo('benname" + i + "')");

        }
    } else if (playerID == 'defname1' || playerID == 'defname2' || playerID == 'defname3'
            || playerID == 'defname4' || playerID == 'defname5') {
        document.getElementById("selGK").style.opacity = "0.5";
        document.getElementById("selGK").setAttribute('onClick', "openModalInfo('gkname')");
        document.getElementById("ben1").style.opacity = "0.5";
        document.getElementById("ben1").setAttribute('onClick', "openModalInfo('benname1')");
        for (i = 1; i <= 5; i++) {
            document.getElementById("selMID" + i).style.opacity = "0.5";
            document.getElementById("selMID" + i).setAttribute('onClick', "openModalInfo('midname" + i + "')");
        }
        for (i = 1; i <= 3; i++) {
            document.getElementById("selFWD" + i).style.opacity = "0.5";
            document.getElementById("selFWD" + i).setAttribute('onClick', "openModalInfo('fwdname" + i + "')");
        }
        var sum = 0;
        for (i = 2; i <= 4; i++) {
            if (document.getElementById("benpos" + i).textContent == 'Defence') {
                sum = eval(sum) + 1;
            }

        }
        var no = playerID.split('defname')[1];
        document.getElementById("selDEF" + no).setAttribute('onclick', "openModalCancelDEF('" + no + "')");
        for (i = 1; i <= 5; i++) {
            if (i == no && i != 5) {
                i = eval(i) + 1;
            } else if (i == no && i == 5) {
                break;
            }
            document.getElementById("selDEF" + i).style.opacity = "0.5";
            document.getElementById("selDEF" + i).setAttribute('onClick', "openModalInfo('defname" + i + "')");
        }
        if (sum == 2) {
            for (i = 2; i <= 4; i++) {
                if (document.getElementById("benpos" + i).textContent != 'Defence') {
                    document.getElementById("ben" + i).style.opacity = "0.5";
                    document.getElementById("ben" + i).setAttribute('onClick', "openModalInfo('benname" + i + "')");
                } else {
                    document.getElementById("ben" + i).setAttribute('onClick', "openModalSubstitute('selDEF" + no + "','ben" + i + "')");
                }
            }
        } else {
            for (i = 2; i <= 4; i++) {
                document.getElementById("ben" + i).setAttribute('onClick', "openModalSubstitute('selDEF" + no + "','ben" + i + "')");
            }
        }


    } else if (playerID == 'midname1' || playerID == 'midname2' || playerID == 'midname3'
            || playerID == 'midname4' || playerID == 'midname5') {
        document.getElementById("selGK").style.opacity = "0.5";
        document.getElementById("selGK").setAttribute('onClick', "openModalInfo('gkname')");
        document.getElementById("ben1").style.opacity = "0.5";
        document.getElementById("ben1").setAttribute('onClick', "openModalInfo('benname1')");
        for (i = 1; i <= 5; i++) {
            document.getElementById("selDEF" + i).style.opacity = "0.5";
            document.getElementById("selDEF" + i).setAttribute('onClick', "openModalInfo('defname" + i + "')");
        }
        for (i = 1; i <= 3; i++) {
            document.getElementById("selFWD" + i).style.opacity = "0.5";
            document.getElementById("selFWD" + i).setAttribute('onClick', "openModalInfo('fwdname" + i + "')");
        }
        var sum = 0;
        for (i = 2; i <= 4; i++) {
            if (document.getElementById("benpos" + i).textContent == 'Midfielder') {
                sum = eval(sum) + 1;
            }

        }
        var no = playerID.split('midname')[1];
        document.getElementById("selMID" + no).setAttribute('onclick', "openModalCancelMID('" + no + "')");
        for (i = 1; i <= 5; i++) {
            if (i == no && i != 5) {
                i = eval(i) + 1;
            } else if (i == no && i == 5) {
                break;
            }
            document.getElementById("selMID" + i).style.opacity = "0.5";
            document.getElementById("selMID" + i).setAttribute('onClick', "openModalInfo('midname" + i + "')");
        }
        if (sum == 2) {
            for (i = 2; i <= 4; i++) {
                if (document.getElementById("benpos" + i).textContent != 'Midfielder') {
                    document.getElementById("ben" + i).style.opacity = "0.5";
                    document.getElementById("ben" + i).setAttribute('onClick', "openModalInfo('benname" + i + "')");
                } else {
                    document.getElementById("ben" + i).setAttribute('onClick', "openModalSubstitute('selMID" + no + "','ben" + i + "')");
                }
            }
        } else {
            for (i = 2; i <= 4; i++) {
                document.getElementById("ben" + i).setAttribute('onClick', "openModalSubstitute('selMID" + no + "','ben" + i + "')");
            }
        }



    } else if (playerID == 'fwdname1' || playerID == 'fwdname2' || playerID == 'fwdname3') {
        document.getElementById("selGK").style.opacity = "0.5";
        document.getElementById("selGK").setAttribute('onClick', "openModalInfo('gkname')");
        document.getElementById("ben1").style.opacity = "0.5";
        document.getElementById("ben1").setAttribute('onClick', "openModalInfo('benname1')");
        for (i = 1; i <= 5; i++) {
            document.getElementById("selDEF" + i).style.opacity = "0.5";
            document.getElementById("selDEF" + i).setAttribute('onClick', "openModalInfo('defname" + i + "')");
            document.getElementById("selMID" + i).style.opacity = "0.5";
            document.getElementById("selMID" + i).setAttribute('onClick', "openModalInfo('midname" + i + "')");
        }
        var sum = 0;
        for (i = 2; i <= 4; i++) {
            if (document.getElementById("benpos" + i).textContent == 'Forward') {
                sum = eval(sum) + 1;
            }

        }
        var no = playerID.split('fwdname')[1];
        document.getElementById("selFWD" + no).setAttribute('onclick', "openModalCancelFWD('" + no + "')");
        console.log(document.getElementById("selFWD" + no));
        for (i = 1; i <= 3; i++) {
            if (i == no && i != 3) {
                i = eval(i) + 1;

            } else if (i == no && i == 3)
                break;

            document.getElementById("selFWD" + i).style.opacity = "0.5";
            document.getElementById("selFWD" + i).setAttribute('onClick', "openModalInfo('fwdname" + i + "')");
        }
        if (sum == 2) {
            for (i = 2; i <= 4; i++) {
                if (document.getElementById("benpos" + i).textContent != 'Forward') {
                    document.getElementById("ben" + i).style.opacity = "0.5";
                    document.getElementById("ben" + i).setAttribute('onClick', "openModalInfo('benname" + i + "')");
                } else {
                    document.getElementById("ben" + i).setAttribute('onClick', "openModalSubstitute('selFWD" + no + "','ben" + i + "')");
                }
            }
        } else {
            for (i = 2; i <= 4; i++) {
                document.getElementById("ben" + i).setAttribute('onClick', "openModalSubstitute('selFWD" + no + "','ben" + i + "')");
            }
        }
    } else if (playerID == 'ben2' || playerID == 'ben3' || playerID == 'ben4') {
        console.log("Here!");
        document.getElementById("selGK").style.opacity = "0.5";
        document.getElementById("selGK").setAttribute('onClick', "openModalInfo('gkname')");
        document.getElementById("ben1").style.opacity = "0.5";
        document.getElementById("ben1").setAttribute('onClick', "openModalInfo('benname1')");
        var sum = 0;
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("selDEF" + i).style.display == 'none') {
                sum = eval(sum) + 1;
            }

        }
        if (sum == 2) {
            for (i = 1; i <= 5; i++) {
                document.getElementById("selDEF" + i).style.opacity = "0.5";
                document.getElementById("selDEF" + i).setAttribute('onClick', "openModalInfo('defname" + i + "')");
            }
        } else {
            for (i = 1; i <= 5; i++) {
                document.getElementById("selDEF" + i).setAttribute('onClick', "openModalSubstitute('" + playerID + "','selDEF" + i + "')");

            }
        }


        sum = 0;
        for (i = 1; i <= 5; i++) {
            if (document.getElementById("selMID" + i).style.display == 'none') {
                sum = eval(sum) + 1;
            }

        }
        if (sum == 2) {
            for (i = 1; i <= 5; i++) {
                document.getElementById("selMID" + i).style.opacity = "0.5";
                document.getElementById("selMID" + i).setAttribute('onClick', "openModalInfo('midname" + i + "')");
            }
        } else {
            for (i = 1; i <= 5; i++) {
                document.getElementById("selMID" + i).setAttribute('onClick', "openModalSubstitute('" + playerID + "','selMID" + i + "')");

            }
        }

        sum = 0;
        for (i = 1; i <= 3; i++) {
            if (document.getElementById("selFWD" + i).style.display == 'none') {
                sum = eval(sum) + 1;
            }

        }
        if (sum == 2) {
            for (i = 1; i <= 3; i++) {
                document.getElementById("selFWD" + i).style.opacity = "0.5";
                document.getElementById("selFWD" + i).setAttribute('onClick', "openModalInfo('fwdname" + i + "')");
            }
        } else {
            for (i = 1; i <= 3; i++) {
                document.getElementById("selFWD" + i).setAttribute('onClick', "openModalSubstitute('" + playerID + "','selFWD" + i + "')");

            }
        }
        var no = playerID.split('ben')[1];
        for (i = 2; i <= 4; i++) {
            if (i != no)
                document.getElementById("ben" + i).setAttribute('onClick', "openModalSubstitute('" + playerID + "','ben" + i + "')");

        }
        document.getElementById(playerID).setAttribute('onClick', "openModalcancelBEN('" + no + "')");
    }
    $('#players').modal('hide');

}


///Cancel Substitute
function cancelPlayer() {
    document.getElementById("selGK").style.opacity = "1.0";

    document.getElementById("selGK").setAttribute('onclick', "openModalGK('1')");
    for (i = 1; i <= 5; i++) {
        document.getElementById("selDEF" + i).style.opacity = "1.0";
        document.getElementById("selDEF" + i).setAttribute('onClick', "openModalDEF('" + i + "')");
        document.getElementById("selMID" + i).style.opacity = "1.0";
        document.getElementById("selMID" + i).setAttribute('onClick', "openModalMID('" + i + "')");
    }
    for (i = 1; i <= 3; i++) {
        document.getElementById("selFWD" + i).style.opacity = "1.0";
        document.getElementById("selFWD" + i).setAttribute('onClick', "openModalFWD('" + i + "')");

    }
    for (i = 1; i <= 4; i++) {
        document.getElementById("ben" + i).style.opacity = "1.0";
        document.getElementById("ben" + i).setAttribute('onClick', "openModalBEN('" + i + "')");

    }



    $('#playersCancel').modal('hide');
}


function finalChange(playersIDsub, playersIDafter) {
    if (playersIDsub == "selGK" || playersIDsub == "ben1") {
        console.log('GoalKeeper!');

        var tempName = document.getElementById("gkname").textContent;
        var imageName = document.getElementById("gkimage").src.split("/")[5];
        var opponent = document.getElementById("oppgk").textContent;
        var name = document.getElementById("gkname" + playersIDsub.split('selGK')[1]).textContent;
        document.getElementById("gkname").innerHTML = document.getElementById("benname1").textContent;
        document.getElementById("oppgk").innerHTML = document.getElementById("oppben1").textContent;
        document.getElementById("gkimage").src = "img/" + document.getElementById("benimage1").src.split("/")[5];
        document.getElementById("benname1").innerHTML = tempName;
        document.getElementById("oppben1").innerHTML = opponent;
        document.getElementById("benimage1").src = "img/" + imageName;
        cancelPlayer();
        $('#players').modal('hide');

    } else if (playersIDsub.indexOf("selDEF") != -1) {

        var tempName = document.getElementById("defname" + playersIDsub.split('selDEF')[1]).textContent;
        var imageName = document.getElementById("defimage" + playersIDsub.split('selDEF')[1]).src.split("/")[5];
        var opponent = document.getElementById("oppdef" + playersIDsub.split('selDEF')[1]).textContent;
        var name = document.getElementById("defname" + playersIDsub.split('selDEF')[1]).textContent;
        if (document.getElementById("defcptimage" + playersIDsub.split('selDEF')[1]).style.display != "none") {
            var captain = "true";
            console.log(captain);
        }

        if (document.getElementById("defvcptimage" + playersIDsub.split('selDEF')[1]).style.display != "none")
            var vcaptain = "true";
        if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Defence") {
            document.getElementById("defname" + playersIDsub.split('selDEF')[1]).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppdef" + playersIDsub.split('selDEF')[1]).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("defimage" + playersIDsub.split('selDEF')[1]).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            cancelPlayer();
            $('#players').modal('hide');
        } else if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Midfielder") {
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selMID" + i).style.display == "none") {
                    document.getElementById("selMID" + i).style.display = "";
                    var no = i;
                    break;
                }
            }
            document.getElementById("selDEF" + playersIDsub.split('selDEF')[1]).style.display = "none";
            document.getElementById("midname" + no).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppmid" + no).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("midimage" + no).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            if (captain == "true")
                document.getElementById("midcptimage" + no).style.display = "";
            if (vcaptain == "true")
                document.getElementById("midvcptimage" + no).style.display = "";
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            document.getElementById("benpos" + playersIDafter.split('ben')[1]).innerHTML = 'Defence';
            var sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selDEF" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-3';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";

                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-4';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";

                }
            }
            sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selMID" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-3';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";

                }
            } else if (sum == 2) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-4';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";

                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-2';
                    document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midimage" + i).style.marginLeft = "27px";
                    if (i == 5)
                        break;
                    document.getElementById("selMID" + i).style.marginRight = "32.5px";

                }
            }
            cancelPlayer();
            $('#players').modal('hide');

        } else if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Forward") {
            for (i = 1; i <= 3; i++) {
                if (document.getElementById("selFWD" + i).style.display == "none") {
                    document.getElementById("selFWD" + i).style.display = "";
                    var no = i;
                    break;
                }
            }
            document.getElementById("selDEF" + playersIDsub.split('selDEF')[1]).style.display = "none";
            document.getElementById("fwdname" + no).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppfwd" + no).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("fwdimage" + no).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            if (captain == "true")
                document.getElementById("fwdcptimage" + no).style.display = "";
            if (vcaptain == "true")
                document.getElementById("fwdvcptimage" + no).style.display = "";
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            document.getElementById("benpos" + playersIDafter.split('ben')[1]).innerHTML = 'Defence';
            var sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selDEF" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-3';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";

                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-4';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";

                }
            }
            sum = 0;
            var next = 0;
            for (i = 1; i <= 3; i++) {
                if (document.getElementById("selFWD" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-6';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                    if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                        console.log("))))GERELF");
                        document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                        next = 1;
                    } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                        document.getElementById("selFWD" + i).style.paddingRight = "15%";
                        next = 1;
                    }

                }
            } else if (sum == 2) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-12';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                }
            } else {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-4';
                    document.getElementById("selFWD" + i).style.cssFloat = "";
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                }
            }
            cancelPlayer();
            $('#players').modal('hide');

        }
    } else if (playersIDsub.indexOf("selMID") != -1) {

        var tempName = document.getElementById("midname" + playersIDsub.split('selMID')[1]).textContent;
        var imageName = document.getElementById("midimage" + playersIDsub.split('selMID')[1]).src.split("/")[5];
        var opponent = document.getElementById("oppmid" + playersIDsub.split('selMID')[1]).textContent;
        var name = document.getElementById("midname" + playersIDsub.split('selMID')[1]).textContent;
        if (document.getElementById("midcptimage" + playersIDsub.split('selMID')[1]).style.display != "none")
            var captain = "true";
        if (document.getElementById("midvcptimage" + playersIDsub.split('selMID')[1]).style.display != "none")
            var vcaptain = "true";
        if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Midfielder") {
            console.log("here");
            document.getElementById("midname" + playersIDsub.split('selMID')[1]).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppmid" + playersIDsub.split('selMID')[1]).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("midimage" + playersIDsub.split('selMID')[1]).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            cancelPlayer();
            $('#players').modal('hide');
        } else if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Defence") {
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selDEF" + i).style.display == "none") {
                    document.getElementById("selDEF" + i).style.display = "";
                    var no = i;
                    break;
                }
            }
            document.getElementById("selMID" + playersIDsub.split('selMID')[1]).style.display = "none";
            document.getElementById("defname" + no).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppdef" + no).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("defimage" + no).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            if (captain == "true")
                document.getElementById("defcptimage" + no).style.display = "";
            if (vcaptain == "true")
                document.getElementById("defvcptimage" + no).style.display = "";
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            document.getElementById("benpos" + playersIDafter.split('ben')[1]).innerHTML = 'Midfielder';
            var sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selDEF" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-3';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";
                }
            } else if (sum == 2) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-4';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";

                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-2';
                    document.getElementById("defcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-35%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-35%";
                    document.getElementById("defimage" + i).style.marginLeft = "27px";
                    if (i == 5)
                        break;
                    document.getElementById("selDEF" + i).style.marginRight = "32.5px";

                }
            }
            sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selMID" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-3';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";

                }
            } else if (sum == 2) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-4';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";


                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-2';
                    document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midimage" + i).style.marginLeft = "27px";
                    if (i == 5)
                        break;
                    document.getElementById("selMID" + i).style.marginRight = "32.5px";

                }
            }
            cancelPlayer();
            $('#players').modal('hide');

        } else if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Forward") {
            for (i = 1; i <= 3; i++) {
                if (document.getElementById("selFWD" + i).style.display == "none") {
                    document.getElementById("selFWD" + i).style.display = "";
                    var no = i;
                    break;
                }
            }
            document.getElementById("selMID" + playersIDsub.split('selMID')[1]).style.display = "none";
            document.getElementById("fwdname" + no).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppfwd" + no).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("fwdimage" + no).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            if (captain == "true")
                document.getElementById("fwdcptimage" + no).style.display = "";
            if (vcaptain == "true")
                document.getElementById("fwdvcptimage" + no).style.display = "";
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;

            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            document.getElementById("benpos" + playersIDafter.split('ben')[1]).innerHTML = 'Midfielder';
            var sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selMID" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-3';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";

                }
            } else if (sum == 2) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-4';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";

                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-2';
                    document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midimage" + i).style.marginLeft = "27px";
                    if (i == 5)
                        break;
                    document.getElementById("selMID" + i).style.marginRight = "32.5px";

                }
            }
            sum = 0;
            var next = 0;
            for (i = 1; i <= 3; i++) {
                if (document.getElementById("selFWD" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-6';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                    if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                        document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                        next = 1;
                    } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                        document.getElementById("selFWD" + i).style.paddingRight = "15%";
                        next = 1;
                    }

                }
            } else if (sum == 2) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-12';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                }
            } else {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-4';
                    document.getElementById("selFWD" + i).style.cssFloat = "";
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                }
            }
            cancelPlayer();
            $('#players').modal('hide');
        }
    } else if (playersIDsub.indexOf("selFWD") != -1) {

        var tempName = document.getElementById("fwdname" + playersIDsub.split('selFWD')[1]).textContent;
        var imageName = document.getElementById("fwdimage" + playersIDsub.split('selFWD')[1]).src.split("/")[5];
        var opponent = document.getElementById("oppfwd" + playersIDsub.split('selFWD')[1]).textContent;
        var name = document.getElementById("fwdname" + playersIDsub.split('selFWD')[1]).textContent;
        if (document.getElementById("fwdcptimage" + playersIDsub.split('selFWD')[1]).style.display != "none")
            var captain = "true";
        if (document.getElementById("fwdvcptimage" + playersIDsub.split('selFWD')[1]).style.display != "none")
            var vcaptain = "true";
        if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Forward") {
            document.getElementById("fwdname" + playersIDsub.split('selFWD')[1]).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppfwd" + playersIDsub.split('selFWD')[1]).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("fwdimage" + playersIDsub.split('selFWD')[1]).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];

            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            cancelPlayer();
            $('#players').modal('hide');
        } else if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Defence") {
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selDEF" + i).style.display == "none") {
                    document.getElementById("selDEF" + i).style.display = "";
                    var no = i;
                    break;
                }
            }
            document.getElementById("selFWD" + playersIDsub.split('selFWD')[1]).style.display = "none";
            document.getElementById("defname" + no).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppdef" + no).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("defimage" + no).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            if (captain == "true")
                document.getElementById("defcptimage" + no).style.display = "";
            if (vcaptain == "true")
                document.getElementById("defvcptimage" + no).style.display = "";
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            document.getElementById("benpos" + playersIDafter.split('ben')[1]).innerHTML = 'Forward';
            var sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selDEF" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-3';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";
                }
            } else if (sum == 2) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-4';
                    document.getElementById("selDEF" + i).style.marginRight = "0px";
                    document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("defimage" + i).style.marginLeft = "";

                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selDEF" + i).className = " ";
                    document.getElementById("selDEF" + i).className = 'col-md-2';
                    document.getElementById("defcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("defcptimage" + i).style.marginTop = "-35%";
                    document.getElementById("defvcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("defvcptimage" + i).style.marginTop = "-35%";
                    document.getElementById("defimage" + i).style.marginLeft = "27px";
                    if (i == 5)
                        break;
                    document.getElementById("selDEF" + i).style.marginRight = "32.5px";

                }
            }
            sum = 0;
            var next = 0;
            for (i = 1; i <= 3; i++) {
                if (document.getElementById("selFWD" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-6';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                    if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                        document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                        next = 1;
                    } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                        document.getElementById("selFWD" + i).style.paddingRight = "15%";
                        next = 1;
                    }

                }
            } else if (sum == 2) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-12';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                }
            } else {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-4';
                    document.getElementById("selFWD" + i).style.cssFloat = "";
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                }
            }
            cancelPlayer();
            $('#players').modal('hide');

        } else if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Midfielder") {
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selMID" + i).style.display == "none") {
                    document.getElementById("selMID" + i).style.display = "";
                    var no = i;
                    break;
                }
            }
            document.getElementById("selFWD" + playersIDsub.split('selFWD')[1]).style.display = "none";
            document.getElementById("midname" + no).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppmid" + no).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("midimage" + no).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            if (captain == "true")
                document.getElementById("midcptimage" + no).style.display = "";
            if (vcaptain == "true")
                document.getElementById("midvcptimage" + no).style.display = "";
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
            document.getElementById("benpos" + playersIDafter.split('ben')[1]).innerHTML = 'Forward';
            var sum = 0;
            for (i = 1; i <= 5; i++) {
                if (document.getElementById("selMID" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-3';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";

                }
            } else if (sum == 2) {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-4';
                    document.getElementById("selMID" + i).style.marginRight = "0px";
                    document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                    document.getElementById("midimage" + i).style.marginLeft = "";

                }
            } else {
                for (i = 1; i <= 5; i++) {
                    document.getElementById("selMID" + i).className = " ";
                    document.getElementById("selMID" + i).className = 'col-md-2';
                    document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                    document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                    document.getElementById("midimage" + i).style.marginLeft = "27px";

                    if (i == 5)
                        break;
                    document.getElementById("selMID" + i).style.marginRight = "32.5px";

                }
            }
            sum = 0;
            var next = 0;
            for (i = 1; i <= 3; i++) {
                if (document.getElementById("selFWD" + i).style.display == "none") {
                    sum = eval(sum) + 1;
                }
            }
            if (sum == 1) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-6';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                    if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                        document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                        next = 1;
                    } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                        document.getElementById("selFWD" + i).style.paddingRight = "15%";
                        next = 1;
                    }

                }
            } else if (sum == 2) {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-12';
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                }
            } else {
                for (i = 1; i <= 3; i++) {
                    document.getElementById("selFWD" + i).className = " ";
                    document.getElementById("selFWD" + i).className = 'col-md-4';
                    document.getElementById("selFWD" + i).style.cssFloat = "";
                    document.getElementById("selFWD" + i).style.marginRight = "0px";
                    document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                    document.getElementById("selFWD" + i).style.paddingRight = "0%";
                    document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                    document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                    document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                }
            }
            cancelPlayer();
            $('#players').modal('hide');

        }
    } else if (playersIDsub.indexOf("ben") != -1) {
        var tempName = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;
        var imageName = document.getElementById("benimage" + playersIDsub.split('ben')[1]).src.split("/")[5];
        var opponent = document.getElementById("oppben" + playersIDsub.split('ben')[1]).textContent;
        var pos = document.getElementById("benpos" + playersIDsub.split('ben')[1]).textContent;
        var name = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;
        console.log(name+"!)@LS");  
        if (playersIDafter.indexOf("ben") != -1) {
            document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("oppben" + playersIDafter.split('ben')[1]).textContent;
            document.getElementById("benpos" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent;

            document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + document.getElementById("benimage" + playersIDafter.split('ben')[1]).src.split("/")[5];
            document.getElementById("benname" + playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben" + playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benpos" + playersIDafter.split('ben')[1]).innerHTML = pos;
            document.getElementById("benimage" + playersIDafter.split('ben')[1]).src = "img/" + imageName;
        } else if (playersIDafter.indexOf("selDEF") != -1) {
            if (pos == 'Defence') {
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("defname" + playersIDafter.split('selDEF')[1]).textContent;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("oppdef" + playersIDafter.split('selDEF')[1]).textContent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + document.getElementById("defimage" + playersIDafter.split('selDEF')[1]).src.split("/")[5];
                document.getElementById("defname" + playersIDafter.split('selDEF')[1]).innerHTML = tempName;
                document.getElementById("oppdef" + playersIDafter.split('selDEF')[1]).innerHTML = opponent;
                document.getElementById("defimage" + playersIDafter.split('selDEF')[1]).src = "img/" + imageName;
            } else if (pos == 'Midfielder') {

                document.getElementById(playersIDafter).style.display = "none";
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selDEF" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-3';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";
                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-4';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";

                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-2';
                        document.getElementById("defcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selDEF" + i).style.marginRight = "32.5px";

                    }
                }

                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selMID" + i).style.display == "none") {
                        document.getElementById("selMID" + i).style.display = "";
                        var no = i;
                        break;
                    }
                }
                var tempName = document.getElementById("defname" + playersIDafter.split('selDEF')[1]).textContent;
                var imageName = document.getElementById("defimage" + playersIDafter.split('selDEF')[1]).src.split("/")[5];
                var opponent = document.getElementById("oppdef" + playersIDafter.split('selDEF')[1]).textContent;
                if (document.getElementById("defcptimage" + playersIDafter.split('selDEF')[1]).style.display != "none")
                    document.getElementById("midcptimage" + no).style.display = "";
                if (document.getElementById("defvcptimage" + playersIDafter.split('selDEF')[1]).style.display != "none")
                    document.getElementById("midvcptimage" + no).style.display = "";
                document.getElementById("midname" + no).innerHTML = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("oppmid" + no).innerHTML = document.getElementById("oppben" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("midimage" + no).src = "img/" + document.getElementById("benimage" + playersIDsub.split('ben')[1]).src.split("/")[5];
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = tempName;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = opponent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + imageName;
                document.getElementById("benpos" + playersIDsub.split('ben')[1]).innerHTML = 'Defence';
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selMID" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-3';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-4';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";


                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-2';
                        document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selMID" + i).style.marginRight = "32.5px";

                    }
                }

            } else if (pos == 'Forward') {
                document.getElementById(playersIDafter).style.display = "none";
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selDEF" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-3';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";
                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-4';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";

                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-2';
                        document.getElementById("defcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selDEF" + i).style.marginRight = "32.5px";

                    }
                }

                for (i = 1; i <= 3; i++) {
                    if (document.getElementById("selFWD" + i).style.display == "none") {
                        document.getElementById("selFWD" + i).style.display = "";
                        var no = i;
                        break;
                    }
                }
                var tempName = document.getElementById("defname" + playersIDafter.split('selDEF')[1]).textContent;
                var imageName = document.getElementById("defimage" + playersIDafter.split('selDEF')[1]).src.split("/")[5];
                var opponent = document.getElementById("oppdef" + playersIDafter.split('selDEF')[1]).textContent;
                if (document.getElementById("defcptimage" + playersIDafter.split('selDEF')[1]).style.display != "none")
                    document.getElementById("fwdcptimage" + no).style.display = "";
                if (document.getElementById("defvcptimage" + playersIDafter.split('selDEF')[1]).style.display != "none")
                    document.getElementById("fwdvcptimage" + no).style.display = "";
                document.getElementById("fwdname" + no).innerHTML = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("oppfwd" + no).innerHTML = document.getElementById("oppben" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("fwdimage" + no).src = "img/" + document.getElementById("benimage" + playersIDsub.split('ben')[1]).src.split("/")[5];
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = tempName;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = opponent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + imageName;
                document.getElementById("benpos" + playersIDsub.split('ben')[1]).innerHTML = 'Defence';

                var sum = 0;
                var next = 0;
                for (i = 1; i <= 3; i++) {
                    if (document.getElementById("selFWD" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-6';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                        if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                            document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                            next = 1;
                        } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                            document.getElementById("selFWD" + i).style.paddingRight = "15%";
                            next = 1;
                        }

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-12';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                    }
                } else {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-4';
                        document.getElementById("selFWD" + i).style.cssFloat = "";
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                    }
                }
            }
        } else if (playersIDafter.indexOf("selMID") != -1) {
            if (pos == 'Midfielder') {
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("midname" + playersIDafter.split('selMID')[1]).textContent;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("oppmid" + playersIDafter.split('selMID')[1]).textContent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + document.getElementById("midimage" + playersIDafter.split('selMID')[1]).src.split("/")[5];
                document.getElementById("midname" + playersIDafter.split('selMID')[1]).innerHTML = tempName;
                document.getElementById("oppmid" + playersIDafter.split('selMID')[1]).innerHTML = opponent;
                document.getElementById("midimage" + playersIDafter.split('selMID')[1]).src = "img/" + imageName;
            } else if (pos == 'Defence') {

                document.getElementById(playersIDafter).style.display = "none";
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selMID" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-3';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-4';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";


                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-2';
                        document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selMID" + i).style.marginRight = "32.5px";

                    }
                }

                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selDEF" + i).style.display == "none") {
                        document.getElementById("selDEF" + i).style.display = "";
                        var no = i;
                        break;
                    }
                }
                var tempName = document.getElementById("midname" + playersIDafter.split('selMID')[1]).textContent;
                var imageName = document.getElementById("midimage" + playersIDafter.split('selMID')[1]).src.split("/")[5];
                var opponent = document.getElementById("oppmid" + playersIDafter.split('selMID')[1]).textContent;
                if (document.getElementById("midcptimage" + playersIDafter.split('selMID')[1]).style.display != "none")
                    document.getElementById("defcptimage" + no).style.display = "";
                if (document.getElementById("midvcptimage" + playersIDafter.split('selMID')[1]).style.display != "none")
                    document.getElementById("defvcptimage" + no).style.display = "";
                document.getElementById("defname" + no).innerHTML = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("oppdef" + no).innerHTML = document.getElementById("oppben" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("defimage" + no).src = "img/" + document.getElementById("benimage" + playersIDsub.split('ben')[1]).src.split("/")[5];
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = tempName;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = opponent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + imageName;
                document.getElementById("benpos" + playersIDsub.split('ben')[1]).innerHTML = 'Midfielder';
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selDEF" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-3';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-4';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";

                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-2';
                        document.getElementById("defcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selDEF" + i).style.marginRight = "32.5px";

                    }
                }

            } else if (pos == 'Forward') {
                document.getElementById(playersIDafter).style.display = "none";
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selMID" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-3';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-4';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";

                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-2';
                        document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selMID" + i).style.marginRight = "32.5px";

                    }
                }

                for (i = 1; i <= 3; i++) {
                    if (document.getElementById("selFWD" + i).style.display == "none") {
                        document.getElementById("selFWD" + i).style.display = "";
                        var no = i;
                        break;
                    }
                }
                var tempName = document.getElementById("midname" + playersIDafter.split('selMID')[1]).textContent;
                var imageName = document.getElementById("midimage" + playersIDafter.split('selMID')[1]).src.split("/")[5];
                var opponent = document.getElementById("oppmid" + playersIDafter.split('selMID')[1]).textContent;
                if (document.getElementById("midcptimage" + playersIDafter.split('selMID')[1]).style.display != "none")
                    document.getElementById("fwdcptimage" + no).style.display = "";
                if (document.getElementById("midvcptimage" + playersIDafter.split('selMID')[1]).style.display != "none")
                    document.getElementById("fwdvcptimage" + no).style.display = "";
                document.getElementById("fwdname" + no).innerHTML = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("oppfwd" + no).innerHTML = document.getElementById("oppben" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("fwdimage" + no).src = "img/" + document.getElementById("benimage" + playersIDsub.split('ben')[1]).src.split("/")[5];
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = tempName;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = opponent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + imageName;
                document.getElementById("benpos" + playersIDsub.split('ben')[1]).innerHTML = 'Midfielder';

                var sum = 0;
                var next = 0;
                for (i = 1; i <= 3; i++) {
                    if (document.getElementById("selFWD" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-6';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                        if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                            document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                            next = 1;
                        } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                            document.getElementById("selFWD" + i).style.paddingRight = "15%";
                            next = 1;
                        }

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-12';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                    }
                } else {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-4';
                        document.getElementById("selFWD" + i).style.cssFloat = "";
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-15.3%";
                    }
                }
            }
        } else if (playersIDafter.indexOf("selFWD") != -1) {
            if (pos == 'Forward') {
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("fwdname" + playersIDafter.split('selFWD')[1]).textContent;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = document.getElementById("oppfwd" + playersIDafter.split('selFWD')[1]).textContent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + document.getElementById("fwdimage" + playersIDafter.split('selFWD')[1]).src.split("/")[5];
                document.getElementById("fwdname" + playersIDafter.split('selFWD')[1]).innerHTML = tempName;
                document.getElementById("oppfwd" + playersIDafter.split('selFWD')[1]).innerHTML = opponent;
                document.getElementById("fwdimage" + playersIDafter.split('selFWD')[1]).src = "img/" + imageName;
            } else if (pos == 'Defence') {

                document.getElementById(playersIDafter).style.display = "none";
                var sum = 0;
                for (i = 1; i <= 3; i++) {
                    if (document.getElementById("selFWD" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-6';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                        if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                            document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                            next = 1;
                        } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                            document.getElementById("selFWD" + i).style.paddingRight = "15%";
                            next = 1;
                        }

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-12';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                    }
                } else {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-4';
                        document.getElementById("selFWD" + i).style.cssFloat = "";
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                    }
                }

                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selDEF" + i).style.display == "none") {
                        document.getElementById("selDEF" + i).style.display = "";
                        var no = i;
                        break;
                    }
                }
                var tempName = document.getElementById("fwdname" + playersIDafter.split('selFWD')[1]).textContent;
                var imageName = document.getElementById("fwdimage" + playersIDafter.split('selFWD')[1]).src.split("/")[5];
                var opponent = document.getElementById("oppfwd" + playersIDafter.split('selFWD')[1]).textContent;
                if (document.getElementById("fwdcptimage" + playersIDafter.split('selFWD')[1]).style.display != "none")
                    document.getElementById("defcptimage" + no).style.display = "";
                if (document.getElementById("fwdvcptimage" + playersIDafter.split('selFWD')[1]).style.display != "none")
                    document.getElementById("defvcptimage" + no).style.display = "";
                document.getElementById("defname" + no).innerHTML = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("oppdef" + no).innerHTML = document.getElementById("oppben" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("defimage" + no).src = "img/" + document.getElementById("benimage" + playersIDsub.split('ben')[1]).src.split("/")[5];
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = tempName;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = opponent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + imageName;
                document.getElementById("benpos" + playersIDsub.split('ben')[1]).innerHTML = 'Forward';
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selDEF" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-3';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";
                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-4';
                        document.getElementById("selDEF" + i).style.marginRight = "0px";
                        document.getElementById("defcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("defimage" + i).style.marginLeft = "";

                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selDEF" + i).className = " ";
                        document.getElementById("selDEF" + i).className = 'col-md-2';
                        document.getElementById("defcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("defvcptimage" + i).style.marginTop = "-35%";
                        document.getElementById("defimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selDEF" + i).style.marginRight = "32.5px";

                    }

                }

            } else if (pos == 'Midfielder') {
                document.getElementById(playersIDafter).style.display = "none";
                var sum = 0;
                for (i = 1; i <= 3; i++) {
                    if (document.getElementById("selFWD" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-6';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "59.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                        if (document.getElementById("selFWD" + i).style.display == "" && next == 0) {
                            document.getElementById("selFWD" + i).style.paddingLeft = "15%";
                            next = 1;
                        } else if (document.getElementById("selFWD" + i).style.display == "" && next == 1) {
                            document.getElementById("selFWD" + i).style.paddingRight = "15%";
                            next = 1;
                        }

                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-12';
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-4.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "53.5%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-4.5%";
                    }
                } else {
                    for (i = 1; i <= 3; i++) {
                        document.getElementById("selFWD" + i).className = " ";
                        document.getElementById("selFWD" + i).className = 'col-md-4';
                        document.getElementById("selFWD" + i).style.cssFloat = "";
                        document.getElementById("selFWD" + i).style.marginRight = "0px";
                        document.getElementById("selFWD" + i).style.paddingLeft = "0%";
                        document.getElementById("selFWD" + i).style.paddingRight = "0%";
                        document.getElementById("fwdcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdcptimage" + i).style.marginTop = "-13.5%";
                        document.getElementById("fwdvcptimage" + i).style.paddingLeft = "60%";
                        document.getElementById("fwdvcptimage" + i).style.marginTop = "-13.5%";
                    }
                }

                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selMID" + i).style.display == "none") {
                        document.getElementById("selMID" + i).style.display = "";
                        var no = i;
                        break;
                    }
                }
                var tempName = document.getElementById("fwdname" + playersIDafter.split('selFWD')[1]).textContent;
                var imageName = document.getElementById("fwdimage" + playersIDafter.split('selFWD')[1]).src.split("/")[5];
                var opponent = document.getElementById("oppfwd" + playersIDafter.split('selFWD')[1]).textContent;
                if (document.getElementById("fwdcptimage" + playersIDafter.split('selFWD')[1]).style.display != "none")
                    document.getElementById("midcptimage" + no).style.display = "";
                if (document.getElementById("fwdvcptimage" + playersIDafter.split('selFWD')[1]).style.display != "none")
                    document.getElementById("midvcptimage" + no).style.display = "";
                document.getElementById("midname" + no).innerHTML = document.getElementById("benname" + playersIDsub.split('ben')[1]).textContent;

                document.getElementById("oppmid" + no).innerHTML = document.getElementById("oppben" + playersIDsub.split('ben')[1]).textContent;
                document.getElementById("midimage" + no).src = "img/" + document.getElementById("benimage" + playersIDsub.split('ben')[1]).src.split("/")[5];
                document.getElementById("benname" + playersIDsub.split('ben')[1]).innerHTML = tempName;
                document.getElementById("oppben" + playersIDsub.split('ben')[1]).innerHTML = opponent;
                document.getElementById("benimage" + playersIDsub.split('ben')[1]).src = "img/" + imageName;
                document.getElementById("benpos" + playersIDsub.split('ben')[1]).innerHTML = 'Forward';
                var sum = 0;
                for (i = 1; i <= 5; i++) {
                    if (document.getElementById("selMID" + i).style.display == "none") {
                        sum = eval(sum) + 1;
                    }
                }
                if (sum == 1) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-3';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "66%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-21.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";
                    }
                } else if (sum == 2) {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-4';
                        document.getElementById("selMID" + i).style.marginRight = "0px";
                        document.getElementById("midcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "62%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-15.3%";
                        document.getElementById("midimage" + i).style.marginLeft = "";

                    }
                } else {
                    for (i = 1; i <= 5; i++) {
                        document.getElementById("selMID" + i).className = " ";
                        document.getElementById("selMID" + i).className = 'col-md-2';
                        document.getElementById("midcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midvcptimage" + i).style.paddingLeft = "84%";
                        document.getElementById("midvcptimage" + i).style.marginTop = "-34.9%";
                        document.getElementById("midimage" + i).style.marginLeft = "27px";
                        if (i == 5)
                            break;
                        document.getElementById("selMID" + i).style.marginRight = "32.5px";

                    }

                }
            }
        }

        cancelPlayer();
        $('#players').modal('hide');
    }
    refreshCpt(name);
    document.getElementById("saveTeam").disabled = false;
}


function refreshCpt(name) {
    console.log("!!!"+name);
    
    document.getElementById("captain1").innerHTML = document.getElementById("gkname").textContent + "-GK";
    if (document.getElementById("gkname").textContent ==name)
        document.getElementById("captainSel").value = document.getElementById("captain1").textContent;
    document.getElementById("viceCaptain1").innerHTML = document.getElementById("gkname").textContent + "-GK";
    var total = 2;
    for (i = 1; i <= 5; i++) {
        if (document.getElementById("selDEF" + i).style.display != "none") {
            document.getElementById("captain" + total).innerHTML = document.getElementById("defname" + i).textContent + "-DEF";
            if (document.getElementById("defname" + i).textContent==name)
                document.getElementById("captainSel").value = document.getElementById("captain"+total).textContent;
            document.getElementById("viceCaptain" + total).innerHTML = document.getElementById("defname" + i).textContent + "-DEF";
            total = eval(total) + 1;
        }
    }
    for (i = 1; i <= 5; i++) {
        if (document.getElementById("selMID" + i).style.display != "none") {
            document.getElementById("captain" + total).innerHTML = document.getElementById("midname" + i).textContent + "-MID";
            if (document.getElementById("midname" + i).textContent==name)
                document.getElementById("captainSel").value = document.getElementById("captain"+total).textContent;
            document.getElementById("viceCaptain" + total).innerHTML = document.getElementById("midname" + i).textContent + "-MID";
            total = eval(total) + 1;
        }
    }
    for (i = 1; i <= 3; i++) {
        if (document.getElementById("selFWD" + i).style.display != "none") {
            document.getElementById("captain" + total).innerHTML = document.getElementById("fwdname" + i).textContent + "-FWD";
            if (document.getElementById("fwdname" + i).textContent==name)
                document.getElementById("captainSel").value = document.getElementById("captain"+total).textContent;
            document.getElementById("viceCaptain" + total).innerHTML = document.getElementById("fwdname" + i).textContent + "-FWD";
            total = eval(total) + 1;
        }
    }

}