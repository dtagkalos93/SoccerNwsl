<%@page import="com.fantasy.deadLIne"%>
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
        <link href="css/rostercss.css" rel="stylesheet">
        <link href="css/field.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body onload="backTeamButton()">

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
                        <img class="navbar-brand topnav"  src="img/nwsl-topnav.png" style="width: auto; height: -webkit-fill-available; padding: 1px" ></img>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="http://chicagoredstars.com/"  target="_blank">
                                <img  src="img/ChicagoRedStars.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://houstondashsoccer.com/"  target="_blank">
                                <img  src="img/Houston_Dash.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://nccourage.com/"  target="_blank">
                                <img  src="img/North_Carolina_Courage.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.orlando-pride.com/"  target="_blank">
                                <img  src="img/OrlandoPride.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.timbers.com/thornsfc"  target="_blank">
                                <img  src="img/Portland.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.reignfc.com/" target="_blank">
                                <img  src="img/SeattleReignFC.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.skybluefc.com/"  target="_blank">
                                <img  src="img/Sky_Blue_FC.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="https://www.rsl.com/utahroyalsfc"  target="_blank">
                                <img  src="img/UtahRoyals.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://washingtonspirit.com/"  target="_blank">
                                <img src="img/Washington_Spirit.png" style="width: auto;height:31px;margin-left: 15%" />
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <%

            deadLIne line = new deadLIne();
        %>
        <div class="container extraClass  ">
            <ul class="nav nav-pills extraClassul">
                <li class="nav-item"><a href="home.html">Home</a></li>
                <li class="nav-item active"><a href="">Roster Selection</a></li>
                <li class="nav-item"><a href="fixture">Fixtures</a></li>
                <li class="nav-item"><a href="help.html">Help</a></li>
                <li class="nav-item"><a href="playersData">Sign Out</a></li>
                <li class="dropdown hidden-sm hidden-md hidden-lg">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">More
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Fixtures</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Sign Out</a></li> 
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <div class="container">
        <div class="side-gap">

            <!-- Blog Entries Column -->
            <div class="col-md-9 top-gap">
                <div class="row ">
                    <h3 class="col-md-12 col-xs-12"  style="font-family: Century Gothic">Roster Selection</h3>

                    <h5 class="col-md-12 col-xs-12" style="font-size: 14px; font-weight:lighter;font-family: Century Gothic " >
                        Select a maximum of 4 players from a single team or 'Auto Pick' if you're short of time.
                    </h5>
                    <div  class="col-sm-12  ">
                        <div class="col-sm-12" style="width: 100%;background-color:#050424">
                            <h6 style="color:white;font-size:14px;text-align:center; font-weight:lighter;margin-top: 8px;margin-bottom: 8px;font-family: Century Gothic" ><%=line.getGameweek()%> Deadline:
                                <strong style="color:#d21e25; font-size:19px;font-family: Century Gothic" ><%=line.getdeadline()%></strong>
                            </h6>
                        </div>
                        <div class="col-sm-12" style="width: 100%;border: 1px solid #ebebe4;margin-bottom: 1%;padding-left: 0;padding-right: 0" >
                            <div class="col-md-3  col-xs-3" style="margin-top: 3%">
                                <button id="autopick" type="button" class="autopickbtn btncstm col-sm-6 " style="font-family: Century Gothic; font-size: 15px;text-align: center;padding: 4.5% " onclick="autopick()">
                                    Auto Pick 
                                </button> 
                            </div>
                            <div class="col-md-3  col-xs-3" style="margin-top: 3%">
                                <button type="button" class="resetbtn btncstm col-sm-6 " style="font-family: Century Gothic; font-size: 15px;text-align: center;padding: 4.5%;float: right" onclick="reset()">
                                    Reset 
                                </button> 
                            </div>
                            <div class="col-md-3  col-xs-3" style="flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;border-left: 1px solid #ebebe4">
                                <h6 style="text-align: center;font-weight:bold; font-size:15px;font-family: Century Gothic ">Players Selected</h6>
                                <h4 id="allPlayers" style="text-align: center;font-weight:bold; font-size:20px; color:#d21e25;font-family: Century Gothic;"><span id="totalPlayers">0</span>/15</h4>
                            </div>
                            <div class="col-md-3  col-xs-3" style="flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;border-left: 1px solid #ebebe4">
                                <h6 style="text-align: center;font-weight:bold; font-size:15px;font-family: Century Gothic ">Money Remaining</h6>
                                <h4 id="dollar" style="text-align: center;font-weight:bold;color:#0ea331; font-size:20px;font-family: Century Gothic ">$<span id="remainPrice">100.0</span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12  " class="col-md-12 col-xs-12" style="padding-right: 15px;padding-left: 15px; display: none " id='errorbox'> 
                        <h5  id="teamError" style="text-align: center; font-size: 14px;font-family: Century Gothic">More than 4 players selected from <span id="team"></span>.</h5>
                        <h5  id="posError" style="text-align: center; font-size: 14px;font-family: Century Gothic;display: none"><span id="pos"></span> :Maximum players in this position!</h5>
                        <h5  id="enterError" style="text-align: center; font-size: 14px;font-family: Century Gothic;display: none">Please complete your Team!</h5>
                        <h5  id="moneyError" style="text-align: center; font-size: 14px;font-family: Century Gothic;display: none">Total Money Overload! </h5>

                    </div>
                    <div class="col-md-12 col-xs-12" style="border: 1px solid #0ea331; background-color:#92c992; padding-right: 15px;padding-left: 15px; margin-bottom: 1%; display: none"id='checkbox'> 
                        <h5  style="text-align: center; font-size: 14px; font-weight: lighter;margin-top: 4px;margin-bottom: 4px"> <span id="playername" style="font-weight:bold"></span><span id='message'> has been added to your squad.</span></h5>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12 bc-img" >
                        <hr style="border:none;margin-top: 6.5%"/>
                        <div id="selGK1" class="col-md-6 col-xs-6" style="padding-left: 28%" onclick="changeGK()">
                            <img class="image-player" id="imagegk1" src="img/subsgk.png"/>
                            <p class="name" id="namegk1" >Goalkeeper</p>
                            <p style="display: none" id="team1"></p>
                            <p class="price" id="pricegk1"></p>
                        </div>
                        <div id="selGK2" class="col-md-6 col-xs-6" style="padding-right: 28%;" onclick="changeGK()">
                            <img class="image-player" id="imagegk2" src="img/subsgk.png" />
                            <p class="name" id="namegk2" >Goalkeeper</p>
                            <p style="display: none" id="team2"></p>
                            <p class="price" id="pricegk2"></p>
                        </div>

                        <hr style="border:none;margin-top: 21%">
                        <div id="selDEF1" class="col-md-2 col-xs-2" style="margin-right: 32px" onclick="changeDEF()">
                            <img class="image-player-cb" id="defimage1" src="img/subs.png"  />
                            <p class="name" id="defname1" >Defender</p>
                            <p style="display: none" id="team3"></p>
                            <p class="price" id="defprice1"></p>
                        </div>
                        <div id="selDEF2" class="col-md-2 col-xs-2" style="margin-right: 32px" onclick="changeDEF()">
                            <img class="image-player-cb" id="defimage2" src="img/subs.png" />
                            <p class="name" id="defname2" >Defender</p>
                            <p style="display: none" id="team4"></p>
                            <p class="price" id="defprice2"></p>
                        </div>
                        <div id="selDEF3" class="col-md-2 col-xs-2" style="margin-right: 32px" onclick="changeDEF()">
                            <img class="image-player-cb" id="defimage3" src="img/subs.png"  />
                            <p class="name" id="defname3" >Defender</p>
                            <p style="display: none" id="team5"></p>
                            <p class="price" id="defprice3"></p>
                        </div>
                        <div id="selDEF4" class="col-md-2 col-xs-2" style="margin-right: 32px" onclick="changeDEF()">
                            <img class="image-player-cb" id="defimage4" src="img/subs.png"  />
                            <p class="name" id="defname4" >Defender</p>
                            <p style="display: none" id="team6"></p>
                            <p class="price" id="defprice4"></p>
                        </div>
                        <div id="selDEF5" class="col-md-2 col-xs-2" onclick="changeDEF()" >
                            <img class="image-player-cb" id="defimage5" src="img/subs.png" />
                            <p class="name" id="defname5" >Defender</p>
                            <p style="display: none" id="team7"></p>
                            <p class="price" id="defprice5"></p>
                        </div>

                        <hr style="border:none;margin-top: 21%">                          
                        <div id="selMID1" class="col-md-2 col-xs-2 " style="margin-right: 32px" onclick="changeMID()">
                            <img class="image-player-cb" src="img/subs.png"  id="midimage1" />
                            <p class="name" id="midname1" >Midfielder</p>
                            <p style="display: none" id="team8"></p>
                            <p class="price" id="midprice1"></p>
                        </div>                            
                        <div id="selMID2" class="col-md-2 col-xs-2" style="margin-right: 32px" onclick="changeMID()">
                            <img class="image-player-cb" src="img/subs.png"  id="midimage2" />
                            <p class="name" id="midname2" >Midfielder</p>
                            <p style="display: none" id="team9"></p>
                            <p class="price" id="midprice2"></p>
                        </div>
                        <div id="selMID3" class="col-md-2 col-xs-2" style="margin-right: 32px" onclick="changeMID()">
                            <img class="image-player-cb" src="img/subs.png"  id="midimage3" />
                            <p class="name" id="midname3" >Midfielder</p>
                            <p style="display: none" id="team10"></p>
                            <p class="price" id="midprice3"></p>
                        </div>
                        <div id="selMID4" class="col-md-2 col-xs-2" style="margin-right: 32px" onclick="changeMID()">
                            <img class="image-player-cb" src="img/subs.png"  id="midimage4" />
                            <p class="name" id="midname4" >Midfielder</p>
                            <p style="display: none" id="team11"></p>
                            <p class="price" id="midprice4"></p>
                        </div>
                        <div id="selMID5" class="col-md-2 col-xs-2" onclick="changeMID()">
                            <img class="image-player-cb" src="img/subs.png"  id="midimage5" />
                            <p class="name" id="midname5" >Midfielder</p>
                            <p style="display: none" id="team12"></p>
                            <p class="price" id="midprice5"></p>
                        </div>                            

                        <hr style="border:none;margin-top: 21%">                          
                        <div id="selFWD1" class="col-md-4  col-xs-4" onclick="changeFWD()">
                            <img class="image-player" id="fwdimage1" src="img/subs.png"  />
                            <p class="name" id="fwdname1">Forward</p>
                            <p style="display: none" id="team13"></p>
                            <p class="price" id="fwdprice1"></p>
                        </div>
                        <div id="selFWD2" class="col-md-4  col-xs-4" onclick="changeFWD()">
                            <img class="image-player" id="fwdimage2" src="img/subs.png"  />
                            <p class="name" id="fwdname2">Forward</p>
                            <p style="display: none" id="team14"></p>
                            <p class="price" id="fwdprice2"></p>
                        </div>
                        <div id="selFWD3" class="col-md-4  col-xs-4" onclick="changeFWD()">
                            <img class="image-player" id="fwdimage3" src="img/subs.png"  />
                            <p class="name" id="fwdname3">Forward</p>
                            <p style="display: none" id="team15"></p>
                            <p class="price" id="fwdprice3"></p>
                        </div>
                    </div>

                    <button id="enterTeam" class="enterteam btncstm col-md-12" style="margin-left: 34%;margin-bottom: 2%;margin-top: 2%;padding: 1%">
                        Enter Team
                    </button>

                    <%
                        ArrayList<String> posts = (ArrayList<String>) request.getAttribute("data");

                        ArrayList<String> date = (ArrayList<String>) request.getAttribute("date");
                        ArrayList<String> home = (ArrayList<String>) request.getAttribute("home");
                        ArrayList<String> homebadge = (ArrayList<String>) request.getAttribute("homebadge");
                        ArrayList<String> time = (ArrayList<String>) request.getAttribute("time");
                        ArrayList<String> away = (ArrayList<String>) request.getAttribute("away");
                        ArrayList<String> awaybadge = (ArrayList<String>) request.getAttribute("awaybadge");

//                        ArrayList<String> homegoal = (ArrayList<String>) request.getAttribute("homegoal");
//                        ArrayList<String> awaygoal = (ArrayList<String>) request.getAttribute("awaygoal");
//                        ArrayList<String> homeassist = (ArrayList<String>) request.getAttribute("homeassist");
//                        ArrayList<String> awayassist = (ArrayList<String>) request.getAttribute("awayassist");
//                        ArrayList<String> homeyellow = (ArrayList<String>) request.getAttribute("homeyellow");
//                        ArrayList<String> awayyellow = (ArrayList<String>) request.getAttribute("awayyellow");
//                        ArrayList<String> homered = (ArrayList<String>) request.getAttribute("homered");
//                        ArrayList<String> awayred = (ArrayList<String>) request.getAttribute("awayred");
//                        ArrayList<String> homesave = (ArrayList<String>) request.getAttribute("homesave");
//                        ArrayList<String> awaysave = (ArrayList<String>) request.getAttribute("awaysave");
//                        ArrayList<String> homeown = (ArrayList<String>) request.getAttribute("homeown");
//                        ArrayList<String> awayown = (ArrayList<String>) request.getAttribute("awayown");
//                        ArrayList<String> homepkmissed = (ArrayList<String>) request.getAttribute("homepkmissed");
//                        ArrayList<String> awaypkmissed = (ArrayList<String>) request.getAttribute("awaypkmissed");
//                        ArrayList<String> homepksaved = (ArrayList<String>) request.getAttribute("homepksaved");
//                        ArrayList<String> awaypksaved = (ArrayList<String>) request.getAttribute("awaypksaved");
                        String dateSTR = null;

                    %>

                    <div class="col-md-12 col-sm-6 col-xs-12 fixtures" id="somediv">
                            <h4 id="gameweekid" style="font-family: Century Gothic;font-weight: bold;font-size: 15px;text-align: center;padding-bottom: 1% "><%=posts.get(0) + " - " + date.get(0)%></h4>
                            <button id="prev" value="<%=posts.get(1)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center;padding: 1%; float: left">
                                Previous
                            </button>
                            <h5 class="col-sm-6 hidden-xs" style="font-family: Century Gothic;text-align: center;font-weight: bold; font-size:18px;width: 68%;margin-top: -1%;margin-bottom: -2%" align="center">
                                <img src="img/nwsllogo.png" style="width: 23%;padding-right: 0.5%" >Fixtures
                            </h5>
                            <%  String displaynext = "disabled";
                                if (!posts.get(2).equals("Gameweek 25")) {
                                    displaynext = "";
                                }
                            %>
                            <button id="next" value="<%=posts.get(2)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center; padding: 1%;float: right;" <%=displaynext%>>
                                Next
                            </button>


                            <div id="first">
                                <%
                                    for (int i = 0; i < date.size(); i++) {
                                        String game = "game" + i;

                                        if (!date.get(i).equals(dateSTR)) {


                                %>
                                <h6 class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "><%=date.get(i)%></h6>
                                <%
                                        dateSTR = date.get(i);

                                    }
                                %>
                                <a data-toggle="collapse" href="#<%=game%>" style="color:black" onclick="fixturestats('<%=i%>');"> 
                                    <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                        <div class="row" style="">
                                            <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                <h6 id="home<%=i%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                            </div>
                                            <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                <img style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                            </div>
                                            <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                <h6 style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                            </div>
                                            <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                <img class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
                                            </div>
                                            <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                <h6 id="away<%=i%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <div id="<%=game%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                    <div id="goaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                    </div>
                                    <div id="goalstat<%=i%>" class="row2" style="width: 100%; " >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    int j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li id="homegoal<%=j%>-<%=i%>"></li>
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awaygoal<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="owntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                    </div>
                                    <div id="ownstat<%=i%>" class="row2" style="width: 100%;" >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="homeown<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awayown<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="assisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                    </div>
                                    <div id="assiststats<%=i%>" class="row2" style="width: 100%;" >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="homeassist<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awayassist<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="yellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                    </div>
                                    <div id="yellowstats<%=i%>" class="row2" style="width: 100%;" >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="homeyellow<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awayyellow<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="redtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                    </div>
                                    <div id="redstats<%=i%>" class="row2" style="width: 100%; " >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="homered<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awayred<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="pkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                        <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                    </div>
                                    <div id="pkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="homepkmissed<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awaypkmissed<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="pksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                        <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                    </div>
                                    <div id="pksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="homepksaved<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>

                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awaypksaved<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>

                                    <div id="savetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                    </div>
                                    <div id="savestats<%=i%>" class="row2" style="width: 100%;" >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="homesave<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    j = 0;
                                                    while (j <= 10) {
                                                %>

                                                <li  id="awaysave<%=j%>-<%=i%>" ></li> 
                                                    <%
                                                            j++;
                                                        }
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <% }%>
                            </div>
                            <div id="last" style="display:none">
                                <div id="monday">
                                    <h6 id="mondaytitle" class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "></h6>
                                    <%
                                        String mondaygame;
                                        String mondayhome;
                                        String mondayhomebadge;
                                        String mondayscore;
                                        String mondayaway;
                                        String mondayawaybadge;

                                        for (int i = 0; i < 4; i++) {
                                            mondaygame = "mondaygame" + i;
                                            mondayhome = "mondayhome" + i;
                                            mondayhomebadge = "mondayhomebadge" + i;
                                            mondayscore = "mondayscore" + i;
                                            mondayaway = "mondayaway" + i;
                                            mondayawaybadge = "mondayawaybadge" + i;
                                    %>
                                    <a id="<%=mondaygame + "id"%>" data-toggle="collapse" href="#<%=mondaygame%>" style="color:black" onclick="fixturestatsbtn('<%=i%>', 'monday');">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%=mondayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%=mondayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%=mondayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%=mondayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%=mondayaway%>" style="font-family: Century Gothic;font-size: 17px"> </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div id="<%= mondaygame%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div id="mondaygoaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div id="mondaygoalstat<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        int j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li id="mondayhomegoal<%=j%>-<%=i%>"></li>
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawaygoal<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="mondayowntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                        </div>
                                        <div id="mondayownstat<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayhomeown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawayown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="mondayassisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                        </div>
                                        <div id="mondayassiststats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayhomeassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawayassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="mondayyellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                        </div>
                                        <div id="mondayyellowstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayhomeyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawayyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="mondayredtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                        </div>
                                        <div id="mondayredstats<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayhomered<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawayred<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="mondaypkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                        </div>
                                        <div id="mondaypkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayhomepkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawaypkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="mondaypksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                        </div>
                                        <div id="mondaypksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayhomepksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawaypksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="mondaysavetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                        </div>
                                        <div id="mondaysavestats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayhomesave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="mondayawaysave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>            
                                    <%}%>
                                </div>

                                <div id="tuesday">
                                    <h6 id="tuesdaytitle" class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "></h6>
                                    <%
                                        String tuesdaygame;
                                        String tuesdayhome;
                                        String tuesdayhomebadge;
                                        String tuesdayscore;
                                        String tuesdayaway;
                                        String tuesdayawaybadge;

                                        for (int i = 0; i < 4; i++) {
                                            tuesdaygame = "tuesdaygame" + i;
                                            tuesdayhome = "tuesdayhome" + i;
                                            tuesdayhomebadge = "tuesdayhomebadge" + i;
                                            tuesdayscore = "tuesdayscore" + i;
                                            tuesdayaway = "tuesdayaway" + i;
                                            tuesdayawaybadge = "tuesdayawaybadge" + i;
                                    %>
                                    <a id="<%= tuesdaygame + "id"%>" data-toggle="collapse" href="#<%= tuesdaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" onclick="fixturestatsbtn('<%=i%>', 'tuesday');">
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= tuesdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= tuesdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= tuesdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= tuesdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= tuesdayaway%>" style="font-family: Century Gothic;font-size: 17px"> </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div id="<%= tuesdaygame%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div id="tuesdaygoaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div id="tuesdaygoalstat<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        int j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li id="tuesdayhomegoal<%=j%>-<%=i%>"></li>
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawaygoal<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="tuesdayowntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                        </div>
                                        <div id="tuesdayownstat<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayhomeown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawayown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="tuesdayassisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                        </div>
                                        <div id="tuesdayassiststats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayhomeassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawayassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="tuesdayyellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                        </div>
                                        <div id="tuesdayyellowstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayhomeyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawayyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="tuesdayredtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                        </div>
                                        <div id="tuesdayredstats<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayhomered<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawayred<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="tuesdaypkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                        </div>
                                        <div id="tuesdaypkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayhomepkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawaypkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="tuesdaypksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                        </div>
                                        <div id="tuesdaypksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayhomepksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawaypksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="tuesdaysavetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                        </div>
                                        <div id="tuesdaysavestats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayhomesave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="tuesdayawaysave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>       
                                    <%}%>
                                </div>
                                <div id="wednesday">
                                    <h6 id="wednesdaytitle" class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "></h6>
                                    <%
                                        String wednesdaygame;
                                        String wednesdayhome;
                                        String wednesdayhomebadge;
                                        String wednesdayscore;
                                        String wednesdayaway;
                                        String wednesdayawaybadge;

                                        for (int i = 0; i < 4; i++) {
                                            wednesdaygame = "wednesdaygame" + i;
                                            wednesdayhome = "wednesdayhome" + i;
                                            wednesdayhomebadge = "wednesdayhomebadge" + i;
                                            wednesdayscore = "wednesdayscore" + i;
                                            wednesdayaway = "wednesdayaway" + i;
                                            wednesdayawaybadge = "wednesdayawaybadge" + i;
                                    %>
                                    <a id="<%= wednesdaygame + "id"%>" data-toggle="collapse" href="#<%= wednesdaygame%>" style="color:black" onclick="fixturestatsbtn('<%=i%>', 'wednesday');">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= wednesdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= wednesdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= wednesdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= wednesdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= wednesdayaway%>" style="font-family: Century Gothic;font-size: 17px"> </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>


                                    <div id="<%= wednesdaygame%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div id="wednesdaygoaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div id="wednesdaygoalstat<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        int j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li id="wednesdayhomegoal<%=j%>-<%=i%>"></li>
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawaygoal<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="wednesdayowntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                        </div>
                                        <div id="wednesdayownstat<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayhomeown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawayown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="wednesdayassisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                        </div>
                                        <div id="wednesdayassiststats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayhomeassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawayassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="wednesdayyellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                        </div>
                                        <div id="wednesdayyellowstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayhomeyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawayyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="wednesdayredtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                        </div>
                                        <div id="wednesdayredstats<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayhomered<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawayred<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="wednesdaypkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                        </div>
                                        <div id="wednesdaypkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayhomepkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawaypkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="wednesdaypksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                        </div>
                                        <div id="wednesdaypksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayhomepksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawaypksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="wednesdaysavetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                        </div>
                                        <div id="wednesdaysavestats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayhomesave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="wednesdayawaysave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>            
                                    <%}%>
                                </div>
                                <div id="thursday">
                                    <h6 id="thursdaytitle" class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "></h6>
                                    <%
                                        String thursdaygame;
                                        String thursdayhome;
                                        String thursdayhomebadge;
                                        String thursdayscore;
                                        String thursdayaway;
                                        String thursdayawaybadge;

                                        for (int i = 0; i < 4; i++) {
                                            thursdaygame = "thursdaygame" + i;
                                            thursdayhome = "thursdayhome" + i;
                                            thursdayhomebadge = "thursdayhomebadge" + i;
                                            thursdayscore = "thursdayscore" + i;
                                            thursdayaway = "thursdayaway" + i;
                                            thursdayawaybadge = "thursdayawaybadge" + i;
                                    %>
                                    <a id="<%= thursdaygame + "id"%>" data-toggle="collapse" href="#<%= thursdaygame%>" style="color:black" onclick="fixturestatsbtn('<%=i%>', 'thursday');">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= thursdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= thursdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= thursdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= thursdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= thursdayaway%>" style="font-family: Century Gothic;font-size: 17px"> </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>



                                    <div id="<%=thursdaygame%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div id="thurdaygoaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div id="thursdaygoalstat<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        int j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li id="thursdayhomegoal<%=j%>-<%=i%>"></li>
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawaygoal<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="thursdayowntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                        </div>
                                        <div id="thursdayownstat<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayhomeown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawayown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="thursdayassisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                        </div>
                                        <div id="thursdayassiststats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayhomeassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawayassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="thursdayyellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                        </div>
                                        <div id="thursdayyellowstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayhomeyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawayyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="thursdayredtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                        </div>
                                        <div id="thursdayredstats<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayhomered<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawayred<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="thursdaypkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                        </div>
                                        <div id="thursdaypkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayhomepkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawaypkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="thursdaypksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                        </div>
                                        <div id="thursdaypksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayhomepksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawaypksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="thursdaysavetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                        </div>
                                        <div id="thursdaysavestats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayhomesave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="thursdayawaysave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>            
                                    <%}%>
                                </div>
                                <div id="friday">
                                    <h6 id="fridaytitle" class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "></h6>
                                    <%
                                        String fridaygame;
                                        String fridayhome;
                                        String fridayhomebadge;
                                        String fridayscore;
                                        String fridayaway;
                                        String fridayawaybadge;

                                        for (int i = 0; i < 4; i++) {
                                            fridaygame = "fridaygame" + i;
                                            fridayhome = "fridayhome" + i;
                                            fridayhomebadge = "fridayhomebadge" + i;
                                            fridayscore = "fridayscore" + i;
                                            fridayaway = "fridayaway" + i;
                                            fridayawaybadge = "fridayawaybadge" + i;
                                    %>
                                    <a id="<%= fridaygame + "id"%>" data-toggle="collapse" href="#<%= fridaygame%>" style="color:black" onclick="fixturestatsbtn('<%=i%>', 'friday');">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= fridayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= fridayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= fridayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= fridayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= fridayaway%>" style="font-family: Century Gothic;font-size: 17px"> </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div id="<%= fridaygame%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div id="fridaygoaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div id="fridaygoalstat<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        int j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li id="fridayhomegoal<%=j%>-<%=i%>"></li>
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawaygoal<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="fridayowntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                        </div>
                                        <div id="fridayownstat<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayhomeown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawayown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="fridayassisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                        </div>
                                        <div id="fridayassiststats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayhomeassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawayassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="fridayyellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                        </div>
                                        <div id="fridayyellowstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayhomeyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawayyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="fridayredtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                        </div>
                                        <div id="fridayredstats<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayhomered<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawayred<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="fridaypkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                        </div>
                                        <div id="fridaypkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayhomepkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawaypkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="fridaypksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                        </div>
                                        <div id="fridaypksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayhomepksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawaypksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="fridaysavetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                        </div>
                                        <div id="fridaysavestats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayhomesave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="fridayawaysave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>    
                                    <%}%>
                                </div>
                                <div id="saturday">
                                    <h6 id="saturdaytitle" class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "></h6>
                                    <%
                                        String saturdaygame;
                                        String saturdayhome;
                                        String saturdayhomebadge;
                                        String saturdayscore;
                                        String saturdayaway;
                                        String saturdayawaybadge;

                                        for (int i = 0; i < 4; i++) {
                                            saturdaygame = "saturdaygame" + i;
                                            saturdayhome = "saturdayhome" + i;
                                            saturdayhomebadge = "saturdayhomebadge" + i;
                                            saturdayscore = "saturdayscore" + i;
                                            saturdayaway = "saturdayaway" + i;
                                            saturdayawaybadge = "saturdayawaybadge" + i;
                                    %>
                                    <a id="<%=saturdaygame + "id"%>" data-toggle="collapse" href="#<%=saturdaygame%>" style="color:black" onclick="fixturestatsbtn('<%=i%>', 'saturday');">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%=saturdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%=saturdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%=saturdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%=saturdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%=saturdayaway%>" style="font-family: Century Gothic;font-size: 17px"> </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div id="<%= saturdaygame%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div id="saturdaygoaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div id="saturdaygoalstat<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        int j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li id="saturdayhomegoal<%=j%>-<%=i%>"></li>
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawaygoal<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="saturdayowntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                        </div>
                                        <div id="saturdayownstat<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayhomeown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawayown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="saturdayassisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                        </div>
                                        <div id="saturdayassiststats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayhomeassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawayassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="saturdayyellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                        </div>
                                        <div id="saturdayyellowstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayhomeyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawayyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="saturdayredtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                        </div>
                                        <div id="saturdayredstats<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayhomered<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawayred<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="saturdaypkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                        </div>
                                        <div id="saturdaypkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayhomepkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawaypkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="saturdaypksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                        </div>
                                        <div id="saturdaypksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayhomepksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawaypksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="saturdaysavetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                        </div>
                                        <div id="saturdaysavestats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayhomesave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="saturdayawaysave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>    
                                    <%}%>
                                </div><div id="sunday">
                                    <h6 id="sundaytitle" class="col-sm-12" style="font-family: Century Gothic;font-weight: lighter;font-size: 15px;text-align: center;margin-bottom: 0%;margin-top:2.5%;padding-bottom: 1%;border-bottom: 1px solid #e8e4e4; "></h6>
                                    <%
                                        String sundaygame;
                                        String sundayhome;
                                        String sundayhomebadge;
                                        String sundayscore;
                                        String sundayaway;
                                        String sundayawaybadge;

                                        for (int i = 0; i < 4; i++) {
                                            sundaygame = "sundaygame" + i;
                                            sundayhome = "sundayhome" + i;
                                            sundayhomebadge = "sundayhomebadge" + i;
                                            sundayscore = "sundayscore" + i;
                                            sundayaway = "sundayaway" + i;
                                            sundayawaybadge = "sundayawaybadge" + i;
                                    %>
                                    <a id="<%=sundaygame + "id"%>" data-toggle="collapse" href="#<%=sundaygame%>" style="color:black" onclick="fixturestatsbtn('<%=i%>', 'sunday');">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%=sundayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%=sundayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%=sundayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"> </h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%=sundayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src=" ">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%=sundayaway%>" style="font-family: Century Gothic;font-size: 17px"> </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div id="<%= sundaygame%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div id="sundaygoaltitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div id="sundaygoalstat<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        int j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li id="sundayhomegoal<%=j%>-<%=i%>"></li>
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawaygoal<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="sundayowntitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                        </div>
                                        <div id="sundayownstat<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayhomeown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawayown<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="sundayassisttitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                        </div>
                                        <div id="sundayassiststats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayhomeassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawayassist<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="sundayyellowtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                        </div>
                                        <div id="sundayyellowstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayhomeyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawayyellow<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="sundayredtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;  ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                        </div>
                                        <div id="sundayredstats<%=i%>" class="row2" style="width: 100%; " >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayhomered<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawayred<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="sundaypkmissedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                        </div>
                                        <div id="sundaypkmissedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayhomepkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawaypkmissed<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="sundaypksavedtitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                        </div>
                                        <div id="sundaypksavedstats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;float:right;text-align: right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayhomepksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawaypksaved<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>

                                        <div id="sundaysavetitle<%=i%>" class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%; ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                        </div>
                                        <div id="sundaysavestats<%=i%>" class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayhomesave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <%
                                                        j = 0;
                                                        while (j <= 10) {
                                                    %>

                                                    <li  id="sundayawaysave<%=j%>-<%=i%>" ></li> 
                                                        <%
                                                                j++;
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>    
                                    <%}%>
                                </div>
                            </div>
                        </div>
                </div>
            </div>

            <%

                ArrayList<String> gkname = (ArrayList<String>) request.getAttribute("namegk");

                ArrayList<String> gkteam = (ArrayList<String>) request.getAttribute("teamgk");
                ArrayList<String> gkprice = (ArrayList<String>) request.getAttribute("pricegk");
                ArrayList<String> gkscore = (ArrayList<String>) request.getAttribute("scoregk");
                ArrayList<String> gkinjury = (ArrayList<String>) request.getAttribute("injurygk");
                ArrayList<String> gk = (ArrayList<String>) request.getAttribute("badgegk");
                ArrayList<String> defname = (ArrayList<String>) request.getAttribute("namedef");
                ArrayList<String> defteam = (ArrayList<String>) request.getAttribute("teamdef");
                ArrayList<String> defprice = (ArrayList<String>) request.getAttribute("pricedef");
                ArrayList<String> defscore = (ArrayList<String>) request.getAttribute("scoredef");
                ArrayList<String> definjury = (ArrayList<String>) request.getAttribute("injurydef");
                ArrayList<String> def = (ArrayList<String>) request.getAttribute("badgedef");
                ArrayList<String> midname = (ArrayList<String>) request.getAttribute("namemid");
                ArrayList<String> midteam = (ArrayList<String>) request.getAttribute("teammid");
                ArrayList<String> midprice = (ArrayList<String>) request.getAttribute("pricemid");
                ArrayList<String> midscore = (ArrayList<String>) request.getAttribute("scoremid");
                ArrayList<String> mid = (ArrayList<String>) request.getAttribute("badgemid");
                ArrayList<String> midinjury = (ArrayList<String>) request.getAttribute("injurymid");
                ArrayList<String> fwdname = (ArrayList<String>) request.getAttribute("namefwd");
                ArrayList<String> fwdteam = (ArrayList<String>) request.getAttribute("teamfwd");
                ArrayList<String> fwdprice = (ArrayList<String>) request.getAttribute("pricefwd");
                ArrayList<String> fwdscore = (ArrayList<String>) request.getAttribute("scorefwd");
                ArrayList<String> fwd = (ArrayList<String>) request.getAttribute("badgefwd");
                ArrayList<String> fwdinjury = (ArrayList<String>) request.getAttribute("injuryfwd");

            %>            

            <div class="col-md-3 sidebar" style="padding-right: 0">
                <div style="border-bottom:1px solid #ebebe4;border-left:1px solid #ebebe4;border-right:1px solid #ebebe4;margin-bottom: 5% ">
                    <div class="teambox">
                        <h3 style="font-family: Century Gothic;font-size: 19px; margin-left:5%; margin-top: 8%; line-height: 10px; font-weight: bold">Player Selection</h3>
                    </div>
                    <div style="margin-top:6%">                                
                        <label style="font-family: Century Gothic;font-size: 14px; margin-left:5%" for="sel1">View</label>
                        <select class="form-control " id ="selectPlayers"  data-size="5" onchange="showPlayers('')" >
                            <optgroup label="Global">
                                <option value="all">All players</option>
                            </optgroup>
                            <optgroup label="By Position">
                                <option value="Goalkeeper">Goalkeepers</option>
                                <option value="Defender">Defenders</option>
                                <option value="Midfielder">Midfielders</option>
                                <option value="Forward">Forwards</option>
                            </optgroup>
                            <optgroup label="By Team">
                               <optgroup label="By Team">
                                    <option id="chi" value="Chicago Red Stars" >Chicago Red Stars</option>
                                    <option id="hou" value="Houston Dash">Houston Dash</option>
                                    <option id="nc" value="North Carolina Courage">North Carolina Courage</option>
                                    <option id="orl" value="Orlando Pride">Orlando Pride</option>
                                    <option id="por" value="Portland Thorns FC">Portland Thorns FC</option>
                                    <option id="sea" value="Seattle Reign FC">Seattle Reign FC</option>
                                    <option id="nj" value="Sky Blue FC">Sky Blue FC</option> 
                                    <option id="uta" value="Utah Royals FC">Utah Royals FC</option>
                                    <option id="was" value="Washington Spirit">Washington Spirit</option> 
                                </optgroup>
                            </optgroup>
                        </select>
                    </div>
                    <div style="margin-top:6%">
                        <label style="font-family: Century Gothic;font-size: 14px; margin-left:5%" for="sel1">Sorted by</label>
                        <select class="form-control"  data-size="5" id="categorySelection" onchange="showPlayers('')">
                            <option value="score">Total score</option>
                            <option value="gw">Round score</option> 
                            <option value="price">Price</option>
                            <option>Teams selected by %</option>
                            <option value="minutes">Minutes played</option>
                            <option value="Goal">Goal scored</option>
                            <option value="assist">Assists</option>
                            <option value="cleanSheet">Clean sheets</option>
                            <option value="ownGoal">Own goals</option>
                            <option value="goalConceded">Goals conceded</option>
                            <option value="pkSaved">Penalties saved</option>
                            <option value="pkMissed">Penalties missed</option>
                            <option value="yellow">Yellow cards</option>
                            <option value="red">Red cards</option>
                            <option>Bonus</option> 
                            <option value="saves">Saves</option>
                        </select>
                    </div>
                    <div style="margin-top:6%">
                        <label style="font-family: Century Gothic;font-size: 14px; margin-left:5%" for="sel1">Maximum Price</label>
                        <select class="form-control"  data-size="5">
                            <option>Unlimited</option>
                            <option>$11.0</option>
                            <option>$10.5</option>
                            <option>$10.0</option>
                            <option>$9.5</option>
                            <option>$9.0</option>
                            <option>$8.5</option>
                            <option>$8.0</option>
                            <option>$7.5</option>
                            <option>$7.0</option>
                            <option>$6.5</option>
                            <option>$6.0</option>
                            <option>$5.5</option> 
                            <option>$5.0</option>
                            <option>$4.5</option>
                            <option>$4.0</option>
                        </select>
                    </div>                   

                    <div class="wrap" style="margin-top:6%">
                        <div class="search">
                            <label style="font-family: Century Gothic;font-size: 14px" for="sel1">Search Player List</label>
                            <input type="text" class="searchTerm" id="searchBOX" placeholder="Search">
                            <button type="submit" class="searchButton" onclick="search()">
                                <i class="fa fa-search" ></i>
                            </button>
                        </div>
                    </div>
                    <div>
                        <h6 class="text-center" style="font-family: Century Gothic;font-size: 14px; line-height: 10px; font-weight:lighter; margin-top: 7%"><strong style="font-family: Century Gothic;color:#d4213c;font-size: 15px" id ="total"><%=request.getAttribute("total")%></strong> players shown</h6>
                    </div>
                    <div>
                        <table style="width:100%; background-color: #f1f1f1" id='gk'>
                            <tr style="font-family: Century Gothic;color:#fff; background-color: #222427">
                                <th></th>
                                <th style="padding-left: 5px">GOALKEEPERS</th> 
                                <th style="text-align: center">$</th>
                                <th id="catGK" style="text-align: center">TS</th>
                            </tr>
                            <tr id='gk1' data-toggle="modal" style='cursor:pointer' onclick="openModalselectGK(1)">
                                <%
                                    String classSTR;
                                    String color;
                                    if (gkinjury.get(1).equals("NO")) {
                                        classSTR = "glyphicon glyphicon-info-sign";
                                        color = "";
                                    } else {
                                        classSTR = "glyphicon glyphicon-one-fine-red-dot";
                                        color = "";
                                    }
                                %>
                                <td style='font-family: Century Gothic; font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center'><span id="gkinjury1"  class="<%=classSTR%>" style="color:<%=color%>"></span></td>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="gkimage1" src="img/<%=gk.get(0)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px">
                                        <span class='underline' id="gkname1" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=gkname.get(0)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="gkteam1" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter"><%=gkteam.get(0)%></span>
                                    </div>
                                </td>
                                <td id="gkprice1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= gkprice.get(0)%></td>
                                <td id="gkscore1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= gkscore.get(0)%></td>
                            </tr>
                            <tr id='gk2' style='cursor:pointer' onclick="openModalselectGK(2)">
                                <%
                                    if (gkinjury.get(1).equals("NO")) {
                                        classSTR = "glyphicon glyphicon-info-sign";
                                        color = "";
                                    } else {
                                        classSTR = "glyphicon glyphicon-one-fine-red-dot";
                                        color = "";
                                    }
                                %>
                                <td style=' font-family: Century Gothic;font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="gkinjury2" class="<%=classSTR%>" style="color:<%=color%>"</span></td>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="gkimage2" src="img/<%=gk.get(1)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="gkname2" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=gkname.get(1)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="gkteam2" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=gkteam.get(1)%></span>
                                    </div>
                                </td>
                                <td id="gkprice2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= gkprice.get(1)%></td>
                                <td id="gkscore2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= gkscore.get(1)%></td>
                            </tr>
                            <%
                                String gkstr;
                                String gkimagestr;
                                String gknamestr;
                                String gkteamstr;
                                String gkpricestr;
                                String gkscorestr;
                                String gkinjurystr;

                                for (int i = 3; i <= 20; i++) {
                                    gkstr = "gk" + i;
                                    gkimagestr = "gkimage" + i;
                                    gknamestr = "gkname" + i;
                                    gkteamstr = "gkteam" + i;
                                    gkpricestr = "gkprice" + i;
                                    gkscorestr = "gkscore" + i;
                                    gkinjurystr = "gkinjury" + i;

                            %>
                            <tr id='<%=gkstr%>' style='display:none;cursor:pointer' onclick="openModalselectGK(<%=i%>)">
                                <%
                                    if (gkinjury.get(1).equals("NO")) {
                                        classSTR = "glyphicon glyphicon-info-sign";
                                        color = "";
                                    } else {
                                        classSTR = "glyphicon glyphicon-one-fine-red-dot";
                                        color = "";
                                    }%>
                                <td style='font-family: Century Gothic; font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center '><span id="<%=gkinjurystr%>" class="<%=classSTR%>" style="color:<%=color%>"></span></td>

                                <td style=" font-family: Century Gothic;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="<%=gkimagestr%>" src="img/<%=gk.get(1)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="<%=gknamestr%>" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=gkname.get(1)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="<%=gkteamstr%>" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=gkteam.get(1)%></span>
                                    </div>
                                <td id="<%=gkpricestr%>" style=" font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%  ">$<%= gkprice.get(1)%></td>
                                <td id="<%=gkscorestr%>" style=" font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%     "><%= gkscore.get(1)%></td>
                            </tr>

                            <%
                                }%>
                        </table>
                        <table style="width:100%; background-color: #f1f1f1" id='def'>
                            <tr style="font-family: Century Gothic;color: #fff;background-color: #383838">
                                <th></th>
                                <th>DEFENDERS</th> 
                                <th style="text-align: center">$</th>
                                <th id="catDEF" style="text-align: center">TS</th>
                            </tr>
                            <tr id="def1" style='cursor:pointer' onclick="openModalselectDEF(1)">
                                <%
                                    if (definjury.get(0).equals("NO")) { %>
                                <td style=' font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center '><span id="definjury1" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (definjury.get(0).equals("OUT")) {
                                    %>
                                <td style="font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center "><span id="definjury1" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style="font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60%">
                                    <div>
                                        <img id="imagedef1" src="img/<%=def.get(0)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px">
                                        <span class='underline' id="namedef1" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=defname.get(0)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamdef1" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter"><%=defteam.get(0)%></span>
                                    </div>
                                </td>
                                <td id="pricedef1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= defprice.get(0)%></td>
                                <td id="scoredef1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= defscore.get(0)%></td>
                            </tr>
                            <tr id="def2" style='cursor:pointer'onclick="openModalselectDEF(2)">
                                <%
                                    if (definjury.get(1).equals("NO")) { %>
                                <td style=' font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center'><span id="definjury2" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (definjury.get(1).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury2" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagedef2" src="img/<%=def.get(1)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namedef2" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=defname.get(1)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamdef2" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=defteam.get(1)%></span>
                                    </div>
                                </td>
                                <td id="pricedef2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= defprice.get(1)%></td>
                                <td id="scoredef2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= defscore.get(1)%></td>
                            </tr>
                            <tr id="def3" style='cursor:pointer' onclick="openModalselectDEF(3)">
                                <%
                                    if (definjury.get(2).equals("NO")) { %>
                                <td style=' font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury3" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (definjury.get(2).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury3" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagedef3" src="img/<%=def.get(2)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namedef3" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=defname.get(2)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamdef3" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=defteam.get(2)%></span>
                                    </div>
                                </td>
                                <td id="pricedef3" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= defprice.get(2)%></td>
                                <td id="scoredef3" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= defscore.get(2)%></td>
                            </tr>
                            <tr id="def4" style='cursor:pointer' onclick="openModalselectDEF(4)">
                                <%
                                    if (definjury.get(3).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury4" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (definjury.get(3).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury4" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagedef4" src="img/<%=def.get(3)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namedef4" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=defname.get(3)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamdef4" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=defteam.get(3)%></span>
                                    </div>
                                </td>
                                <td id="pricedef4" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= defprice.get(3)%></td>
                                <td id="scoredef4" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= defscore.get(3)%></td>
                            </tr>
                            <tr id="def5" style='cursor:pointer' onclick="openModalselectDEF(5)">
                                <%
                                    if (definjury.get(4).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury5" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (definjury.get(4).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury5" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagedef5" src="img/<%=def.get(4)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namedef5" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=defname.get(4)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamdef5" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=defteam.get(4)%></span>
                                    </div>
                                </td>
                                <td id="pricedef5" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= defprice.get(4)%></td>
                                <td id="scoredef5" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= defscore.get(4)%></td>
                            </tr>
                            <tr id="def6" style='cursor:pointer' onclick="openModalselectDEF(6)">
                                <%
                                    if (definjury.get(5).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury6" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (definjury.get(5).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="definjury6" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagedef6" src="img/<%=def.get(5)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namedef6" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=defname.get(5)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamdef6" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=defteam.get(5)%></span>
                                    </div>
                                </td>
                                <td id="pricedef6" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= defprice.get(5)%></td>
                                <td id="scoredef6" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= defscore.get(5)%></td>
                            </tr>

                            <%
                                String defstr;
                                String defimagestr;
                                String defnamestr;
                                String defteamstr;
                                String defpricestr;
                                String defscorestr;
                                String definjurystr;
                                for (int i = 7; i <= 20; i++) {
                                    defstr = "def" + i;
                                    defimagestr = "imagedef" + i;
                                    defnamestr = "namedef" + i;
                                    defteamstr = "teamdef" + i;
                                    defpricestr = "pricedef" + i;
                                    defscorestr = "scoredef" + i;
                                    definjurystr = "definjury" + i;
                            %>
                            <tr id='<%=defstr%>' style='display:none;cursor:pointer' onclick="openModalselectDEF(<%=i%>)">
                                <%
                                    if (definjury.get(0).equals("NO")) {%>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="<%=definjurystr%>" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (definjury.get(0).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="<%=definjurystr%>" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="<%=defimagestr%>" src="img/<%=def.get(1)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="<%=defnamestr%>" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=defname.get(1)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="<%=defteamstr%>" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=defteam.get(1)%></span>
                                    </div>
                                </td>
                                <td id="<%=defpricestr%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= defprice.get(1)%></td>
                                <td id="<%=defscorestr%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= defscore.get(1)%></td>
                            </tr>
                            <%
                                }%>
                        </table>
                        <table style="width:100%; background-color: #f1f1f1" id='mid'>
                            <tr style="font-family: Century Gothic;color: #fff;background-color: #484848">
                                <th></th>
                                <th style="padding-left:5px">MIDFIELDERS</th> 
                                <th style="text-align: center">$</th>
                                <th id="catMID" style="text-align: center">TS</th>
                            </tr>
                            <tr id='mid1' style='cursor:pointer'  onclick="openModalselectMID(1)">
                                <%
                                    if (midinjury.get(0).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury1" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (midinjury.get(0).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury1" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagemid1" src="img/<%=mid.get(0)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px">
                                        <span class='underline' id="namemid1" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=midname.get(0)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teammid1" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter"><%=midteam.get(0)%></span>
                                    </div>
                                </td>
                                <td id="pricemid1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= midprice.get(0)%></td>
                                <td id="scoremid1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= midscore.get(0)%></td>
                            </tr>                            
                            <tr id='mid2' style='cursor:pointer' onclick="openModalselectMID(2)">
                                <%
                                    if (midinjury.get(1).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury2" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (midinjury.get(1).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury2" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagemid2" src="img/<%=mid.get(1)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namemid2" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=midname.get(1)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teammid2" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=midteam.get(1)%></span>
                                    </div>
                                </td>
                                <td id="pricemid2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= midprice.get(1)%></td>
                                <td id="scoremid2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= midscore.get(1)%></td>
                            </tr>
                            <tr id="mid3" style='cursor:pointer' onclick="openModalselectMID(3)" >
                                <%
                                    if (midinjury.get(2).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury3" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (midinjury.get(2).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury3" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagemid3" src="img/<%=mid.get(2)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namemid3" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=midname.get(2)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teammid3" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=midteam.get(2)%></span>
                                    </div>
                                </td>
                                <td id="pricemid3" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= midprice.get(2)%></td>
                                <td id="scoremid3" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= midscore.get(2)%></td>
                            </tr>
                            <tr id="mid4" style='cursor:pointer' onclick="openModalselectMID(4)">
                                <%
                                    if (midinjury.get(3).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury4" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (midinjury.get(3).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury4" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagemid4" src="img/<%=mid.get(3)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namemid4" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=midname.get(3)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teammid4" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=midteam.get(3)%></span>
                                    </div>
                                </td>
                                <td id="pricemid4" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= midprice.get(3)%></td>
                                <td id="scoremid4" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= midscore.get(3)%></td>
                            </tr>
                            <tr id="mid5" style='cursor:pointer' onclick="openModalselectMID(5)">
                                <%
                                    if (midinjury.get(4).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury5" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (midinjury.get(4).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury5" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagemid5" src="img/<%=mid.get(4)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namemid5" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=midname.get(4)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teammid5" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=midteam.get(4)%></span>
                                    </div>
                                </td>
                                <td id="pricemid5" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= midprice.get(4)%></td>
                                <td id="scoremid5" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= midscore.get(4)%></td>
                            </tr>
                            <tr id="mid6" style='cursor:pointer' onclick="openModalselectMID(6)">
                                <%
                                    if (midinjury.get(5).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury6" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (midinjury.get(5).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="midinjury6" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagemid6" src="img/<%=mid.get(5)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namemid6" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=midname.get(5)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teammid6" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=midteam.get(5)%></span>
                                    </div>
                                </td>
                                <td id="pricemid6" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= midprice.get(5)%></td>
                                <td id="scoremid6" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= midscore.get(5)%></td>
                            </tr>
                            <%
                                String midstr;
                                String midimagestr;
                                String midnamestr;
                                String midteamstr;
                                String midpricestr;
                                String midscorestr;
                                String midinjurystr;
                                for (int i = 7; i <= 20; i++) {
                                    midstr = "mid" + i;
                                    midimagestr = "imagemid" + i;
                                    midnamestr = "namemid" + i;
                                    midteamstr = "teammid" + i;
                                    midpricestr = "pricemid" + i;
                                    midscorestr = "scoremid" + i;
                                    midinjurystr = "midinjury" + i;

                            %>
                            <tr id='<%=midstr%>' style='display:none;cursor:pointer' onclick="openModalselectMID(<%=i%>)">
                                <%
                                    if (midinjury.get(0).equals("NO")) {%>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="<%=midinjurystr%>" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (midinjury.get(0).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="<%=midinjurystr%>" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="<%=midimagestr%>" src="img/<%=mid.get(1)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="<%=midnamestr%>" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=midname.get(1)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="<%=midteamstr%>" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=midteam.get(1)%></span>
                                    </div>
                                </td>
                                <td id="<%=midpricestr%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= midprice.get(1)%></td>
                                <td id="<%=midscorestr%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= midscore.get(1)%></td>
                            </tr>                            
                            <%
                                }%>
                        </table>
                        <table style="width:100%; background-color: #f1f1f1" id='fwd'>
                            <tr style="font-family: Century Gothic;color: #fff;background-color: #505050">
                                <th></th>
                                <th style="padding-left:5px">FORWARDS</th> 
                                <th style="text-align: center">$</th>
                                <th id="catFWD" style="text-align: center">TS</th>
                            </tr>
                            <tr id="fwd1" style='cursor:pointer' onclick="openModalselectFWD(1)">
                                <%
                                    if (fwdinjury.get(0).equals("NO")) { %>
                                <td style='font-family: Century Gothic; font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury1" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (fwdinjury.get(0).equals("OUT")) {
                                    %>
                                <td style='font-family: Century Gothic; font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury1" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagefwd1" src="img/<%=fwd.get(0)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namefwd1" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=fwdname.get(0)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamfwd1" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=fwdteam.get(0)%></span>
                                    </div>
                                </td>
                                <td id="pricefwd1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= fwdprice.get(0)%></td>
                                <td id="scorefwd1" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= fwdscore.get(0)%></td>
                            </tr>
                            <tr id="fwd2" style='cursor:pointer' onclick="openModalselectFWD(2)">
                                <%
                                    if (fwdinjury.get(1).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury2" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (fwdinjury.get(1).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury2" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagefwd2" src="img/<%=fwd.get(1)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namefwd2" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=fwdname.get(1)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamfwd2" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=fwdteam.get(1)%></span>
                                    </div>
                                </td>
                                <td id="pricefwd2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= fwdprice.get(1)%></td>
                                <td id="scorefwd2" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= fwdscore.get(1)%></td>
                            </tr>
                            <tr id="fwd3" style='cursor:pointer' onclick="openModalselectFWD(3)">
                                <%
                                    if (fwdinjury.get(2).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury3" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (fwdinjury.get(2).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury3" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagefwd3" src="img/<%=fwd.get(2)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namefwd3" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=fwdname.get(2)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamfwd3" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=fwdteam.get(2)%></span>
                                    </div>
                                </td>
                                <td id="pricefwd3" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= fwdprice.get(2)%></td>
                                <td id="scorefwd3" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= fwdscore.get(2)%></td>
                            </tr>
                            <tr id="fwd4" style='cursor:pointer' onclick="openModalselectFWD(4)">
                                <%
                                    if (fwdinjury.get(3).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury4" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (fwdinjury.get(3).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury4" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagefwd4" src="img/<%=fwd.get(3)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namefwd4" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=fwdname.get(3)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamfwd4" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=fwdteam.get(3)%></span>
                                    </div>
                                </td>
                                <td id="pricefwd4" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= fwdprice.get(3)%></td>
                                <td id="scorefwd4" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= fwdscore.get(3)%></td>
                            </tr>
                            <tr id="fwd5" style='cursor:pointer' onclick="openModalselectFWD(5)">
                                <%
                                    if (fwdinjury.get(4).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury5" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (fwdinjury.get(4).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury5" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagefwd5" src="img/<%=fwd.get(4)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namefwd5" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=fwdname.get(4)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamfwd5" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=fwdteam.get(4)%></span>
                                    </div>
                                </td>
                                <td id="pricefwd5" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= fwdprice.get(4)%></td>
                                <td id="scorefwd5" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= fwdscore.get(4)%></td>
                            </tr>
                            <tr id="fwd6" style='cursor:pointer' onclick="openModalselectFWD(6)">
                                <%
                                    if (fwdinjury.get(5).equals("NO")) { %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury6" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (fwdinjury.get(5).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="fwdinjury6" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="imagefwd6" src="img/<%=fwd.get(5)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="namefwd6" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=fwdname.get(5)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="teamfwd6" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=fwdteam.get(5)%></span>
                                    </div>
                                </td>
                                <td id="pricefwd6" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= fwdprice.get(5)%></td>
                                <td id="scorefwd6" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= fwdscore.get(5)%></td>
                            </tr>
                            <%
                                String fwdstr;
                                String fwdimagestr;
                                String fwdnamestr;
                                String fwdteamstr;
                                String fwdpricestr;
                                String fwdscorestr;
                                String fwdinjurystr;
                                for (int i = 7; i <= 20; i++) {
                                    fwdstr = "fwd" + i;
                                    fwdimagestr = "imagefwd" + i;
                                    fwdnamestr = "namefwd" + i;
                                    fwdteamstr = "teamfwd" + i;
                                    fwdpricestr = "pricefwd" + i;
                                    fwdscorestr = "scorefwd" + i;
                                    fwdinjurystr = "fwdinjury" + i;
                            %>
                            <tr id='<%=fwdstr%>' style='display:none;cursor:pointer' onclick="openModalselectFWD(<%=i%>)">
                                <%
                                    if (fwdinjury.get(5).equals("NO")) {%>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="<%=fwdinjurystr%>" class="glyphicon glyphicon-info-sign"></span></td>
                                    <% } else if (fwdinjury.get(5).equals("OUT")) {
                                    %>
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="<%=fwdinjurystr%>" class="glyphicon glyphicon-one-fine-red-dot" style="color:#c0020d;padding-bottom: 10px"></span></td>
                                    <% }
                                    %>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="<%=fwdimagestr%>" src="img/<%=fwd.get(5)%> " style="height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="<%=fwdnamestr%>" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap " ><%=fwdname.get(5)%></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="<%=fwdteamstr%>" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "><%=fwdteam.get(5)%></span>
                                    </div>
                                </td>
                                <td id="<%=fwdpricestr%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$<%= fwdprice.get(5)%></td>
                                <td id="<%=fwdscorestr%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"><%= fwdscore.get(5)%></td>
                            </tr>

                            <%
                                }%>

                        </table>
                        <table id="search" style="width:100%; background-color: #f9f5f5;display: none">
                            <tr style="font-family: Century Gothic;background-color:#1d3260 ">
                                <th ></th>
                                <th style="color: white">PLAYERS</th> 
                                <th style="text-align: center; color: white">$</th>
                                <th id="catsrch" style="text-align: center; color: white">TS</th>
                            </tr>
                            <%
                                String srchimage = "srchimage";
                                String srchname = "srchname";
                                String srchteam = "srchteam";
                                String srchpos = "srchpos";
                                String srchprice = "srchprice";
                                String srchscore = "srchscore";
                                String search = "search";
                                String srchinjury = "srchinjury";
                                for (int i = 1; i <= 25; i++) {
                                    srchimage = "srchimage" + i;
                                    srchname = "srchname" + i;
                                    srchteam = "srchteam" + i;
                                    srchpos = "srchpos" + i;
                                    srchprice = "srchprice" + i;
                                    srchscore = "srchscore" + i;
                                    search = "search" + i;
                                    srchinjury = "srchinjury" + i;
                            %>
                            <tr id="<%=search%>" style='display: none;cursor:pointer' onclick="searchModal(<%=i%>)">
                                <td style='font-size: 14px;border-bottom:1px solid white;width: 10%;text-align: center  '><span id="<%=srchinjury%>" class="glyphicon glyphicon-info-sign"></span></td>
                                <td style=" font-family: Century Gothic;text-align: left;border-bottom:1px solid white; padding: 5px;width: 60% ">
                                    <div>
                                        <img id="<%=srchimage%>" style="height:30px" />
                                    </div>                                    
                                    <div class='col-sm-10' style="width:80%;height: 30px;margin-top:-32px;left: 23px ">
                                        <span class='underline' id="<%=srchname%>" style="font-family: Century Gothic;font-size: 14px;text-overflow: ellipsis;white-space: nowrap;"></span>
                                        <hr style="border:none;margin-top: -22%">
                                        <span id="<%=srchteam%>" style="font-family: Century Gothic;font-size: 11px; font-weight: lighter "></span>
                                        <span id="<%=srchpos%>" style="font-family: Century Gothic; font-size: 11px;font-weight:lighter; padding-left: 5% "></span>
                                    </div>
                                </td>
                                <td id="<%=srchprice%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%">$</td>
                                <td id="<%=srchscore%>" style="font-family: Century Gothic;text-align: center ;font-size:13px; font-weight: lighter; border-bottom:1px solid white;width: 15.5%"></td>
                            </tr>       
                            <% }
                            %>
                        </table>        
                    </div>
                    <div class="col-md-12" style="width:100%; margin-bottom: 2%">
                        <button id="start" value="1" type="button" class="btn  btn-circle col-md-1 col-xs-1 smallbtn backwbtn" style="margin-top: 15px;" disabled>
                            <i class="glyphicon glyphicon-backward"></i></button>

                        <button id="prevPlayers" value="1" type="button" class="btn  btn-circle btn-lg  col-md-2 col-xs-2 lgbtn" style="margin-left: 4px;" disabled>
                            <i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>

                        <h6 id="pageTitle" class="col-md-6 col-xs-6" style="font-family: Century Gothic; width: 40%;text-align: center;font-weight: lighter;margin-top: 10%; font-size: 12px;padding-right: 9px;padding-left: 9px;">Page 
                            <span id="page" style="font-family: Century Gothic; font-weight: bold" >1</span> of 10 </h6>

                        <button  id="nextPlayers" value="2"  type="button" class="btn  btn-circle btn-lg col-md-2 col-xs-2 lgbtn" style="margin-right: 4px;">
                            <i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>

                        <button id="end" value="10" type="button" class="btn btn- btn-circle col-md-1 col-xs-1 smallbtn forbtn" style="margin-top: 15px;">
                            <i class="glyphicon glyphicon-forward"></i></button>


                        <button id="startSelect" value="1" type="button" class="btn btn-circle col-md-1 col-xs-1 smallbtn backwbtn" style="margin-top: 15px;display:none " disabled>
                            <i class="glyphicon glyphicon-backward"></i></button>           
                        <button id="prevPlayersSelect" value="1" type="button" class="btn  btn-circle btn-lg  col-md-2 col-xs-2 lgbtn " style="margin-left: 4px;display:none;" disabled>
                            <i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>                        
                        <h6 id="pageSelect"  class="col-md-6 col-xs-6" style="font-family: Century Gothic; width: 40%;text-align: center;font-weight: lighter;margin-top: 10%; font-size: 12px;padding-right: 9px;padding-left: 9px;display:none;">Page 
                            <span id="pageNo" style="font-family: Century Gothic; font-weight: bold" >1</span> of <span id="totalPage">11</span> </h6>                        
                        <button  id="nextPlayersSelect" value="2"  type="button" class="btn  btn-circle btn-lg col-md-2 col-xs-2 lgbtn" style="margin-right: 4px;display:none">
                            <i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>                                               
                        <button id="endSelect"  type="button" class="btn btn-circle col-md-1 col-xs-1 smallbtn forbtn"style="margin-top: 15px;display:none;">
                            <i class="glyphicon glyphicon-forward"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!--players modal -->
    <div id="players" class="modal" role="dialog" data-keyboard="false" data-backdrop="static" >
        <div class="modal-dialog" style="width: 450px">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="font-family:Century Gothic; color: white; font-size: 16px; padding: 0.5%;padding-left: 2%">
                        <span id="modalTitle"></span></h4>
                </div>
                <!-- Modal content-->
                <div class="modal-body">
                    <p style="display:none" id="playersName"></p>
                    <p style="display:none" id="playerImage"></p>
                    <p style="display:none" id="playerPrice"></p>
                    <p style="display:none" id="playerNo"></p>
                    <p style="display:none" id="playerPosition"></p>
                    <p style="display:none" id="playerTeam"></p>
                    <button onclick="addPlayer()" type="button"  class="addbutton" >
                        Add Player 
                    </button> 
                    <button type="button" class="infobutton" id="info">
                        View Information
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div id="removePlayer" class="modal" role="dialog" data-keyboard="false" data-backdrop="static" >
        <div class="modal-dialog" style="width: 450px">

            <!-- Modal content-->
            <div class="modal-content" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="font-family:Century Gothic; color: white; font-size: 16px; padding: 0.5%;padding-left: 2%">
                        <span id="playersTitle"></span></h4>
                </div>
                <!-- Modal content-->
                <div class="modal-body">
                    <p style="display:none" id="rmvplayersName"></p>
                    <p style="display:none" id="rmvplayerNo"></p>
                    <p style="display:none" id="rmvplayerPosition"></p>
                    <p style="display:none" id="rmvplayerTeam"></p>
                    <button onclick="removePlayer()" type="button" class="addbutton   " >
                        Remove Player
                    </button> 
                    <button type="button" class="infobutton" id="infoButtonRM">
                        View Information
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div id="information" class="modal" role="dialog" data-keyboard="false" data-backdrop="static" >
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header-info">
                    <button type="button" class="close" data-dismiss="modal" style="" >&times;</button>
                    <h4 class="modal-title" style="color:#f8f8fa;font-size: 17px;padding: 0.5%;padding-left: 1.5%;">Player Info</h4>
                </div>
                <!-- Modal content-->
                <div class="modal-body" style="height: 280px;padding: 0">
                    <div class="col-md-12" style="background-color: #f8f8fa">
                        <div class="col-md-3" style="padding-left: 0">
                            <image id="nameimage" style="height: 100px;width: auto;"/>
                        </div>
                        <div class="col-md-8">
                            <h3 id="nameinfo" style="font-family: Century Gothic;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;"></h3>
                            <h5 id="posinfo" style="font-family: Century Gothic"></h5>
                            <h6 id="teaminfo" style="font-family: lato"></h6>
                        </div>
                        <div class="col-md-1" style="height: 100px;display: block;padding-right: 0;">
                            <image id="badgeinfo" style="height: 90px;width: auto;float: right;opacity: 0.2;margin-top: 7px;"/>
                        </div>
                    </div>
                    <div >
                        <table class="col-md-12" style="background-color: #deb8c2;font-family: Century Gothic">
                            <tr>
                                <th id="currgwinfo" class="col-md-4" style="text-align:center;font-size: 14px;padding: 1%">GW 22 </th>
                                <th class="col-md-4" style="text-align:center;font-size: 14px;padding: 1%">Total </th>
                                <th class="col-md-4" style="text-align:center;font-size: 14px;padding: 1%">Price </th>
                            </tr>
                            <tr style="text-align:center;font-size: 13px;font-weight: lighter">
                                <td id="currgwpointinfo" class="col-md-4" style="padding: 1%;padding-top: 0;"></td>
                                <td id="totalpointinfo"  class="col-md-4" style="padding: 1%;padding-top: 0;"></td>
                                <td id="priceinfo" class="col-md-4" style="padding: 1%;padding-top: 0;"></td>
                            </tr>
                        </table>
                    </div>
                    <div >
                        <table  class="col-md-12" style="background-color: #93a8e4;font-family: Century Gothic">
                            <tr>
                                <th class="col-md-1" style="text-align:center;font-size: 14px;padding: 1%">Birthday </th>
                                <th class="col-md-2" style="text-align:center;font-size: 14px;padding: 1%">Country </th>
                                <th class="col-md-2" style="text-align:center;font-size: 14px;padding: 1%">Height </th>
                                <th class="col-md-4" style="text-align:center;font-size: 14px;padding: 1%">College </th>
                                <th class="col-md-3" style="text-align:center;font-size: 14px;padding: 1%">Former Club </th>
                            </tr>
                            <tr style="text-align:center;font-size: 13px;margin-bottom: 0.5%;font-weight: lighter">
                                <td id="birthinfo" class="col-md-1" style="padding: 1%;padding-top: 0;"></td>
                                <td id="countryinfo" class="col-md-2" style="padding: 1%;padding-top: 0;"></td>
                                <td id="heightinfo" class="col-md-2" style="padding: 0;padding-bottom: 1%"></td>
                                <td id="collegeinfo" class="col-md-4" style="padding: 1%;padding-top: 0;"></td>
                                <td id="formerinfo" class="col-md-3" style="padding: 1%;padding-top: 0;"></td>
                            </tr>
                        </table>
                    </div>
                    <div id="buttonsSelection" class="col-md-12" style="margin-top:3%">
                        <div class="col-md-6  col-xs-6">
                            <button id="statistics" type="button" class="statsbtn" style="float:right">
                                Statistics
                            </button>
                        </div>
                        <div class="col-md-6  col-xs-6">
                            <button  id="fixture" type="button" class="statsbtn">
                                Fixtures
                            </button>
                        </div>
                    </div>
                    <div id="fixSel" class="col-md-12" style="display:none;    overflow: scroll;">
                        <table>
                            <%
                                for (int i = 1; i <= 24; i++) {
                            %>
                            <tr style="text-align:center;font-size: 13px;margin-bottom: 0.5%;font-weight: lighter">
                                <td id="fixture+<%=i%>"  class="col-md-2" style="padding: 1%;padding-top: 0;">Gameweek 1 </td>
                                <td id="date+<%=i%>" class="col-md-2" style="padding: 1%;padding-top: 0;">3/4/1993</td>
                                <td id="opponent+<%=i%>" class="col-md-2" style="padding: 1%;padding-top: 0;">vs Orlando Pride</td>
                                <td id="result+<%=i%>" class="col-md-2" style="padding: 1%;padding-top: 0;">1-0 </td>
                            </tr>
                            <%
                                }%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="fixtureModal" class="modal" role="dialog" data-keyboard="false" data-backdrop="static" >
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header-info">
                    <button type="button" class="close" data-dismiss="modal" style="" >&times;</button>
                    <p id="backButton" class="modal-title" style="padding: 0.3%;padding-left: 1.5%;color:white">
                        <span class="glyphicon glyphicon-arrow-left"></span></p>
                </div>
                <!-- Modal content-->
                <div class="modal-body" style="height: -webkit-fill-available;padding: 0;overflow-y: scroll;">
                    <div class="col-md-12" style="background-color: #f8f8fa">
                        <div class="col-md-3" style="padding-left: 0">
                            <image id="nameimageFix" style="height: 100px;width: auto;"/>
                        </div>
                        <div class="col-md-8">
                            <h3 id="nameinfoFix" style="font-family: Century Gothic"></h3>
                            <h5 id="posinfoFix" style="font-family: Century Gothic"></h5>
                            <h6 id="teaminfoFix" style="font-family: Century Gothic"></h6>
                        </div>
                        <div class="col-md-1" style="height: 100px;display: block;padding-right: 0;">
                            <image id="badgeinfoFix" style="height: 42px;width: auto;float: right;padding-right: 0;margin-top: 55px;"/>
                        </div>
                    </div>
                    <table style="width: 100%">
                        <tr style="font-family:Century Gothic;text-align:center;font-size: 13px;margin-bottom: 0.5%;background-color: #f1eded;">
                            <th id="fixture" style="padding: 1%;text-align: center">Gameweek</th>
                            <th id="date" style="padding: 1%;text-align: center">Date</th>
                            <th id="opponent" style="padding: 1%;text-align: center">Opponent</th>
                            <th id="result" style="padding: 1%;text-align: center">MP</th>
                        </tr>
                        <%
                            for (int i = 1; i <= 28; i++) {
                        %>
                        <tr style="font-family: Century Gothic;font-weight: lighter;text-align:center;font-size: 12px;margin-bottom: 0.5%;border-bottom: 1px solid #f1eded">
                            <td id="fixture<%=i%>"  class="col-md-2" style="padding: 1%"></td>                          
                            <td id="date<%=i%>" class="col-md-2" style="padding: 1%"></td>
                            <td id="opponent<%=i%>" class="col-md-2" style="padding: 1%"></td>
                            <td id="result<%=i%>" class="col-md-2" style="padding: 1%"></td>
                        </tr>
                        <%
                            }%>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div id="statisticsModal" class="modal" role="dialog" data-keyboard="false" data-backdrop="static" >
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header-info">
                    <button type="button" class="close" data-dismiss="modal" style="" >&times;</button>
                    <p id="backStats" class="modal-title" style="padding: 0.85%;padding-left: 1.5%;color:white">
                        <span class="glyphicon glyphicon-arrow-left"></span></p>
                </div>
                <!-- Modal content-->
                <div class="modal-body" style="height: -webkit-fill-available;padding: 0;overflow-y: scroll;">
                    <div class="col-md-12" style="background-color: #f8f8fa">
                        <div class="col-md-3" style="padding-left: 0">
                            <image id="nameimageStats" style="height: 100px;width: auto;"/>
                        </div>
                        <div class="col-md-8">
                            <h3 id="nameinfoStats" style="font-family: Century Gothic"></h3>
                            <h5 id="posinfoStats" style="font-family: Century Gothic"></h5>
                            <h6 id="teaminfoStats" style="font-family: Century Gothic"></h6>
                        </div>
                        <div class="col-md-1" style="height: 100px;display: block;padding-right: 0;">
                            <image id="badgeinfoStats" style="height: 42px;width: auto;float: right;padding-right: 0;margin-top: 55px;"/>
                        </div>
                    </div>
                    <table style="width: 100%"  class="scrollmenu">
                        <tr style="font-family:Century Gothic;text-align:center;font-size: 13px;margin-bottom: 0.5%;background-color: #f1eded;">
                            <th id="date" style="width:5.3%;padding: 1%;text-align: center">GW</th>
                            <th id="fixture" style="width: 22%;padding: 1%;text-align: center">OPP</th>
                            <th id="date" style="width:5.3%;padding: 1%;text-align: center">Pts</th>
                            <th id="opponent" style="width:5.3%;padding: 1%;text-align: center">MP</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">GS</th>
                            <th id="fixture"  style="width:5.3%;padding: 1%;text-align: center">A</th>
                            <th id="date" style="width:5.3%;padding: 1%;text-align: center">CS</th>
                            <th id="opponent" style="width:5.3%;padding: 1%;text-align: center">OG</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">GC</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">PC</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">PE</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">PS</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">PM</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">YC</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">RC</th>
                            <th id="result" style="width:5.3%;padding: 1%;text-align: center">S</th>
                        </tr>
                        <%
                            for (int i = 1; i <= 28; i++) {
                        %>
                        <tr id="gwstats<%=i%>"  style="font-family: Century Gothic;font-weight: lighter;text-align:center;font-size: 13px;margin-bottom: 0.5%;border-bottom: 1px solid #f1eded">
                            <td id="gw<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">1</td>
                            <td id="opp<%=i%>" style="width: 22%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">vs ORL (1-1)</td>
                            <td id="pts<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">1</td>
                            <td id="min<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">90</td>
                            <td id="goal<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">1 </td>
                            <td id="assist<%=i%>"  style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="cleanSheet<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="own<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="goalCon<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="pkCom<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="pkEarn<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="pkSave<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="pkMiss<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="yellow<%=i%>" style="width:5.3%;padding: 1%;text-align: center">0</td>
                            <td id="red<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                            <td id="save<%=i%>" style="width:5.3%;padding: 1%;padding-bottom: 1.5%;padding-top: 1.5%;text-align: center">0</td>
                        </tr>
                        <%
                            }%>
                    </table>
                </div>
            </div>
        </div>
    </div> 

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/playersTable.js"></script>
    <script src="js/fixturejs.js"></script>
    <script src="js/openModal.js"></script>


</body>

</html>