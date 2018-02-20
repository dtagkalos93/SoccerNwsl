<%@page import="com.fantasy.rosterPlayer"%>
<%@page import="com.fantasy.fixtureData"%>
<%@page import="java.util.ArrayList"%>
<%
    String teamemail = session.getAttribute("email").toString();
    rosterPlayer players = new rosterPlayer(teamemail);
    String goalkeeper = players.getGoalkeeper();
    String defence = players.getDefence();
    String midfielder = players.getMidfielder();
    String forward = players.getForward();
    String defenceNO = players.getDefenceNO();
    String midfielderNO = players.getMidfielderNO();
    String forwardNO = players.getForwardNO();
    String bench = players.getbench();

%>

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
        <link href="css/myTeam.css" rel="stylesheet">

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
    <body onload="goalkeeper('<%=goalkeeper%>');
            defence('<%=defence%>', '<%=defenceNO%>');
            midfielder('<%=midfielder%>', '<%=midfielderNO%>');
            forward('<%=forward%>', '<%=forwardNO%>');
            bench('<%=bench%>');">

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
                        <img class="navbar-brand topnav"  src="img/nwsl-topnav.png" style="width: auto; height: -webkit-fill-available; padding: 1px" >
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

        <div class="container extraClass  ">
            <ul class="nav nav-pills extraClassul">
                <li  ><a href="status.html">Status</a></li>
                <li class="nav-item active"><a href="myTeam.jsp">My Team</a></li>
                <li class="nav-item"><a href="transfers.jsp">Transfers</a></li>
                <li class="nav-item"><a href="leagues.html">Leagues</a></li>
                <li class="nav-item"><a href="fixture">Fixtures</a></li>
                <li class="nav-item"><a href="statistics.html">Statistics</a></li>
                <li class="nav-item"><a href="help.html">Help</a></li>
                <li class="nav-item"><a href="signout">Sign Out</a></li>
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

        <div class="container">
            <div class="row">

                <!-- Blog Entries Column -->
                <div class="col-md-9 top-gap">
                    <div class="row ">
                        <h3 class="col-md-12 col-xs-12"  style="font-family: Century Gothic">My Team</h3>
                        <div  class="col-md-12">
                            <div class="col-md-12" style="margin-top: 2%;margin-bottom: 2%;width: 100%;background-color:#050424">
                                <h6 style="color:white;font-size:14px;text-align:center; font-weight:lighter;margin-top: 8px;margin-bottom: 8px;font-family: Century Gothic" >Gameweek 3 Deadline:
                                    <strong style="color:#d21e25; font-size:19px;font-family: Century Gothic" >17 Jun 02:30PM ET </strong>
                                </h6>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12 bc-img" >
                            <hr style="border:none;margin-top: 6.5%"/>
                            <div id="selGK1" class="col-md-6 col-xs-6" style="left:29%"  >
                                <img class="image-player" id="gkimage" src="img/subsgk.png"/>
                                <p class="gkname" id="gkname" >Goalkeeper</p>
                                <p style="display: none" id="team1"></p>
                                <p style="display: none" id="pricegk1"></p>

                            </div>


                            <hr style="border:none;margin-top: 21%">
                            <div id="selDEF1" class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1" style="right:8%" >
                                <img class="image-player-cb" id="defimage1" src="img/subs.png"  />
                                <p id="defname1" class="cbname" >Defender</p>
                                <p style="display: none" id="team3"></p>
                                <p style="display: none" id="defprice1"></p>

                            </div>
                            <div id="selDEF2" class="col-md-2 col-xs-2" style="right:4.65%" >
                                <img class="image-player-cb" id="defimage2" src="img/subs.png" />
                                <p id="defname2" class="cbname" >Defender</p>
                                <p style="display: none" id="team4"></p>
                                <p style="display: none" id="defprice2"></p>

                            </div>
                            <div id="selDEF3" class="col-md-2 col-xs-2" style="right:1.5%" >
                                <img class="image-player-cb" id="defimage3" src="img/subs.png"  />
                                <p id="defname3" class="cbname" >Defender</p>
                                <p style="display: none" id="team5"></p>
                                <p style="display: none" id="defprice3"></p>

                            </div>
                            <div id="selDEF4" class="col-md-2 col-xs-2" style="left:1.65%" >
                                <img class="image-player-cb" id="defimage4" src="img/subs.png"  />
                                <p id="defname4" class="cbname" >Defender</p>
                                <p style="display: none" id="team6"></p>
                                <p style="display: none" id="defprice4"></p>

                            </div>
                            <div id="selDEF5" class="col-md-2 col-xs-2" style="left:4.7%" >
                                <img class="image-player-cb" id="defimage5" src="img/subs.png" />
                                <p id="defname5" class="cbname" >Defender</p>
                                <p style="display: none" id="team7"></p>
                                <p style="display: none" id="defprice5"></p>

                            </div>

                            <hr style="border:none;margin-top: 21%">                          
                            <div id="selMID1" class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1  " style="right: 8%" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage1" />
                                <p id="midname1" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team8"></p>
                                <p style="display: none" id="midprice1"></p>

                            </div>                            
                            <div id="selMID2" class="col-md-2 col-xs-2" style="right:4.65%" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage2" />
                                <p id="midname2" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team9"></p>
                                <p style="display: none" id="midprice2"></p>

                            </div>
                            <div id="selMID3" class="col-md-2 col-xs-2" style="right:1.5%" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage3" />
                                <p id="midname3" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team10"></p>
                                <p style="display: none" id="midprice3"></p>

                            </div>
                            <div id="selMID4" class="col-md-2 col-xs-2" style="left:1.65%" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage4" />
                                <p id="midname4" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team11"></p>
                                <p style="display: none" id="midprice4"></p>

                            </div>
                            <div id="selMID5" class="col-md-2 col-xs-2" style="left: 5%" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage5" />
                                <p id="midname5" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team12"></p>
                                <p style="display: none" id="midprice5"></p>

                            </div>                            

                            <hr style="border:none;margin-top: 21%">                          
                            <div id="selFWD1" class="col-md-4  col-xs-4   " style="left:10%" >
                                <img class="image-player-for" id="fwdimage1" src="img/subs.png"  />
                                <p id="fwdname1" class="gkname" >Forward</p>
                                <p style="display: none" id="team13"></p>
                                <p style="display: none" id="fwdprice1"></p>

                            </div>
                            <div id="selFWD2" class="col-md-4  col-xs-4   " style="left:6.9%">
                                <img class="image-player-for" id="fwdimage2" src="img/subs.png"  />
                                <p id="fwdname2" class="gkname" >Forward</p>
                                <p style="display: none" id="team14"></p>
                                <p style="display: none" id="fwdprice2"></p>

                            </div>
                            <div id="selFWD3" class="col-md-4  col-xs-4   " style="left:3% " >
                                <img class="image-player-for" id="fwdimage3" src="img/subs.png"  />
                                <p id="fwdname3" class="gkname" >Forward</p>
                                <p style="display: none" id="team15"></p>
                                <p style="display: none" id="fwdprice3  "></p>

                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12 pit-img">
                            <hr style="border:none;margin-top: 3.5%"/>

                            <div class="col-md-3  col-xs-3   " style="left:4%" data-toggle="modal" data-target="#players">
                                <img id="benimage1" class="image-player-for" src="img/couragegk.png"  />
                                <p id="benname1"  class="cbname" >D'Angelo</p>
                                <p class="cbname">8</p>
                                <p class="cbname">GK</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:3%" data-toggle="modal" data-target="#players">
                                <img id="benimage2" class="image-player-for" src="img/breakers1.png"  />
                                <p id="benname2"  class="cbname" >Westphal</p>
                                <p class="cbname">8</p>
                                <p class="cbname">1</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:2.25%" data-toggle="modal" data-target="#players">
                                <img id="benimage3" class="image-player-for" src="img/pride1.png"  />
                                <p id="benname3"  class="cbname" >Weatherholt</p>
                                <p class="cbname">8</p>
                                <p class="cbname">2</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:1.2%" data-toggle="modal" data-target="#players">
                                <img id="benimage4" class="image-player-for" src="img/thorns1.png"  />
                                <p id="benname4"  class="cbname" >Henry</p>
                                <p class="cbname">8</p>
                                <p class="cbname">3</p>
                            </div>
                        </div>

                        <%
                            fixtureData fixture = new fixtureData();
                            fixture.fixture();
                            ArrayList<String> posts = (ArrayList<String>) fixture.getdataList();
                            ArrayList<String> date = (ArrayList<String>) fixture.getdateList();
                            ArrayList<String> home = (ArrayList<String>) fixture.gethomeList();
                            ArrayList<String> homebadge = (ArrayList<String>) fixture.gethomebadgeList();
                            ArrayList<String> time = (ArrayList<String>) fixture.gettimeList();
                            ArrayList<String> away = (ArrayList<String>) fixture.getawayList();
                            ArrayList<String> awaybadge = (ArrayList<String>) fixture.getawaybadgeList();
                            ArrayList<String> homegoal = (ArrayList<String>) fixture.getgoalhomeList();
                            ArrayList<String> awaygoal = (ArrayList<String>) fixture.getgoalawayList();
                            ArrayList<String> homeassist = (ArrayList<String>) fixture.getassisthomeList();
                            ArrayList<String> awayassist = (ArrayList<String>) fixture.getassistawayList();
                            ArrayList<String> homeyellow = (ArrayList<String>) fixture.getyellowhomeList();
                            ArrayList<String> awayyellow = (ArrayList<String>) fixture.getyellowawayList();
                            ArrayList<String> homered = (ArrayList<String>) fixture.getredhomeList();
                            ArrayList<String> awayred = (ArrayList<String>) fixture.getredawayList();
                            ArrayList<String> homesave = (ArrayList<String>) fixture.getsavehomeList();
                            ArrayList<String> awaysave = (ArrayList<String>) fixture.getsaveawayList();
                            ArrayList<String> homeown = (ArrayList<String>) fixture.getownhomeList();
                            ArrayList<String> awayown = (ArrayList<String>) fixture.getownawayList();
                            ArrayList<String> homepkmissed = (ArrayList<String>) fixture.getpkmissedhomeList();
                            ArrayList<String> awaypkmissed = (ArrayList<String>) fixture.getpkmissedawayList();
                            ArrayList<String> homepksaved = (ArrayList<String>) fixture.getpksavedhomeList();
                            ArrayList<String> awaypksaved = (ArrayList<String>) fixture.getpksavedawayList();

                            String dateSTR = null;

                        %>

                        <div class="col-md-12 col-sm-6 col-xs-12 fixtures" id="somediv">
                            <h4 id="gameweekid" style="font-family: Century Gothic;font-weight: bold;font-size: 15px;text-align: center;padding-bottom: 1% "><%=posts.get(0) + " - " + date.get(0)%></h4>
                            <button id="prev" value="<%=posts.get(1)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center;padding: 1%; float: left">
                                Previous
                            </button>
                            <h5 class="col-sm-6 hidden-xs" style="font-family: Century Gothic;text-align: center;font-weight: bold; font-size:18px;left:6.5%; margin-top: -1%;margin-bottom: -2%" align="center">
                                <img src="img/nwsllogo.png" style="width: 31%;padding-right: 0.5%" >Fixtures
                            </h5>
                            <%  String displaynext = "none";
                                if (!posts.get(2).equals("Gameweek 23")) {
                                    displaynext = "";
                                }
                            %>
                            <button id="next" value="<%=posts.get(2)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center; padding: 1%;float: right;display: <%=displaynext%>">
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
                                <a data-toggle="collapse" href="#<%=game%>" style="color:black">
                                    <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                        <div class="row" style="">
                                            <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                <h6 style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                            </div>
                                            <div class="col-md-1 col-xs-1 ">
                                                <img style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                            </div>
                                            <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                <h6 style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                            </div>
                                            <div class="col-md-1 col-xs-1 ">
                                                <img class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                            </div>
                                            <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                <h6 style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <div id="<%=game%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                    <% String display;
                                        if (homegoal.get(0).equals(awaygoal.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; <%=display%> ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%> " >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    int j = 0;
                                                    while (!homegoal.get(j).equals("new")) {
                                                %>

                                                <li><%=homegoal.get(j)%></li>
                                                    <%
                                                            homegoal.remove(j);
                                                        }
                                                        homegoal.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awaygoal.get(j).equals("new")) {
                                                %>

                                                <li><%=awaygoal.get(j)%></li> 
                                                    <%
                                                            awaygoal.remove(j);
                                                        }
                                                        awaygoal.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                    <%
                                        if (homeown.get(0).equals(awayown.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;<%=display%> ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.47% " >Own Goal</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%>" >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    while (!homeown.get(j).equals("new")) {
                                                %>

                                                <li><%=homeown.get(j)%></li> 
                                                    <%
                                                            homeown.remove(j);
                                                        }
                                                        homeown.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awayown.get(j).equals("new")) {
                                                %>

                                                <li><%=awayown.get(j)%></li> 
                                                    <%
                                                            awayown.remove(j);
                                                        }
                                                        awayown.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                    <%
                                        if (homeassist.get(0).equals(awayassist.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;<%=display%> ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Assists</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%>" >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    while (!homeassist.get(j).equals("new")) {
                                                %>

                                                <li><%=homeassist.get(j)%></li> 
                                                    <%
                                                            homeassist.remove(j);
                                                        }
                                                        homeassist.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awayassist.get(j).equals("new")) {
                                                %>

                                                <li><%=awayassist.get(j)%></li> 
                                                    <%
                                                            awayassist.remove(j);
                                                        }
                                                        awayassist.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                    <%
                                        if (homeyellow.get(0).equals(awayyellow.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;<%=display%> ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Yellow cards</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%>" >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    while (!homeyellow.get(j).equals("new")) {
                                                %>

                                                <li><%=homeyellow.get(j)%></li> 
                                                    <%
                                                            homeyellow.remove(j);
                                                        }
                                                        homeyellow.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awayyellow.get(j).equals("new")) {
                                                %>

                                                <li><%=awayyellow.get(j)%></li> 
                                                    <%
                                                            awayyellow.remove(j);
                                                        }
                                                        awayyellow.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                    <%
                                        if (homered.get(0).equals(awayred.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;<%=display%>  ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Red cards</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%> " >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    while (!homered.get(j).equals("new")) {
                                                %>

                                                <li><%=homered.get(j)%></li> 
                                                    <%
                                                            homered.remove(j);
                                                        }
                                                        homered.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awayred.get(j).equals("new")) {
                                                %>

                                                <li><%=awayred.get(j)%></li> 
                                                    <%
                                                            awayred.remove(j);
                                                        }
                                                        awayred.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                    <%
                                        if (homepkmissed.get(0).equals(awaypkmissed.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;<%=display%> ">
                                        <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Missed</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%>" >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    while (!homepkmissed.get(j).equals("new")) {
                                                %>

                                                <li><%=homepkmissed.get(j)%></li> 
                                                    <%
                                                            homepkmissed.remove(j);
                                                        }
                                                        homepkmissed.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 1%;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awaypkmissed.get(j).equals("new")) {
                                                %>

                                                <li><%=awaypkmissed.get(j)%></li> 
                                                    <%
                                                            awaypkmissed.remove(j);
                                                        }
                                                        awaypkmissed.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                    <%
                                        if (homepksaved.get(0).equals(awaypksaved.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;<%=display%> ">
                                        <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Penalty Saved</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%>" >
                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;float:right;text-align: right">
                                                <%
                                                    while (!homepksaved.get(j).equals("new")) {
                                                %>

                                                <li><%=homepksaved.get(j)%></li> 
                                                    <%
                                                            homepksaved.remove(j);
                                                        }
                                                        homepksaved.remove(0);
                                                    %>
                                            </ul>
                                        </div>

                                        <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awaypksaved.get(j).equals("new")) {
                                                %>

                                                <li><%=awaypksaved.get(j)%></li> 
                                                    <%
                                                            awaypksaved.remove(j);
                                                        }
                                                        awaypksaved.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                    </div>
                                    <%
                                        if (homesave.get(0).equals(awaysave.get(0))) {
                                            display = "display:none";
                                        } else {
                                            display = "";
                                        }%>
                                    <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%;<%=display%> ">
                                        <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35% " >Saves</h6>
                                    </div>
                                    <div class="row2" style="width: 100%;<%=display%>" >
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;float:right">
                                                <%
                                                    while (!homesave.get(j).equals("new")) {
                                                %>

                                                <li><%=homesave.get(j)%></li> 
                                                    <%
                                                            homesave.remove(j);
                                                        }
                                                        homesave.remove(0);
                                                    %>
                                            </ul>
                                        </div>
                                        <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                            <ul style="list-style: none;margin-left: -12.6%">
                                                <%
                                                    while (!awaysave.get(j).equals("new")) {
                                                %>

                                                <li><%=awaysave.get(j)%></li> 
                                                    <%
                                                            awaysave.remove(j);
                                                        }
                                                        awaysave.remove(0);
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

                                        for (int i = 0; i < 5; i++) {
                                            mondaygame = "mondaygame" + i;
                                            mondayhome = "mondayhome" + i;
                                            mondayhomebadge = "mondayhomebadge" + i;
                                            mondayscore = "mondayscore" + i;
                                            mondayaway = "mondayaway" + i;
                                            mondayawaybadge = "mondayawaybadge" + i;
                                    %>
                                    <a id="<%=mondaygame + "id"%>" data-toggle="collapse" href="#<%=mondaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                    <h6 id="<%=mondayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%=mondayhomebadge%>" style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                    <h6 id="<%=mondayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%=mondayawaybadge%>" class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%=mondayaway%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
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

                                        for (int i = 0; i < 5; i++) {
                                            tuesdaygame = "tuesdaygame" + i;
                                            tuesdayhome = "tuesdayhome" + i;
                                            tuesdayhomebadge = "tuesdayhomebadge" + i;
                                            tuesdayscore = "tuesdayscore" + i;
                                            tuesdayaway = "tuesdayaway" + i;
                                            tuesdayawaybadge = "tuesdayawaybadge" + i;
                                    %>
                                    <a id="<%= tuesdaygame + "id"%>" data-toggle="collapse" href="#<%= tuesdaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                    <h6 id="<%= tuesdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= tuesdayhomebadge%>" style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                    <h6 id="<%= tuesdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= tuesdayawaybadge%>" class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= tuesdayaway%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
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

                                        for (int i = 0; i < 5; i++) {
                                            wednesdaygame = "wednesdaygame" + i;
                                            wednesdayhome = "wednesdayhome" + i;
                                            wednesdayhomebadge = "wednesdayhomebadge" + i;
                                            wednesdayscore = "wednesdayscore" + i;
                                            wednesdayaway = "wednesdayaway" + i;
                                            wednesdayawaybadge = "wednesdayawaybadge" + i;
                                    %>
                                    <a id="<%= wednesdaygame + "id"%>" data-toggle="collapse" href="#<%= wednesdaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                    <h6 id="<%= wednesdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= wednesdayhomebadge%>" style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                    <h6 id="<%= wednesdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= wednesdayawaybadge%>" class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= wednesdayaway%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
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

                                        for (int i = 0; i < 5; i++) {
                                            thursdaygame = "thursdaygame" + i;
                                            thursdayhome = "thursdayhome" + i;
                                            thursdayhomebadge = "thursdayhomebadge" + i;
                                            thursdayscore = "thursdayscore" + i;
                                            thursdayaway = "thursdayaway" + i;
                                            thursdayawaybadge = "thursdayawaybadge" + i;
                                    %>
                                    <a id="<%= thursdaygame + "id"%>" data-toggle="collapse" href="#<%= thursdaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                    <h6 id="<%= thursdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= thursdayhomebadge%>" style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                    <h6 id="<%= thursdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= thursdayawaybadge%>" class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= thursdayaway%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
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

                                        for (int i = 0; i < 5; i++) {
                                            fridaygame = "fridaygame" + i;
                                            fridayhome = "fridayhome" + i;
                                            fridayhomebadge = "fridayhomebadge" + i;
                                            fridayscore = "fridayscore" + i;
                                            fridayaway = "fridayaway" + i;
                                            fridayawaybadge = "fridayawaybadge" + i;
                                    %>
                                    <a id="<%= fridaygame + "id"%>" data-toggle="collapse" href="#<%= fridaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                    <h6 id="<%= fridayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= fridayhomebadge%>" style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                    <h6 id="<%= fridayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%= fridayawaybadge%>" class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%= fridayaway%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
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

                                        for (int i = 0; i < 5; i++) {
                                            saturdaygame = "saturdaygame" + i;
                                            saturdayhome = "saturdayhome" + i;
                                            saturdayhomebadge = "saturdayhomebadge" + i;
                                            saturdayscore = "saturdayscore" + i;
                                            saturdayaway = "saturdayaway" + i;
                                            saturdayawaybadge = "saturdayawaybadge" + i;
                                    %>
                                    <a id="<%=saturdaygame + "id"%>" data-toggle="collapse" href="#<%=saturdaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                    <h6 id="<%=saturdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%=saturdayhomebadge%>" style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                    <h6 id="<%=saturdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%=saturdayawaybadge%>" class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%=saturdayaway%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
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

                                        for (int i = 0; i < 5; i++) {
                                            sundaygame = "sundaygame" + i;
                                            sundayhome = "sundayhome" + i;
                                            sundayhomebadge = "sundayhomebadge" + i;
                                            sundayscore = "sundayscore" + i;
                                            sundayaway = "sundayaway" + i;
                                            sundayawaybadge = "sundayawaybadge" + i;
                                    %>
                                    <a id="<%=sundaygame + "id"%>" data-toggle="collapse" href="#<%=sundaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5.9%">
                                                    <h6 id="<%=sundayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%=sundayhomebadge%>" style="margin-left:27%" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 11%;left: 2.8%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260">
                                                    <h6 id="<%=sundayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 ">
                                                    <img id="<%=sundayawaybadge%>" class="" style="margin-left:0%" src="img/<%=awaybadge.get(i)%>">
                                                </div>
                                                <div class="col-md-4  col-xs-4   " style="margin-left: -0.7%">
                                                    <h6 id="<%=sundayaway%>" style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 sidebar top-gap" style="padding-right: 0 ">
                    <div class="threadbox" >
                        <h1 style="font-family:Century Gothic;font-weight:bold;font-size: 20px">
                            <%=session.getAttribute("fullname").toString()%>
                        </h1>
                    </div>
                    <div style="border-bottom: 1px solid #9e9fa5;border-left: 1px solid #9e9fa5;border-right: 1px solid #9e9fa5">
                        <div class="">
                            <h4 style="color: white;border-top:3px solid #1b2046;background-image: url(img/bannerred.png);background-size: 100% 100%; font-family: Century Gothic;text-align: center;padding: 10px;font-size: 16px"><%=session.getAttribute("teamName").toString()%></h4>
                        </div>
                        <div>
                            <h5 style="margin-left:5%;font-family: Century Gothic; font-weight: bold;font-size: 15px">Favorite NWSL Team</h5>
                            <%
                                String team = session.getAttribute("teamBadge").toString();
                                String badge = null;
                                if (team.equals("houston")) {
                                    badge = "Houston_Dash.png";
                                } else if (team.equals("chicago")) {
                                    badge = "ChicagoRedStars.png";
                                } else if (team.equals("portland")) {
                                    badge = "Portland.png";
                                } else if (team.equals("orlando")) {
                                    badge = "OrlandoPride.png";
                                } else if (team.equals("spirit")) {
                                    badge = "Washington_Spirit.png";
                                } else if (team.equals("courage")) {
                                    badge = "North_Carolina_Courage.png";
                                } else if (team.equals("seattle")) {
                                    badge = "SeattleReignFC.png";
                                } else if (team.equals("sky")) {
                                    badge = "Sky_Blue_FC.png";
                                } else if (team.equals("kansas")) {
                                    badge = "kansasCity.png";
                                }
                            %>
                            <img style="margin:auto; display:block; width:150px; height:150px" src="img/<%=badge%>"/>
                        </div>

                        <div class="ranking">
                            <h5 style="font-family: Century Gothic;font-weight: bold;font-size: 15px;margin-top: 5%;padding: 3%;padding-left: 5%;color: white;background-color: #050424; ">Points/Rankings </h5>
                            <table style="font-family: Century Gothic;width:90%;margin-left:5%; background-color: #f9f5f5; border: 1px solid #ebebe4">
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px; padding:5px; font-weight: lighter'>Gameweek Points:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px ">250</td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px;padding-left: 5px; padding:5px;font-weight: lighter '>Overall Points:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px ">1,254</td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px;padding-left: 5px; padding:5px; font-weight: lighter '>Overall Rank:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px ">320,154</td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px; padding:5px; font-weight: lighter'>Total Players:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px ">254,999</td>
                                </tr>
                            </table>
                        </div>

                        <div style="margin-left:5%;margin-top:0.5% ">
                            <a href="#" style="font-family: Century Gothic;font-size:14px">View Gameweek history
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div class='cleague'>
                            <h5 style="font-family: Century Gothic; font-weight: bold;font-size: 15px;margin-top: 5%;margin-bottom: 1%;padding: 3%;padding-left: 5%;color: white;background-color: #050424;">Classic Leagues</h5>
                            <table style="font-family: Century Gothic;width:90%;margin-left:5%" >
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow"><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331; margin-right: -5px"></i></td>
                                    <td class="tb-rank">10</td>
                                    <td class="tb-name" style="font-weight: lighter; font-size:14px; text-align: left; color:#db1b1b">Heroes</td>
                                </tr>
                            </table>
                        </div>

                        <div class='gleague'>
                            <h5 style="font-family: Century Gothic;font-weight: bold;font-size: 15px;margin-top: 5%;margin-bottom: 1%;padding: 3%;padding-left: 5%;color: white;background-color: #050424;">Standard Leagues</h5>
                            <table style="font-family: Century Gothic;width:90%;margin-left:5%">
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow"><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank">52,661</td>
                                    <td class="tb-name">Orlando Pride</td>
                                </tr>
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow"><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank">5,465</td>
                                    <td class="tb-name">Greece</td>
                                </tr>
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow"><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank">5,465</td>
                                    <td class="tb-name">Open Weekend Challenge</td>
                                </tr>
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow"><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank">453,587</td>
                                    <td class="tb-name">Overall</td>
                                </tr>
                            </table>
                        </div>

                        <div style="margin-left:5%;margin-top:0.5% ">
                            <a href="#" style="font-family: Century Gothic;font-size:14px">Create and join Leagues
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div class="transfers">
                            <h5 style="font-family: Century Gothic;font-weight: bold;font-size: 15px;margin-top: 5%;padding: 3%;padding-left: 5%;color: white;background-color: #050424;">Transfers and Finance </h5>
                            <table style="font-family: Century Gothic;width:90%;margin-left:5%; background-color: #f9f5f5; border: 1px solid #ebebe4">
                                <tr style="border-bottom:1px solid white">
                                    <td style="font-size: 14px;padding-left: 5px; padding:5px;font-weight: lighter">Gameweek transfers:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  ">3</td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style="font-size: 14px;padding-left: 5px; padding:5px;;font-weight: lighter">Total transfers:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  ">41</td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style="font-size: 14px; padding:5px;;font-weight: lighter">Team value:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  ">$102.1</td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style="font-size: 14px; padding:5px;;font-weight: lighter">In the bank:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  ">$1.1</td>
                                </tr>
                            </table>
                        </div>

                        <div style="font-family: Century Gothic;margin-left:5%;margin-top:0.5% ">
                            <a href="#" style="font-size:14px">View transfer history
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div style="width: 100% ">
                            <h5 style="font-family: Century Gothic; font-weight: bold;font-size: 15px;margin-top: 5%;margin-bottom: 1%;padding: 3%;padding-left: 5%;color: white;background-color: #050424;">Admin</h5>
                        </div>
                        <div style="font-family: Century Gothic;margin-left:5%;margin-top:0.5%">
                            <a href="#" style="padding-left: 10px;font-size:14px">User profile
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div style="font-family: Century Gothic;margin-left:5%;margin-top:0.5%">
                            <a href="#" style="padding-left: 10px;font-size:14px">Team details
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js"></script>


    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>                      
    <script src="js/myTeamjs.js" >


    </script>
</body>

</html>
