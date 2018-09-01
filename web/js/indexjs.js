function login() {
    var email = document.getElementById("emailLgn").value;
    var pwd = document.getElementById("passwordLgn").value;
    var checkbox = document.getElementById("remberLgn").checked;
    if (email == '') {
        document.getElementById("loginError").innerHTML = 'Please write your email address';
        document.getElementById("emailLgn").style.borderColor = "red";
        document.getElementById("loginError").style.display = '';
    } else if (pwd == '') {
        document.getElementById("loginError").style.display = '';
        document.getElementById("passwordLgn").style.borderColor = "red";
        document.getElementById("loginError").innerHTML = 'Please write your password';
    } else {
        var xhttp;
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                var data = this.responseText;



                if (data.indexOf("success") != -1) {
                    location.href = "status.jsp";

                } else {
                    document.getElementById("emailLgn").style.borderColor = "red";
                    document.getElementById("passwordLgn").style.borderColor = "red";

                    document.getElementById("loginError").style.display = '';
                    document.getElementById("loginError").innerHTML = 'Wrong email or password';
                }
                console.log(data.indexOf("success"));

            }
        };
        xhttp.open("POST", "login?email=" + email + "&pwd=" + pwd + "&checkbox=" + checkbox, true);
        xhttp.send();
    }

}