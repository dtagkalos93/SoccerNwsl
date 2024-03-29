<!DOCTYPE html>
<%
    
    String display="none";
    if(request.getAttribute("teamSelect")==null){
         display="none";
    }
    else{
         display="";
    }
%>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>NWSL Fantasy League</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/signcss.css" rel="stylesheet">
        <link rel="stylesheet" href="css/countrySelect.css">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">





        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
            <div class="container topnav">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" >
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="http://www.nwslsoccer.com" target="_blank">
                        <img class="navbar-brand topnav"  src="img/nwsl-topnav.png" style="width: auto; height: -webkit-fill-available; padding: 1px" ></img>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <!--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="http://chicagoredstars.com/"  target="_blank">
                                <img  src="img/ChicagoRedStars.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://houstondashsoccer.com/"  target="_blank">
                                <img  src="img/Houston_Dash.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://nccourage.com/"  target="_blank">
                                <img  src="img/North_Carolina_Courage.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.orlando-pride.com/"  target="_blank">
                                <img  src="img/OrlandoPride.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.timbers.com/thornsfc"  target="_blank">
                                <img  src="img/Portland.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.reignfc.com/" target="_blank">
                                <img  src="img/SeattleReignFC.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.skybluefc.com/"  target="_blank">
                                <img  src="img/Sky_Blue_FC.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="https://www.rsl.com/utahroyalsfc"  target="_blank">
                                <img  src="img/UtahRoyals.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://washingtonspirit.com/"  target="_blank">
                                <img src="img/Washington_Spirit.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Header -->
        <div class="intro-header">
            <div class="container">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="intro-message">
                            <h2 style="font-family: Century Gothic;font-size: 32px;font-weight: lighter;color: #f8f8f8; text-align: left">Choose your favorite team</h2>
                        </div>
                    </div>
                </div>
                <div  id="ajaxLoginResponse" style="color: red;"></div>

                <form class="col-md-12 col-xs-12" method="POST" action="confirmation">
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none" >
                        <label class="col-md-3 col-xs-3" for="first" style="font-size: 17px; font-family: Century Gothic" >First Name:</label>
                        <div class="col-md-9 col-xs-9"> 
                            <input type="firstname" value="<%=request.getAttribute("firstname")%>" class="form-control" name="firstname" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="last" style="font-size: 17px; font-family: Century Gothic" >Last Name:</label>
                        <div class="col-md-9 col-xs-9"> 
                            <input type="lastname"  value="<%=request.getAttribute("lastname")%>" class="form-control" name="lastname" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="email" style="font-size: 17px; font-family: Century Gothic" >Email Address:</label>
                        <div class="col-md-9 col-xs-9"> 
                            <input type="email" value="<%=request.getAttribute("email")%>"  class="form-control" name="email" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="pwd" style="font-size: 17px; font-family: Century Gothic" >Password:</label>
                        <div class="col-md-9 col-xs-9"> 
                            <input type="text" value="<%=request.getAttribute("password")%>"  class="form-control" name="pwd" style="width:75%">
                        </div>
                    </div>
                    <div  style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="gender" style="font-size: 17px; font-family: Century Gothic"> Gender:</label>
                        <div class="col-md-9 col-xs-9"> 
                            <%String gender = request.getAttribute("gender").toString();
                                if (gender.equals("male")) {%>
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px" checked> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px"> Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                            <%} else if (gender.equals("female")) {
                            %>
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px" checked> Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                            <%} else if (gender.equals("other")) {
                            %>
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px" > Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px" checked> Unspecified 
                            <% }%>
                        </div>
                    </div>
                    <div class="z-fieldError col-md-12" style="display:<%=display %>">

                        <span style="font-weight: bold; font-size: 13px; font-family: Century Gothic" >This field is required.</span>

                    </div>
                    <div class="col-md-12 container">
                        <div class="row">
                            <div class="col-md-2" style="margin-left: 25%;margin-right: -13px;">
                                <div class="list-group" >
                                    <a  value="chicago" data-class="chicago" class="list-group-item" style="width: 175px;height: 117px" id="fanteam1" onclick="fanTeam(1)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/ChicagoRedStars.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Chicago Red Stars</h5>                                                                                                        
                                    </a>
                                    <a  value="houston" data-class="houston" class="list-group-item" style="width: 175px;height: 117px" id="fanteam2" onclick="fanTeam(2)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/Houston_Dash.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Houston Dash</h5>
                                    </a>
                                    <a  value="courage" data-class="courage" class="list-group-item" style="width: 175px;height: 117px" id="fanteam3" onclick="fanTeam(3)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/North_Carolina_Courage.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">North Caroline Courage</h5>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-2" style="padding-right: 0px;">
                                <div class="list-group" >
                                    <a  value="orlando" data-class="orlando" class="list-group-item" style="width: 175px;height: 117px" id="fanteam4" onclick="fanTeam(4)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/OrlandoPride.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Orlando Pride</h5>
                                    </a>
                                    <a  value="portland" data-class="portland" class="list-group-item" style="width: 175px;height: 117px" id="fanteam5" onclick="fanTeam(5)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/Portland.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Portland Thorns FC</h5>
                                    </a>
                                    <a  value="seattle" data-class="seattle" class="list-group-item" style="width: 175px;height: 117px" id="fanteam6" onclick="fanTeam(6)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/SeattleReignFC.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Seattle Reign FC</h5>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-2" style="padding-left: 0px;">
                                <div class="list-group">
                                    <a value="sky" data-class="sky" class="list-group-item" style="width: 175px;height: 117px" id="fanteam7" onclick="fanTeam(7)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/Sky_Blue_FC.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Sky Blue FC</h5>
                                    </a>
                                    <a  value="royals" data-class="royals" class="list-group-item" style="width: 175px;height: 117px" id="fanteam8" onclick="fanTeam(8)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/Utah_Royals.PNG"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Utah Royals FC</h5>
                                    </a>
                                    <a value="spirit" data-class="spirit" class="list-group-item" style="width: 175px;height: 117px" id="fanteam9" onclick="fanTeam(9)">
                                        <img style="height: 45px;width: auto;margin-left: auto;margin-right: auto;display: block;" src="img/Washington_Spirit.png"/>
                                        <h5 style="font-family: century gothic;font-weight: lighter;text-align: center">Washington Spirit</h5>
                                    </a>
                                </div>
                            </div>


                            <input name="country" value="<%=request.getAttribute("country")%>"  class="form-control"  style="display:none">
                            <input name="team" id='favteam'   class="form-control"  style="display:none">
                            <div class="col-md-12">
                                <div class="col-md-6 col-xs-6" align="right" style="margin-bottom: 50px;margin-top: 25px">
                                    <button type="submit" class=" backbtn btncstm" style="color: white; font-size: 15px; font-weight: lighter; text-align: center; width: 35%; padding: 1.5%" onClick="history.go(-1); return false;" >
                                        <i class="glyphicon glyphicon-arrow-left" style="float:left; margin-top: 0.5%;"></i>Back
                                    </button>
                                </div>
                                <div class="col-md-6 col-xs-6" align="left" style="margin-bottom: 50px;margin-top: 25px">
                                    <button type="submit" class="confirmationbtn btncstm" style="color: white; font-size: 15px; font-weight: lighter; text-align: center; width: 35%; padding: 1.5%" >
                                        <i class="glyphicon glyphicon-arrow-right" style="float:right; margin-top: 0.5%;"></i>Confirmation
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- jQuery -->
                        <script src="js/jquery.js"></script>

                        <!-- Bootstrap Core JavaScript -->
                        <script src="js/bootstrap.min.js"></script>
                        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
                        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                        <script>
                                        $(function () {
                                            $.widget("custom.iconselectmenu", $.ui.selectmenu, {
                                                _renderItem: function (ul, item) {
                                                    var li = $("<li>"),
                                                            wrapper = $("<div>", {text: item.label});

                                                    if (item.disabled) {
                                                        li.addClass("ui-state-disabled");
                                                    }

                                                    $("<span>", {
                                                        style: item.element.attr("data-style"),
                                                        "class": "ui-icon " + item.element.attr("data-class")
                                                    })
                                                            .appendTo(wrapper);

                                                    return li.append(wrapper).appendTo(ul);
                                                }
                                            });

                                            $("#filesA")
                                                    .iconselectmenu()
                                                    .iconselectmenu("menuWidget")
                                                    .addClass("ui-menu-icons");

                                            $("#filesB")
                                                    .iconselectmenu()
                                                    .iconselectmenu("menuWidget")
                                                    .addClass("ui-menu-icons customicons");

                                            $("#people")
                                                    .iconselectmenu()
                                                    .iconselectmenu("menuWidget")
                                                    .addClass("ui-menu-icons avatar");
                                        });
                        </script>

                        <script>
                            function fanTeam(i) {

                                for (k = 1; k <= 10; k++) {
                                    if (k != i) {

                                        document.getElementById("fanteam" + k).style.color = "#555";
                                        document.getElementById("fanteam" + k).style.backgroundColor = "#fff";
                                    } else {


                                        document.getElementById("fanteam" + k).style.backgroundColor = "#1d3260";
                                        document.getElementById("fanteam" + k).style.color = "white";
                                        document.getElementById("favteam").value = document.getElementById("fanteam" + k).getAttribute('value');



                                    }
                                }
                            }
                        </script>


                        </body>

                        </html>
