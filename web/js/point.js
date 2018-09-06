function btnPoint(btn) {
    if (btn == 'prev') {
        var fix = document.getElementById("prevpoint").value;
    } else {
        var fix = document.getElementById("nextpoint").value;
    }
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            

            var other = jsonResponse["other"];
            document.getElementById("prevpoint").value = other[0];
            if (other[0] == '0') {
                document.getElementById("prevpoint").style.display = "none";
            } else {
                document.getElementById("prevpoint").style.display = "";
            }
            document.getElementById("nextpoint").value = other[1];
            if (other[1] == '24' || other[1] == other[2]) {
                document.getElementById("nextpoint").style.display = "none";
            } else {
                document.getElementById("nextpoint").style.display = "";
            }
            
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

            document.getElementById("titlepoint").innerHTML = "Gameweek " + fix;
            document.getElementById("scorepoint").innerHTML = other[3];


        }
    };
    xhttp.open("GET", "btnPoints?fix=" + fix, true);
    xhttp.send();
   

}