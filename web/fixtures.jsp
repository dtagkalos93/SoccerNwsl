<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>NWSL Fantasy</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/fixturescss.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
        <script type="text/javascript" src="./javascript.js"></script>

    </head>
    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
            <div class="container topnav">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="http://www.nwslsoccer.com" target="_blank">
                        <img class="navbar-brand topnav"  src="img/nwsl.png" style="width:141.7px;height:125px; margin-top: -17px" />
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="http://bostonbreakerssoccer.com"  target="_blank">
                                <img  src="img/Boston_Breakers.png" style="width:56.9px;height:45px;margin-right:-8px" 	 />
                            </a>
                        </li>
                        <li>
                            <a href="http://chicagoredstars.com/"  target="_blank">
                                <img  src="img/ChicagoRedStars.png" style="width:38.9px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="https://www.fckansascity.com/"  target="_blank">
                                <img  src="img/kansasCity.png" style="width:57.8px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="http://houstondashsoccer.com/"  target="_blank">
                                <img  src="img/Houston_Dash.png" style="width:43px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="http://nccourage.com/"  target="_blank">
                                <img  src="img/North_Carolina_Courage.png" style="width:35.8px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.orlando-pride.com/"  target="_blank">
                                <img  src="img/OrlandoPride.png" style="width:45px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.timbers.com/thornsfc"  target="_blank">
                                <img  src="img/Portland.png" style="width:45px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.reignfc.com/" target="_blank">
                                <img  src="img/SeattleReignFC.png" style="width:32px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.skybluefc.com/"  target="_blank">
                                <img  src="img/Sky_Blue_FC.png" style="width:36.2px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                        <li>
                            <a href="http://washingtonspirit.com/"  target="_blank">
                                <img src="img/Washington_Spirit.png" style="width:48.6px;height:45px;margin-right:-8px" />
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>


        <div class="intro-header2">
            <div class="container extraClass  ">

                <ul class="nav nav-tabs extraClassul">
                    <li  ><a href="status.html">Status</a></li>
                    <li ><a href="points.jsp">Points</a></li>
                    <li class="hidden-xs"><a href="transfers.html">Transfers</a></li>
                    <li class="hidden-xs"><a href="leagues.html">Leagues</a></li>
                    <li class="hidden-xs active"><a href="fixture">Fixtures</a></li>
                    <li class="hidden-xs"><a href="statistics.html">Statistics</a></li>
                    <li class="hidden-xs"><a href="help.html">Help</a></li>
                    <li class="hidden-xs"><a href="#">Sign Out</a></li>
                    <li class="dropdown hidden-sm hidden-md hidden-lg">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">More
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Transfers</a></li>
                            <li><a href="#">Leagues</a></li>
                            <li><a href="#">Statistics</a></li> 
                            <li><a href="#">Help</a></li> 
                            <li><a href="#">Sign Out</a></li> 
                        </ul>
                    </li>
                </ul>

            </div>
            <!-- /.container -->

        </div>
        <!-- /.intro-header -->

        <div class="container" style="margin-bottom:15%">
            <div class="row">

                <%
                    ArrayList<String> posts = (ArrayList<String>) request.getAttribute("data");
                    ArrayList<String> date = (ArrayList<String>) request.getAttribute("date");
                    ArrayList<String> home = (ArrayList<String>) request.getAttribute("home");
                    ArrayList<String> homebadge = (ArrayList<String>) request.getAttribute("homebadge");
                    ArrayList<String> time = (ArrayList<String>) request.getAttribute("time");
                    ArrayList<String> away = (ArrayList<String>) request.getAttribute("away");
                    ArrayList<String> awaybadge = (ArrayList<String>) request.getAttribute("awaybadge");
                    String dateSTR = null;

                %>

                <!-- Blog Entries Column -->
                <div class="col-md-8" style="margin-top: 5%">
                    <div class="col-md-12 col-sm-6 col-xs-12 fixtures" id="somediv">
                        <h4 style="font-family: arial; font-weight: bold;font-size: 13px;text-align: center; "><%=posts.get(0)+" - "+date.get(0) %></h4>

                        <button id="prev" value="<%=posts.get(1)%>" type="button" class="prevbutton btncustom col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial;margin-left: -2%;padding-top: 0.6%">
                            Previous
                        </button>


                        <h5 class="col-sm-6 hidden-xs" style="text-align: center;font-weight: lighter; font-family:arial;font-size:17px;left:7.35%; margin-top: -0.5%;margin-bottom: -2%" align="center">
                            <img src="img/nwsllogo.png" style="height: 29%;width: 29%;padding-right: 0.5%" >Fixtures
                        </h5>
                        <button id="next" value="<%=posts.get(2)%>" type="button" class="btncustom nextbtn col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial;margin-right:-2.1%;padding-top: 0.6%">
                            Next
                        </button>

                        <%
                            for (int i = 0; i < date.size(); i++) {
                                String game = "game" + i;

                                if (!date.get(i).equals(dateSTR)) {


                        %>
                        <h6 class="col-sm-12" style="font-family: arial; font-weight: lighter;font-size: 14px;text-align: center;width: 104%; left:-2.05%;margin-bottom: 1%;margin-top:2.5% "><%=date.get(i)%></h6>
                        <%
                                dateSTR = date.get(i);

                            }
                        %>
                        <a data-toggle="collapse" href="#<%=game%>" style="color:black ">
                            <div class="match col-sm-12 " style="width: 104.3%;left:-2.1%" >
                                <div class="row">
                                    <div class="col-md-4  col-xs-4 " style="left: 3.82%; text-align: right">
                                        <h6 style="float: right;font-size:17px"><%=home.get(i)%></h6>
                                    </div>
                                    <div class="col-md-1 col-xs-1 ">
                                        <img style="margin-left:-22%" src="img/<%=homebadge.get(i)%>">
                                    </div>
                                    <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;
                                             width: 15%; 
                                             left:0.8%;
                                             background-color:#1d3260;
                                             border-radius: 3pt">
                                        <h6 style="text-align: center;color:white;font-family: arial; font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                    </div>
                                    <div class="col-md-1 col-xs-1 ">
                                        <img class="" style="margin-left:-46%" src="img/<%=awaybadge.get(i)%>">
                                    </div>
                                    <div class="col-md-4  col-xs-4   " style="width: 30%; margin-left: -2.82%">
                                        <h6 style="font-size: 17px"><%=away.get(i)%></h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div id="<%=game%>" class="col-sm-12 collapse ">
                            <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                <h6 style="color:white;font-family: arial;font-size:13px;text-align: center;margin-top: 0.47% " >Goal Scored</h6>
                            </div>
                            <div class="row2" style="width: 100%;" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;float:right">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                        <li>Milk</li>
                                    </ul>
                                </div>
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;margin-left: -12.6%">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                <h6 style="color:white;font-family: arial;font-size:13px;text-align: center;margin-top: 0.47% " >Assists</h6>
                            </div>
                            <div class="row2" style="width: 100%;" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;float:right">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                        <li>Milk</li>
                                    </ul>
                                </div>
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: arial;font-weight: lighter">
                                    <ul style="list-style: none;margin-left: -12.6%">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                <h6 style="color:white;font-family: arial;font-size:13px;text-align: center;margin-top: 0.47% " >Yellow cards</h6>
                            </div>
                            <div class="row2" style="width: 100%;" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;float:right">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                        <li>Milk</li>
                                    </ul>
                                </div>
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;margin-left: -12.6%">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                <h6 style="color:white;font-family: arial;font-size:13px;text-align: center;margin-top: 0.47% " >Red cards</h6>
                            </div>
                            <div class="row2" style="width: 100%;" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;float:right">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                        <li>Milk</li>
                                    </ul>
                                </div>
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;margin-left: -12.6%">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                <h6 style="color:white;font-family: arial;font-size:13px;text-align: center;margin-top:0.47% " >Saves</h6>
                            </div>
                            <div class="row2" style="width: 100%" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;float:right">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                        <li>Milk</li>
                                    </ul>
                                </div>
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;margin-left: -12.6%">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                <h6 style="color:white;font-family: arial;font-size:13px;text-align: center;margin-top: 0.47% " >Bonus</h6>
                            </div>
                            <div class="row2" style="width: 100%;margin-bottom: 2%" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;float:right">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                        <li>Milk</li>
                                    </ul>
                                </div>
                                <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:arial;font-weight: lighter">
                                    <ul style="list-style: none;margin-left: -12.6%">
                                        <li>Coffee</li>
                                        <li>Tea</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <% }%>

                    </div>
                </div>









                <div class="col-md-4 sidebar" style=" ">

                </div>
            </div>
        </div>

        <script>
            $(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var prev = $('#prev').val();
                $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    $("#somediv").html("");
                    var $h4 = $("<h4>");
                    $h4.css({"font-family": "arial", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                    $h4.text(responseText[0]+" - "+responseText[3]).appendTo("#somediv");

                    var $buttonprev = $("<button>");
                    $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
                    $buttonprev.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2%", "padding-top": "0.6%"});
                    $buttonprev.text("Previous").insertAfter($h4);
                    if (responseText[1] == "Gameweek 0") {
                        $buttonprev.css('visibility', 'hidden');
                    }

                    var $h5 = $("<h5>");
                    $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
                    $h5.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "17px", "left": "7.35%", 'margin-top': "-0.5%", 'margin-bottom': "-2%"});
                    $h5.text("Fixtures").insertAfter($buttonprev);
                    var $img = $("<img>");
                    $img.attr({src: "img/nwsllogo.png"});
                    $img.css({'height': "29%", "width": " 29%", "padding-right": " 0.5%"});
                    $img.prependTo($h5);
                    var $buttonnext = $("<button>");
                    $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
                    $buttonnext.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2.1%", "padding-top": "0.6%", "left": "2.2%"});
                    $buttonnext.text("Next").insertAfter($h5);
                    if (responseText[2] == "Gameweek 23") {
                        $buttonnext.css('visibility', 'hidden');
                    }
                   for (i =responseText.length ; i >=3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left":"-2.05%","margin-bottom": "1%","margin-top": "2.5%"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if(i+6>0){
                            if(responseText[i]==responseText[i-6]){
                                $h6.css({"display":"none"});
                            }
                        }
                        var $div = $("<div>");
                        $div.attr({'class': "match col-sm-12"});
                        $div.css({"width": "104.3%", "left": "-2.1%"});
                        $div.insertAfter($h6);
                        var $divrow = $("<div>");
                        $divrow.attr({'class': "row"});
                        $divrow.appendTo($div);
                        var $divh6 = $("<div>");
                        $divh6.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6.css({"left": "3.7%"});
                        $divh6.appendTo($divrow);
                        var $h6home = $("<h6>");
                        $h6home.attr({'class': "col-md-4  col-xs-4   "});
                        $h6home.css({"margin-left":"2.5%","font-size":"17px","width": "230px","text-align":"right"});
                        $h6home.text(responseText[i+1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/"+responseText[i+2],'class':"col-md-1 col-xs-1"});
                        $imghome.css({ "width": "initial ","margin-left": "-1%","margin-right": "2%"});
                        $imghome.appendTo($divrow);
                        var $divtime=$("<div>");
                        $divtime.attr({"class":"col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px","width": "15%","left":"-4.3%","background-color":"#1d3260","border-radius":" 3pt"});
                        $divtime.appendTo($divrow);
                        var $time=$("<h6>");
                        $time.css({"width": "100%","text-align": "center","color":"white","font-family": "arial", "font-size": "16px", "font-weight":"lighter"});
                        $time.text(responseText[i+3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/"+responseText[i+5],'class':"col-md-1 col-xs-1"});
                        $imgaway.css({ "width": "initial ","margin-left": "-7%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6a.css({"left": "-7%","width":"30%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4   "});
                        $h6away.css({"font-size":"17px","width": "230px", "text-align":"left"});
                        $h6away.text(responseText[i+4]).appendTo($divh6a);
                        
                        if(i>=responseText.length){
                            $divrow.css({"display":"none"});
                            $h6.css({"display":"none"});
                        }
                        
                    }

                });
            });
        </script>

        <script>
            $(document).on("click", "#next", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var prev = $('#next').val();
                $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    $("#somediv").html("");
                    var $h4 = $("<h4>");
                    $h4.css({"font-family": "arial", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                    $h4.text(responseText[0]+" - "+responseText[3]).appendTo("#somediv");

                    var $buttonprev = $("<button>");
                    $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
                    $buttonprev.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2%", "padding-top": "0.6%"});
                    $buttonprev.text("Previous").insertAfter($h4);
                    if (responseText[1] == "Gameweek 0") {
                        $buttonprev.css('visibility', 'hidden');
                    }

                    var $h5 = $("<h5>");
                    $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
                    $h5.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "17px", "left": "7.35%", 'margin-top': "-0.5%", 'margin-bottom': "-2%"});
                    $h5.text("Fixtures").insertAfter($buttonprev);
                    var $img = $("<img>");
                    $img.attr({src: "img/nwsllogo.png"});
                    $img.css({'height': "29%", "width": " 29%", "padding-right": " 0.5%"});
                    $img.prependTo($h5);
                    var $buttonnext = $("<button>");
                    $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
                    $buttonnext.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "arial", "margin-left": "-2.1%", "padding-top": "0.6%", "left": "2.2%"});
                    $buttonnext.text("Next").insertAfter($h5);
                    if (responseText[2] == "Gameweek 23") {
                        $buttonnext.css('visibility', 'hidden');
                    }
                   for (i =responseText.length ; i >=3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left":"-2.05%","margin-bottom": "1%","margin-top": "2.5%"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if(i+6>0){
                            if(responseText[i]==responseText[i-6]){
                                $h6.css({"display":"none"});
                            }
                        }
                        var $div = $("<div>");
                        $div.attr({'class': "match col-sm-12"});
                        $div.css({"width": "104.3%", "left": "-2.1%"});
                        $div.insertAfter($h6);
                        var $divrow = $("<div>");
                        $divrow.attr({'class': "row"});
                        $divrow.appendTo($div);
                        var $divh6 = $("<div>");
                        $divh6.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6.css({"left": "3.7%"});
                        $divh6.appendTo($divrow);
                        var $h6home = $("<h6>");
                        $h6home.attr({'class': "col-md-4  col-xs-4   "});
                        $h6home.css({"margin-left":"2.5%","font-size":"17px","width": "230px","text-align":"right"});
                        $h6home.text(responseText[i+1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/"+responseText[i+2],'class':"col-md-1 col-xs-1"});
                        $imghome.css({ "width": "initial ","margin-left": "-1%","margin-right": "2%"});
                        $imghome.appendTo($divrow);
                        var $divtime=$("<div>");
                        $divtime.attr({"class":"col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px","width": "15%","left":"-4.3%","background-color":"#1d3260","border-radius":" 3pt"});
                        $divtime.appendTo($divrow);
                        var $time=$("<h6>");
                        $time.css({"width": "100%","text-align": "center","color":"white","font-family": "arial", "font-size": "16px", "font-weight":"lighter"});
                        $time.text(responseText[i+3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/"+responseText[i+5],'class':"col-md-1 col-xs-1"});
                        $imgaway.css({ "width": "initial ","margin-left": "-7%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6a.css({"left": "-7%","width":"30%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4   "});
                        $h6away.css({"font-size":"17px","width": "230px"});
                        $h6away.text(responseText[i+4]).appendTo($divh6a);
                        
                        if(i>=responseText.length){
                            $divrow.css({"display":"none"});
                            $h6.css({"display":"none"});
                        }
                        
                    }

                });
            });
        </script>


        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
