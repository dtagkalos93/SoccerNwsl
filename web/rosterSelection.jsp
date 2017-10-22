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
                    <li  ><a href="home.html">Home</a></li>
                    <li  class="hidden-xs active"><a href="">Roster Selection</a></li>
                    <li  class="hidden-xs"><a href="fixture">Fixtures</a></li>
                    <li class="hidden-xs"><a href="help.html">Help</a></li>
                    <li class="hidden-xs"><a href="playersData">Sign Out</a></li>
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
            <!-- /.container -->

        </div>
        <!-- /.intro-header -->

        <div class="container">
            <div class="row">


                <!-- Blog Entries Column -->
                <div class="col-md-8 test">
                    <div class="row ">
                        <h3 class="col-md-12 col-xs-12"  style="font-family: arial">Roster Selection</h3>

                        <h5 class="col-md-12 col-xs-12" style="font-size: 14px; font-weight:lighter; " >
                            Select a maximum of 4 players from a single team or 'Auto Pick' if you're short of time.
                        </h5>
                        <div  class="col-sm-12  ">
                            <div class="col-sm-12" style="width: 100%;background-color:#050424">
                                <h6 style="color:white;font-size:14px;text-align:center; font-weight:lighter;margin-top: 8px;margin-bottom: 8px" >Gameweek 3 Deadline:
                                    <span style="color:#d4213c; font-size:19px; font-weight: bolder" >17 Jun 02:30PM ET </span>
                                </h6>
                            </div>

                            <div class="col-sm-12" style="width: 100%;border: 1px solid #ebebe4;margin-bottom: 1%" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;margin-top: 3%;margin-bottom:3%">
                                    <button type="button" class="prevbutton btncustom col-sm-6 " style="height: 33px; font-size: 14px; text-align: center;left: -4%" onclick="autopick()">
                                        Auto Pick 
                                    </button> 
                                    <button type="button" class="prevbutton btncustom col-sm-6 " style="height: 33px; font-size: 14px; text-align: center;float: right" onclick="reset()">
                                        Reset 
                                    </button> 
                                </div>
                                <div class="col-md-3  col-xs-3" style="width: 25%;flex: 1;margin-top: 1%;font-family:arial;border-right: 1px solid #ebebe4; border-left: 1px solid #ebebe4">
                                    <h6 style="text-align: center;font-weight:bold; font-size:15px ">Player Selected</h6>
                                    <h4 id="allPlayers" style="text-align: center;font-weight:bold; font-size:20px; color:#d4213c;"><span id="totalPlayers">0</span>/15</h4>
                                </div>
                                <div class="col-md-3  col-xs-3" style="width: 25%;flex: 1;margin-top: 1%;font-family:arial">
                                    <h6 style="text-align: center;font-weight:bold; font-size:15px ">Money Remaining</h6>
                                    <h4 style="text-align: center;font-weight:bold;color:green; font-size:20px ">$0.0</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12  " class="col-md-12 col-xs-12" style="border: 1px solid #d4213c; background-color:#ea344f; padding-right: 15px;padding-left: 15px; margin-bottom: 1%; display: none " id='errorbox'> 
                            <h5  id="teamError" style="text-align: center; font-size: 14px">More than 4 players selected from <span id="team"></span>.</h5>
                            <h5  id="posError" style="text-align: center; font-size: 14px;display: none"><span id="pos"></span> :Maximum players in this position!</h5>
                            <h5  id="enterError" style="text-align: center; font-size: 14px;display: none">Please complete your Team!</h5>
                        </div>
                        <div class="col-md-12 col-xs-12" style="border: 1px solid green; background-color:#92c992; padding-right: 15px;padding-left: 15px; margin-bottom: 1%; display: none"id='checkbox'> 
                            <h5  style="text-align: center; font-size: 14px; font-weight: lighter;margin-top: 4px;margin-bottom: 4px"> <span id="playername" style="font-weight:bold"></span><span id='message'> has been added to your squad.</span></h5>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12 bc-img" >
                            <hr style="border:none;margin-top: 6.5%"/>
                            <div id="selGK1" class="col-md-6 col-xs-6" style="left:29%" onclick="changeGK()">
                                <img class="image-player" id="imagegk1" src="img/subsgk.png"/>
                                <p class="gkname" id="namegk1" >Goalkeeper</p>
                                <p style="display: none" id="team1"></p>
                            </div>
                            <div id="selGK2" class="col-md-6 col-xs-6" style="float: left;left: 2.3%" onclick="changeGK()">
                                <img class="image-player" id="imagegk2" src="img/subsgk.png" />
                                <p class="gkname" id="namegk2" >Goalkeeper</p>
                                <p style="display: none" id="team2"></p>
                            </div>

                            <hr style="border:none;margin-top: 20.5%">
                            <div id="selDEF1" class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1" style="right:8%" onclick="changeDEF()">
                                <img class="image-player-cb" id="defimage1" src="img/subs.png"  />
                                <p id="defname1" class="cbname" >Defender</p>
                                <p style="display: none" id="team3"></p>
                            </div>
                            <div id="selDEF2" class="col-md-2 col-xs-2" style="right:4.65%" onclick="changeDEF()">
                                <img class="image-player-cb" id="defimage2" src="img/subs.png" />
                                <p id="defname2" class="cbname" >Defender</p>
                                <p style="display: none" id="team4"></p>
                            </div>
                            <div id="selDEF3" class="col-md-2 col-xs-2" style="right:1.5%" onclick="changeDEF()">
                                <img class="image-player-cb" id="defimage3" src="img/subs.png"  />
                                <p id="defname3" class="cbname" >Defender</p>
                                <p style="display: none" id="team5"></p>
                            </div>
                            <div id="selDEF4" class="col-md-2 col-xs-2" style="left:1.65%" onclick="changeDEF()">
                                <img class="image-player-cb" id="defimage4" src="img/subs.png"  />
                                <p id="defname4" class="cbname" >Defender</p>
                                <p style="display: none" id="team6"></p>
                            </div>
                            <div id="selDEF5" class="col-md-2 col-xs-2" style="left:4.7%" onclick="changeDEF()" >
                                <img class="image-player-cb" id="defimage5" src="img/subs.png" />
                                <p id="defname5" class="cbname" >Defender</p>
                                <p style="display: none" id="team7"></p>
                            </div>

                            <hr style="border:none;margin-top: 20.5%">                          
                            <div id="selMID1" class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1  " style="right: 8%" onclick="changeMID()">
                                <img class="image-player-cb" src="img/subs.png"  id="midimage1" />
                                <p id="midname1" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team8"></p>
                            </div>                            
                            <div id="selMID2" class="col-md-2 col-xs-2" style="right:4.65%" onclick="changeMID()">
                                <img class="image-player-cb" src="img/subs.png"  id="midimage2" />
                                <p id="midname2" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team9"></p>
                            </div>
                            <div id="selMID3" class="col-md-2 col-xs-2" style="right:1.5%" onclick="changeMID()">
                                <img class="image-player-cb" src="img/subs.png"  id="midimage3" />
                                <p id="midname3" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team10"></p>
                            </div>
                            <div id="selMID4" class="col-md-2 col-xs-2" style="left:1.65%" onclick="changeMID()">
                                <img class="image-player-cb" src="img/subs.png"  id="midimage4" />
                                <p id="midname4" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team11"></p>
                            </div>
                            <div id="selMID5" class="col-md-2 col-xs-2" style="left: 5%" onclick="changeMID()">
                                <img class="image-player-cb" src="img/subs.png"  id="midimage5" />
                                <p id="midname5" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team12"></p>
                            </div>                            

                            <hr style="border:none;margin-top: 20.5%">                          
                            <div id="selFWD1" class="col-md-4  col-xs-4   " style="left:10%" onclick="changeFWD()">
                                <img class="image-player-for" id="fwdimage1" src="img/subs.png"  />
                                <p id="fwdname1" class="gkname" >Forward</p>
                                <p style="display: none" id="team13"></p>
                            </div>
                            <div id="selFWD2" class="col-md-4  col-xs-4   " style="left:6.9%" onclick="changeFWD()">
                                <img class="image-player-for" id="fwdimage2" src="img/subs.png"  />
                                <p id="fwdname2" class="gkname" >Forward</p>
                                <p style="display: none" id="team14"></p>
                            </div>
                            <div id="selFWD3" class="col-md-4  col-xs-4   " style="left:3% " onclick="changeFWD()">
                                <img class="image-player-for" id="fwdimage3" src="img/subs.png"  />
                                <p id="fwdname3" class="gkname" >Forward</p>
                                <p style="display: none" id="team15"></p>
                            </div>
                        </div>
                        <a id="enterTeam"  class="prevbutton btncustom col-md-12 " style="margin-left: 25%; font-size: 15px;text-align: center; width: 50%;margin-bottom: 2%;margin-top: 2%;padding: 1%;text-decoration: none;" >
                            Enter Roster
                        </a>
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


                        <div class="col-md-12 col-sm-6 col-xs-12 fixtures" id="somediv">
                            <h4 style="font-weight: bold;font-size: 15px;text-align: center; "><%=posts.get(0) + " - " + date.get(0)%></h4>
                            <button id="prev" value="<%=posts.get(1)%>" type="button" class="prevbutton btncustom col-sm-3 hidden-xs" style="font-size: 14px; font-weight: bold; text-align: center; margin-left: -2%;padding: 1%">
                                Previous
                            </button>
                            <h5 class="col-sm-6 hidden-xs" style="text-align: center;font-weight: bold; font-size:17px;left:8.5%; margin-top: -0.5%;margin-bottom: -2%" align="center">
                                <img src="img/nwsllogo.png" style="height: 29%;width: 29%;padding-right: 0.5%" >Fixtures
                            </h5>
                            <%
                                if (!posts.get(2).equals("Gameweek 23")) {
                            %>
                            <button id="next" value="<%=posts.get(2)%>" type="button" class="btncustom nextbtn col-sm-3 hidden-xs" style="font-size: 14px; font-weight: bold; text-align: center; margin-right:-2.1%;padding: 1%">
                                Next
                            </button>

                            <%
                                }
                                for (int i = 0; i < date.size(); i++) {
                                    String game = "game" + i;

                                    if (!date.get(i).equals(dateSTR)) {


                            %>
                            <h6 class="col-sm-12" style="font-weight: lighter;font-size: 15px;text-align: center;width: 104%; left:-2.05%;margin-bottom: 1%;margin-top:2.5% "><%=date.get(i)%></h6>
                            <%
                                    dateSTR = date.get(i);

                                }
                            %>
                            <a data-toggle="collapse" href="#<%=game%>" style="color:black ">
                                <div class="match col-sm-12 " style="width: 104.3%;left:-2.1%" >
                                    <div class="row">
                                        <div class="col-md-4  col-xs-4 " style="left: 4.5%; text-align: right">
                                            <h6 style="float: right;font-size:17px"><%=home.get(i)%></h6>
                                        </div>
                                        <div class="col-md-1 col-xs-1 ">
                                            <img style="margin-left:-2%" src="img/<%=homebadge.get(i)%>">
                                        </div>
                                        <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 15%; left:0.8%; background-color:#1d3260; border-radius: 3pt">
                                            <h6 style="text-align: center;color:white; font-size: 16px; font-weight:lighter"><%=time.get(i)%></h6>
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

                <div class="col-md-4 sidebar" style=" ">
                    <div style="border-bottom:1px solid #ebebe4;border-left:1px solid #ebebe4;border-right:1px solid #ebebe4;margin-bottom: 5% ">
                        <div class="teambox">
                            <h3 style="font-size: 19px; margin-left:5%; margin-top: 8%; line-height: 10px; font-weight: bold">Player Selection</h3>
                        </div>
                        <div>
                            <h5 style="font-size: 16px; margin-left:5%; font-weight:lighter; margin-top: 5%">View</h5>
                            <div>
                                <select class="form-control " id ="selectPlayers"  data-size="5" onchange="showPlayers()" >
                                    <optgroup label="Global">
                                        <option value="all">All players</option>
                                        <option>Watchlist</option>
                                    </optgroup>
                                    <optgroup label="By Position">
                                        <option value="Goalkeeper">Goalkeepers</option>
                                        <option value="Defender">Defenders</option>
                                        <option value="Midfielder">Midfielders</option>
                                        <option value="Forward">Forwards</option>
                                    </optgroup>
                                    <optgroup label="By Team">
                                        <option value="Boston Breakers">Boston Breakers</option>
                                        <option value="Chicago Red Stars" >Chicago Red Stars</option>
                                        <option value="FC Kansas City">FC Kansas City</option>
                                        <option value="Houston Dash">Houston Dash</option>
                                        <option value="North Carolina Courage">North Carolina Courage</option>
                                        <option value="Orlando Pride">Orlando Pride</option>
                                        <option value="Portland Thorns FC">Portland Thorns FC</option>
                                        <option value="Seattle Reign FC">Seattle Reign FC</option>
                                        <option value="Sky Blue FC">Sky Blue FC</option> 
                                        <option value="Washington Spirit">Washington Spirit</option> 

                                    </optgroup>
                                </select>

                            </div>
                        </div>
                        <div>
                            <h5 style="font-size: 16px; margin-left:5%;  font-weight:lighter; margin-top:5%">Sorted by</h5>
                            <div>
                                <select class="form-control"  data-size="5" id="categorySelection" onchange="showPlayers()">
                                    <option value="score">Total score</option>
                                    <option value="gw">Round score</option> 
                                    <option value="price">Price</option>
                                    <option>Teams selected by %</option>
                                    <option value="minutes">Minutes played</option>
                                    <option value="goalScored">Goal scored</option>
                                    <option value="assist">Assists</option>
                                    <option value="cleanSheet">Clean sheets</option>
                                    <option value="ownGoal">Own goals</option>
                                    <option value="goalConceded">Goals conceded</option>
                                    <option value="penaltySaved">Penalties saved</option>
                                    <option value="penaltyMissed">Penalties missed</option>
                                    <option value="yellowCard">Yellow cards</option>
                                    <option value="redCard">Red cards</option>
                                    <option>Bonus</option> 
                                    <option value="saves">Saves</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <h5 style="font-size: 16px; margin-left:5%; font-weight:lighter; margin-top: 5%">With a maximum price of</h5>
                            <div>
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
                        </div>   
                        <div>
                            <h5 style="font-size: 16px; margin-left:5%; font-weight:lighter; margin-top: 5%">Search Player List</h5>
                        </div>
                        <div class="wrap">
                            <div class="search">
                                <input type="text" class="searchTerm" id="searchBOX" placeholder="Search">
                                <button type="submit" class="searchButton" onclick="search()">
                                    <i class="fa fa-search" ></i>
                                </button>
                            </div>
                        </div>
                        <div>
                            <h6 class="text-center" style="font-size: 16px; line-height: 10px; font-weight:lighter; margin-top: 6%"><span style="color:red;font-weight: bold;" id ="total"><%=request.getAttribute("total")%></span> players shown</h6>
                        </div>
                        <div>
                            <table style="width:100%; background-color: #f9f5f5" id='gk'>
                                <tr>
                                    <th style="background-color: yellow"></th>
                                    <th style="background-color: yellow; font-family: arial">GOALKEEPERS</th> 
                                    <th style="background-color: yellow; text-align: center; font-family: arial">$</th>
                                    <th id="catGK" style="background-color: yellow; text-align: center; font-family: arial">TS</th>
                                </tr>
                                <tr id='gk1' data-toggle="modal" style='cursor:pointer' onclick="openModalGK(1)">
                                    <%  
                                        String classSTR;
                                        String color;
                                        if (gkinjury.get(1).equals("NO")) {
                                             classSTR="glyphicon glyphicon-info-sign";
                                             color="";
                                        }else{
                                            classSTR="glyphicon glyphicon-alert fa-lg";
                                             color="#c0020d";
                                        }
                                    %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="gkinjury1"  class="<%=classSTR%>" style="color:<%=color%>"></span></td>
                                        
                                    
                                   
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="gkimage1" src="img/<%=gk.get(0)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="gkname1" style="font-size: 15px " ><%=gkname.get(0)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="gkteam1" style="font-size: 12px; font-weight: lighter "><%=gkteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="gkprice1" style="text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= gkprice.get(0)%></td>
                                    <td id="gkscore1" style="text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= gkscore.get(0)%></td>
                                </tr>
                                <tr id='gk2' style='cursor:pointer' onclick="openModalGK(2)">
                                    <%  
                                        if (gkinjury.get(1).equals("NO")) {
                                             classSTR="glyphicon glyphicon-info-sign";
                                             color="";
                                        }else{
                                            classSTR="glyphicon glyphicon-alert fa-lg";
                                             color="#c0020d";
                                        }
                                    %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="gkinjury2" class="<%=classSTR%>" style="color:<%=color%>"</span></td>

                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="gkimage2" src="img/<%=gk.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="gkname2" style="font-size: 15px; "><%=gkname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="gkteam2" style="font-size: 12px; font-weight: lighter "><%=gkteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="gkprice2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= gkprice.get(1)%></td>
                                    <td id="gkscore2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= gkscore.get(1)%></td>
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
                                        gkinjurystr="gkinjury"+i; 

                                %>
                                <tr id='<%=gkstr%>' style='display:none;cursor:pointer' onclick="openModalGK(<%=i%>)">
                                    <%
                                       if (gkinjury.get(1).equals("NO")) {
                                             classSTR="glyphicon glyphicon-info-sign";
                                             color="";
                                        }else{
                                            classSTR="glyphicon glyphicon-alert fa-lg";
                                             color="#c0020d";
                                        }%>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="<%=gkinjurystr%>" class="<%=classSTR%>" style="color:<%=color%>"></span></td>
                                        
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=gkimagestr%>" src="img/<%=gk.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span  class='underline'id="<%=gknamestr%>" style="font-size: 15px "><%=gkname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="<%=gkteamstr%>" style="font-size: 12px; font-weight: lighter "><%=gkteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=gkpricestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= gkprice.get(1)%></td>
                                    <td id="<%=gkscorestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= gkscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>
                            </table>
                            <table style="width:100%; background-color: #f9f5f5" id='def'>
                                <tr>
                                    <th style="background-color:#00ff87 "></th>
                                    <th style="background-color:#00ff87; font-family: arial">DEFENDERS</th> 
                                    <th style="background-color:#00ff87; text-align: center; font-family: arial">$</th>
                                    <th id="catDEF" style="background-color:#00ff87; text-align: center; font-family: arial">TS</th>
                                </tr>
                                <tr id="def1" style='cursor:pointer' onclick="openModalDEF(1)">
                                    <%
                                        if (definjury.get(0).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury1" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(0).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury1" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div  class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef1" src="img/<%=def.get(0)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef1" style="font-size: 15px; "><%=defname.get(0)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef1" style="font-size: 12px; font-weight: lighter "><%=defteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef1" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(0)%></td>
                                    <td id="scoredef1" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(0)%></td>
                                </tr>
                                <tr id="def2" style='cursor:pointer'onclick="openModalDEF(2)">
                                     <%
                                        if (definjury.get(1).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury2" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(1).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury2" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef2" src="img/<%=def.get(1)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef2" style="font-size: 15px; "><%=defname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef2" style="font-size: 12px; font-weight: lighter "><%=defteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(1)%></td>
                                    <td id="scoredef2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(1)%></td>
                                </tr>
                                <tr id="def3" style='cursor:pointer' onclick="openModalDEF(3)">
                                     <%
                                        if (definjury.get(2).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury3" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(2).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury3" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef3" src="img/<%=def.get(2)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef3" style="font-size: 15px; "><%=defname.get(2)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef3" style="font-size: 12px; font-weight: lighter "><%=defteam.get(2)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef3" style="text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(2)%></td>
                                    <td id="scoredef3" style="text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(2)%></td>
                                </tr>
                                <tr id="def4" style='cursor:pointer' onclick="openModalDEF(4)">
                                     <%
                                        if (definjury.get(3).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury4" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(3).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury4" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef4" src="img/<%=def.get(3)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef4" style="font-size: 15px; "><%=defname.get(3)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef4" style="font-size: 12px; font-weight: lighter "><%=defteam.get(3)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef4" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(3)%></td>
                                    <td id="scoredef4" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  "><%=defscore.get(3)%></td>
                                </tr>
                                <tr id="def5" style='cursor:pointer' onclick="openModalDEF(5)">
                                     <%
                                        if (definjury.get(4).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury5" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(4).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury5" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef5" src="img/<%=def.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef5" style="font-size: 15px; "><%=defname.get(4)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef5" style="font-size: 12px; font-weight: lighter "><%=defteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef5" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(4)%></td>
                                    <td id="scoredef5" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(4)%></td>
                                </tr>
                                <tr id="def6" style='cursor:pointer' onclick="openModalDEF(6)">
                                     <%
                                        if (definjury.get(5).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury6" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(5).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury6" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef6" src="img/<%=def.get(5)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef6" style="font-size: 15px; "><%=defname.get(5)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef6" style="font-size: 12px; font-weight: lighter "><%=defteam.get(5)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef6" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(5)%></td>
                                    <td id="scoredef6" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(5)%></td>
                                </tr>
                                <tr id="def7" style='cursor:pointer' onclick="openModalDEF(7)">
                                     <%
                                        if (definjury.get(6).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury7" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(6).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury7" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef7" src="img/<%=def.get(6)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef7" style="font-size: 15px; "><%=defname.get(6)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef7" style="font-size: 12px; font-weight: lighter "><%=defteam.get(6)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef7" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(6)%></td>
                                    <td id="scoredef7" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(6)%></td>
                                </tr>
                                <tr id="def8" style='cursor:pointer' onclick="openModalDEF(8)">
                                     <%
                                        if (definjury.get(7).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="definjury8" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(7).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="definjury8" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef8" src="img/<%=def.get(7)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namedef8" style="font-size: 15px; "><%=defname.get(7)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamdef8" style="font-size: 12px; font-weight: lighter "><%=defteam.get(7)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef8" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(7)%></td>
                                    <td id="scoredef8" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(7)%></td>
                                </tr>
                                <%
                                    String defstr;
                                    String defimagestr;
                                    String defnamestr;
                                    String defteamstr;
                                    String defpricestr;
                                    String defscorestr;
                                    String definjurystr;    
                                    for (int i = 9; i <= 20; i++) {
                                        defstr = "def" + i;
                                        defimagestr = "imagedef" + i;
                                        defnamestr = "namedef" + i;
                                        defteamstr = "teamdef" + i;
                                        defpricestr = "pricedef" + i;
                                        defscorestr = "scoredef" + i;
                                        definjurystr="definjury"+i; 
                                %>
                                <tr id='<%=defstr%>' style='display:none;cursor:pointer' onclick="openModalDEF(<%=i%>)">
                                     <%
                                        if (definjury.get(0).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="<%=definjurystr%>" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (definjury.get(0).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="<%=definjurystr%>" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=defimagestr%>" src="img/<%=def.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="<%=defnamestr%>" style="font-size: 15px; "><%=defname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="<%=defteamstr%>" style="font-size: 12px; font-weight: lighter "><%=defteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=defpricestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= defprice.get(1)%></td>
                                    <td id="<%=defscorestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= defscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>
                            </table>
                            <table style="width:100%; background-color: #f9f5f5" id='mid'>
                                <tr>
                                    <th style="background-color:#04f5ff "></th>
                                    <th style="background-color:#04f5ff; font-family: arial">MIDFIELDERS</th> 
                                    <th style="background-color:#04f5ff; text-align: center; font-family: arial">$</th>
                                    <th id="catMID" style="background-color:#04f5ff; text-align: center; font-family: arial">TS</th>
                                </tr>
                                <tr id='mid1' style='cursor:pointer'  onclick="openModalMID(1)">
                                                                         <%
                                        if (midinjury.get(0).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="midinjury1" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (midinjury.get(0).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="midinjury1" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid1" src="img/<%=mid.get(0)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namemid1" style="font-size: 15px; "><%=midname.get(0)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teammid1" style="font-size: 12px; font-weight: lighter "><%=midteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid1" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(0)%></td>
                                    <td id="scoremid1" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(0)%></td>
                                </tr>
                                <tr id='mid2' style='cursor:pointer' onclick="openModalMID(2)">
                                    <%
                                        if (midinjury.get(1).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="midinjury2" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (midinjury.get(1).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="midinjury2" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid2" src="img/<%=mid.get(1)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namemid2" style="font-size: 15px; "><%=midname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teammid2" style="font-size: 12px; font-weight: lighter "><%=midteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(1)%></td>
                                    <td id="scoremid2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(1)%></td>
                                </tr>
                                <tr id="mid3" style='cursor:pointer' onclick="openModalMID(3)" >
                                    <%
                                        if (midinjury.get(2).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="midinjury3" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (midinjury.get(2).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="midinjury3" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid3" src="img/<%=mid.get(2)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namemid3" style="font-size: 15px; "><%=midname.get(2)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teammid3" style="font-size: 12px; font-weight: lighter "><%=midteam.get(2)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid3" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(2)%></td>
                                    <td id="scoremid3" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(2)%></td>
                                </tr>
                                <tr id="mid4" style='cursor:pointer' onclick="openModalMID(4)">
                                    <%
                                        if (midinjury.get(3).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="midinjury4" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (midinjury.get(3).equals("OUT")) { 
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="midinjury4" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid4" src="img/<%=mid.get(3)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namemid4" style="font-size: 15px; "><%=midname.get(3)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teammid4" style="font-size: 12px; font-weight: lighter "><%=midteam.get(3)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid4" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(3)%></td>
                                    <td id="scoremid4" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(3)%></td>
                                </tr>
                                <tr id="mid5" style='cursor:pointer' onclick="openModalMID(5)">
                                    <%
                                        if (midinjury.get(4).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="midinjury5" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (midinjury.get(4).equals("OUT")) { 
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="midinjury5" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid5" src="img/<%=mid.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namemid5" style="font-size: 15px; "><%=midname.get(4)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teammid5" style="font-size: 12px; font-weight: lighter "><%=midteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid5" style="text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(4)%></td>
                                    <td id="scoremid5" style="text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(4)%></td>
                                </tr >

                                <%
                                    String midstr;
                                    String midimagestr;
                                    String midnamestr;
                                    String midteamstr;
                                    String midpricestr;
                                    String midscorestr;
                                    String midinjurystr;
                                    for (int i = 6; i <= 20; i++) {
                                        midstr = "mid" + i;
                                        midimagestr = "imagemid" + i;
                                        midnamestr = "namemid" + i;
                                        midteamstr = "teammid" + i;
                                        midpricestr = "pricemid" + i;
                                        midscorestr = "scoremid" + i;
                                        midinjurystr="midinjury"+i; 

                                %>
                                <tr id='<%=midstr%>' style='display:none;cursor:pointer' onclick="openModalMID(<%=i%>)">
                                    <%
                                        if (midinjury.get(0).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="<%=midinjurystr%>" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (midinjury.get(0).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="<%=midinjurystr%>" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=midimagestr%>" src="img/<%=mid.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="<%=midnamestr%>" style="font-size: 15px; "><%=midname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="<%=midteamstr%>" style="font-size: 12px; font-weight: lighter "><%=midteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=midpricestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= midprice.get(1)%></td>
                                    <td id="<%=midscorestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= midscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>


                            </table>
                            <table style="width:100%; background-color: #f9f5f5" id='fwd'>
                                <tr>
                                    <th style="background-color:#e90052 "></th>
                                    <th style="background-color:#e90052; font-family: arial">FORWARDS</th> 
                                    <th style="background-color:#e90052; text-align: center; font-family: arial">$</th>
                                    <th id="catFWD" style="background-color:#e90052; text-align: center; font-family: arial">TS</th>
                                </tr>
                                <tr id="fwd1" style='cursor:pointer' onclick="openModalFWD(1)">
                                    <%
                                        if (fwdinjury.get(0).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="fwdinjury1" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (fwdinjury.get(0).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="fwdinjury1" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd1" src="img/<%=fwd.get(0)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namefwd1" style="font-size: 15px; "><%=fwdname.get(0)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamfwd1" style="font-size: 12px; font-weight: lighter "><%=fwdteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd1" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(0)%></td>
                                    <td id="scorefwd1" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(0)%></td>
                                </tr>
                                <tr id="fwd2" style='cursor:pointer' onclick="openModalFWD(2)">
                                    <%
                                        if (fwdinjury.get(1).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="fwdinjury2" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (fwdinjury.get(1).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="fwdinjury2" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd2" src="img/<%=fwd.get(1)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namefwd2" style="font-size: 15px; "><%=fwdname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamfwd2" style="font-size: 12px; font-weight: lighter "><%=fwdteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(1)%></td>
                                    <td id="scorefwd2" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(1)%></td>
                                </tr>
                                <tr id="fwd3" style='cursor:pointer' onclick="openModalFWD(3)">
                                    <%
                                        if (fwdinjury.get(2).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="fwdinjury3" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (fwdinjury.get(2).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="fwdinjury3" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd3" src="img/<%=fwd.get(2)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namefwd3" style="font-size: 15px; "><%=fwdname.get(2)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamfwd3" style="font-size: 12px; font-weight: lighter "><%=fwdteam.get(2)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd3" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(2)%></td>
                                    <td id="scorefwd3" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(2)%></td>
                                </tr>
                                <tr id="fwd4" style='cursor:pointer' onclick="openModalFWD(4)">
                                    <%
                                        if (fwdinjury.get(3).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="fwdinjury4" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (fwdinjury.get(3).equals("OUT")) { 
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="fwdinjury4" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd4" src="img/<%=fwd.get(3)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namefwd4" style="font-size: 15px; "><%=fwdname.get(3)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamfwd4" style="font-size: 12px; font-weight: lighter "><%=fwdteam.get(3)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd4" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(3)%></td>
                                    <td id="scorefwd4" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(3)%></td>
                                </tr>
                                <tr id="fwd5" style='cursor:pointer' onclick="openModalFWD(5)">
                                    <%
                                        if (fwdinjury.get(4).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="fwdinjury5" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (fwdinjury.get(4).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="fwdinjury5" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd5" src="img/<%=fwd.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="namefwd5" style="font-size: 15px; "><%=fwdname.get(4)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="teamfwd5" style="font-size: 12px; font-weight: lighter "><%=fwdteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd5" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(4)%></td>
                                    <td id="scorefwd5" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(4)%></td>
                                </tr>

                                <%
                                    String fwdstr;
                                    String fwdimagestr;
                                    String fwdnamestr;
                                    String fwdteamstr;
                                    String fwdpricestr;
                                    String fwdscorestr;
                                    String fwdinjurystr;
                                    for (int i = 6; i <= 20; i++) {
                                        fwdstr = "fwd" + i;
                                        fwdimagestr = "imagefwd" + i;
                                        fwdnamestr = "namefwd" + i;
                                        fwdteamstr = "teamfwd" + i;
                                        fwdpricestr = "pricefwd" + i;
                                        fwdscorestr = "scorefwd" + i;
                                        fwdinjurystr="fwdinjury"+i; 
                                %>
                                <tr id='<%=fwdstr%>' style='display:none;cursor:pointer' onclick="openModalFWD(<%=i%>)">
                                    <%
                                        if (fwdinjury.get(0).equals("NO")) { %>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span id="<%=fwdinjurystr%>" class="glyphicon glyphicon-info-sign"></span></td>
                                        <% } else if (fwdinjury.get(0).equals("OUT")) {
                                        %>
                                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span id="<%=fwdinjurystr%>" class="glyphicon glyphicon-alert fa-lg" style="color:#c0020d"></span></td>
                                        <% }
                                        %>
                                    <td style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=fwdimagestr%>" src="img/<%=fwd.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span class='underline' id="<%=fwdnamestr%>" style="font-size: 15px; "><%=fwdname.get(1)%></span><hr style="border:none;margin-top: -17%">
                                            <span id="<%=fwdteamstr%>" style="font-size: 12px; font-weight: lighter "><%=fwdteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=fwdpricestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= fwdprice.get(1)%></td>
                                    <td id="<%=fwdscorestr%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= fwdscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>

                            </table>
                            <table id="search" style="width:100%; background-color: #f9f5f5;display: none">
                                <tr>
                                    <th style="background-color:#02509a "></th>
                                    <th style="background-color:#02509a; font-family: arial; color: white">PLAYERS</th> 
                                    <th style="background-color:#02509a; text-align: center; font-family: arial; color: white">$</th>
                                    <th id="catsrch" style="background-color:#02509a; text-align: center; font-family: arial; color: white">TS</th>
                                </tr>
                                <%
                                    String srchimage = "srchimage";
                                    String srchname = "srchname";
                                    String srchteam = "srchteam";
                                    String srchpos = "srchpos";
                                    String srchprice = "srchprice";
                                    String srchscore = "srchscore";
                                    String search = "search";
                                    for (int i = 1; i <= 25; i++) {
                                        srchimage = "srchimage" + i;
                                        srchname = "srchname" + i;
                                        srchteam = "srchteam" + i;
                                        srchpos = "srchpos" + i;
                                        srchprice = "srchprice" + i;
                                        srchscore = "srchscore" + i;
                                        search = "search" + i;
                                %>
                                <tr id="<%=search%>" style='display: none;cursor:pointer' onclick="searchModal(<%=i%>)">
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td  style=" text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div  class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=srchimage%>"  style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;height: 30px;right: 15px;margin-top:-3px">
                                            <span id="<%=srchname%>" style="font-size: 15px"></span><hr style="border:none;margin-top: -17%">
                                            <span id="<%=srchteam%>" style="font-size: 12px; font-weight: lighter "></span>
                                            <span id="<%=srchpos%>" style="font-size: 12px;font-weight:lighter; padding-left: 10% "></span>
                                        </div>
                                    </td>
                                    <td id="<%=srchprice%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%">$</td>
                                    <td id="<%=srchscore%>" style=" text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%"></td>
                                </tr>
                                <% }
                                %>
                            </table>        
                        </div>
                        <div class="col-md-12" style="width:100%; margin-bottom: 2%">
                            <button id="start" value="1" type="button" class="btn  btn-circle col-md-1 col-xs-1 smallbtn" style="width:10%;margin-top:4.5%;margin-right:2%; padding-right: 0.8% " disabled><i class="glyphicon glyphicon-backward"></i></button>
                            <button id="prevPlayers" value="1" type="button" class="btn  btn-circle btn-lg  col-md-2 col-xs-2 lgbtn" style="width:4rem" disabled><i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>
                            <h6 id="pageTitle" class="col-md-6 col-xs-6" style="width: 40%;font-weight: lighter;left:10.5%;margin-top: 7%; font-size: 14px">Page <span id="page" style="font-weight: bold" >1</span> of 11  </h6>
                            <button  id="nextPlayers" value="2"  type="button" class="btn  btn-circle btn-lg col-md-2 col-xs-2 lgbtn" style="width:4rem;left:12%"><i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>
                            <button id="end" value="11" type="button" class="btn btn- btn-circle col-md-1 col-xs-1 smallbtn" style="width:10%;margin-top:4.5%;float: right;padding-left: 1.5%"><i class="glyphicon glyphicon-forward"></i></button>
                            <button id="startSelect" value="1" type="button" class="btn btn-circle col-md-1 col-xs-1 smallbtn" style="width:10%;margin-top:4.5%;margin-right:2%; padding-right: 0.8%;display:none " disabled><i class="glyphicon glyphicon-backward"></i></button>
                            <button id="prevPlayersSelect" value="1" type="button" class="btn  btn-circle btn-lg  col-md-2 col-xs-2 lgbtn " style="width:4rem;display:none;" disabled><i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>
                            <h6 id="pageSelect"  class="col-md-6 col-xs-6" style="width: 40%;font-weight: lighter;left:10.5%;margin-top: 7%; font-size: 14px;display:none;">Page <span id="pageNo" style="font-weight: bold" >1</span> of <span id="totalPage">11</span>  </h6>
                            <button  id="nextPlayersSelect" value="2"  type="button" class="btn  btn-circle btn-lg col-md-2 col-xs-2 lgbtn" style="width:4rem;left:12%;display:none;"><i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>
                            <button id="endSelect"  type="button" class="btn btn-circle col-md-1 col-xs-1 smallbtn" style="width:10%;margin-top:4.5%;float: right;padding-left: 1.5%;display:none;"><i class="glyphicon glyphicon-forward"></i></button>
                        </div>

                    </div>
                </div>
            </div>
        </div>



        <!--players modal -->
        <div id="players" class="modal" role="dialog" data-keyboard="false" data-backdrop="static" >
            <div class="modal-dialog" style="width: 450px">

                <!-- Modal content-->
                <div class="modal-content" >
                    <div class="modal-header" style="background-color:#1d3260;height: 40px;" >
                        <button type="button" class="close" data-dismiss="modal" style="opacity: 1; color:white; margin-top:-2%" >&times;</button>
                        <h4 class="modal-title" style="color: white;text-align:left;font-weight: bold; margin-top:-1.7%; font-size:17px "><span id="modalTitle">Ashlyn Harris $6.5</span><img src="img/nwsllogo1.png" style="float: right;width: 90px;height: 50px;margin-top: -4.5%;margin-right: 2.5%; padding-bottom: 1%"/></h4>

                    </div>
                    <!-- Modal content-->
                    <div class="modal-body">
                        <p style="display:none" id="playersName"></p>
                        <p style="display:none" id="playerImage"></p>
                        <p style="display:none" id="playerPrice"></p>
                        <p style="display:none" id="playerNo"></p>
                        <p style="display:none" id="playerPosition"></p>
                        <p style="display:none" id="playerTeam"></p>
                        <button onclick="addPlayer()" type="button" class="addbutton   " >
                            Add Player 
                        </button> 
                        <button type="button" class="infobutton " style="">
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
                    <div class="modal-header" style="background-color:#1d3260;height: 40px;" >
                        <button type="button" class="close" data-dismiss="modal" style="opacity: 1; color:white; margin-top:-2%" >&times;</button>
                        <h4 class="modal-title" style="color: white;text-align:left;font-weight: bold; margin-top:-1.7%; font-size:17px "><span id="playersTitle"></span><img src="img/nwsllogo1.png" style="float: right;width: 90px;height: 50px;margin-top: -4%;margin-right: 2.5%; padding-bottom: 1%"/></h4>

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
                        <button type="button" class="infobutton " style="">
                            View Information
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <script src="js/playersTable.js"></script>
    </body>

</html>
