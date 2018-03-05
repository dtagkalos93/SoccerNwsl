//Goalkeeper
function openModalGK(i) {

    var name = document.getElementById("gkname").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitute").setAttribute('onclick', "changePlayer('gkname')");

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalCancelGK(i) {

    var name = document.getElementById("gkname").textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('gkname')");
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

//Defender
function openModalDEF(i) {

    var name = document.getElementById("defname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("substitute").setAttribute('onclick', "changePlayer('defname" + i + "')");

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalCancelDEF(i) {

    var name = document.getElementById("defname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('defname" + i + "')");
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalMID(i) {

    var name = document.getElementById("midname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("substitute").setAttribute('onclick', "changePlayer('midname" + i + "')");

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");

            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalCancelMID(i) {

    var name = document.getElementById("midname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('midname" + i + "')");
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalFWD(i) {

    var name = document.getElementById("fwdname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
//            document.getElementById("playerTeam").innerHTML = team;
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalBEN(i) {

    var name = document.getElementById("benname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            if (i == '1')
                document.getElementById("substitute").setAttribute('onclick', "changePlayer('ben1')");

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");

            $('#players').modal({show: 'true'});

        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalcancelBEN(i) {

    var name = document.getElementById("benname" + i).textContent;
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);



            document.getElementById("modalTitleSub").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];
            document.getElementById("substitutecancel").setAttribute('onclick', "cancelPlayer('ben" + i + "')");
            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#playersCancel').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}


function openModalInfo(i) {
    var name = document.getElementById(i).textContent;
    console.log(name);
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);
            console.log(jsonResponse[0] + " $" + jsonResponse[2]);
            document.getElementById("modalTitleInfo").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("info").setAttribute('onclick', "openInfo()");
            $('#playersInfo').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}

function openModalSubstitute(playersIDsub, playersIDafter) {
    if (playersIDafter == 'ben1') {
        var name = document.getElementById("benname1").textContent;

    } else if (playersIDafter == 'selGK') {
        var name = document.getElementById("gkname").textContent;
    } else if (playersIDafter == 'ben2' || playersIDafter == 'ben3' || playersIDafter == 'ben4') {
        var name = document.getElementById("benname" + playersIDafter.split('ben')[1]).textContent;
    }
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var data = xhttp.responseText;
            var jsonResponse = JSON.parse(data);

            document.getElementById("modalTitle").innerHTML = jsonResponse[0] + " $" + jsonResponse[2];

            document.getElementById("substitute").setAttribute('onclick', "finalChange('" + playersIDsub + "','" + playersIDafter + "')");
            

            document.getElementById("info").setAttribute('onclick', "openInfo('" + name + "')");
            $('#players').modal({show: 'true'});
        }
    };
    xhttp.open("GET", "findPosition?name=" + name, true);
    xhttp.send();
}




