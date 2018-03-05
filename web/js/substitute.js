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
            if (i == no)
                i = eval(i) + 1;
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


    }
    else if (playerID == 'midname1' || playerID == 'midname2' || playerID == 'midname3'
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
            if (i == no)
                i = eval(i) + 1;
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
console.log(playersIDsub.indexOf("selDEF"));
    if (playersIDsub == "selGK" || playersIDsub == "ben1") {
        console.log('GoalKeeper!');

        var tempName = document.getElementById("gkname").textContent;
        var imageName = document.getElementById("gkimage").src.split("/")[5];
        var opponent = document.getElementById("oppgk").textContent;
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
        if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Defence") {
            console.log("here");
            document.getElementById("defname" + playersIDsub.split('selDEF')[1]).innerHTML = document.getElementById("benname"+ playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppdef" + playersIDsub.split('selDEF')[1]).innerHTML = document.getElementById("oppben"+ playersIDafter.split('ben')[1]).textContent;
            document.getElementById("defimage" + playersIDsub.split('selDEF')[1]).src = "img/" + document.getElementById("benimage"+ playersIDafter.split('ben')[1]).src.split("/")[5];
            document.getElementById("benname"+ playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben"+ playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage"+ playersIDafter.split('ben')[1]).src = "img/" + imageName;
            cancelPlayer();
            $('#players').modal('hide');
        }
    }else if (playersIDsub.indexOf("selMID") != -1) {
        
        var tempName = document.getElementById("midname" + playersIDsub.split('selMID')[1]).textContent;
        var imageName = document.getElementById("midimage" + playersIDsub.split('selMID')[1]).src.split("/")[5];
        var opponent = document.getElementById("oppmid" + playersIDsub.split('selMID')[1]).textContent;
        if (document.getElementById("benpos" + playersIDafter.split('ben')[1]).textContent == "Midfielder") {
            console.log("here");
            document.getElementById("midname" + playersIDsub.split('selMID')[1]).innerHTML = document.getElementById("benname"+ playersIDafter.split('ben')[1]).textContent;
            document.getElementById("oppmid" + playersIDsub.split('selMID')[1]).innerHTML = document.getElementById("oppben"+ playersIDafter.split('ben')[1]).textContent;
            document.getElementById("midimage" + playersIDsub.split('selMID')[1]).src = "img/" + document.getElementById("benimage"+ playersIDafter.split('ben')[1]).src.split("/")[5];
            document.getElementById("benname"+ playersIDafter.split('ben')[1]).innerHTML = tempName;
            document.getElementById("oppben"+ playersIDafter.split('ben')[1]).innerHTML = opponent;
            document.getElementById("benimage"+ playersIDafter.split('ben')[1]).src = "img/" + imageName;
            cancelPlayer();
            $('#players').modal('hide');
        }
    }
}