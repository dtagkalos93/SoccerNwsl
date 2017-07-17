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
                    <li  ><a href="status.html">Home</a></li>
                    <li  class="hidden-xs active"><a href="">Roster Selection</a></li>
                    <li  class="hidden-xs"><a href="fixture">Fixtures</a></li>
                    <li class="hidden-xs"><a href="help.html">Help</a></li>
                    <li class="hidden-xs"><a href="#">Sign Out</a></li>
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

                        <h5 class="col-md-12 col-xs-12" style="font-family: arial;font-weight:lighter; " >
                            Select a maximum of 4 players from a single team or 'Auto Pick' if you're short of time.
                        </h5>
                        <div  class="col-sm-12  ">
                            <div class="col-sm-12" style="width: 100%;height:10% ;background-color:#050424;margin-top: 1%">
                                <h6 style="color:white;font-family: arial;font-size:13px;text-align:center;vertical-align:middle; font-weight:lighter" >Gameweek 3 Deadline:
                                    <span style="color:#d4213c; font-family: arial;font-size:19px; font-weight: bolder" >17 Jun 02:30PM ET </span>
                                </h6>
                            </div>

                            <div class="col-sm-12" style="width: 100%;border: 1px solid #ebebe4;margin-bottom: 1%" >
                                <div class="col-md-6  col-xs-6" style="width: 50%;margin-top: 3%;margin-bottom:3%">
                                    <button type="button" class="prevbutton btncustom col-sm-6 " style="height: 33px; font-size: 13px; text-align: center; font-family:arial;left: -4%">
                                        Auto Pick 
                                    </button> 
                                    <button type="button" class="prevbutton btncustom col-sm-6 " style="height: 33px; font-size: 13px; text-align: center; font-family:arial;float: right">
                                        Reset 
                                    </button> 
                                </div>
                                <div class="col-md-3  col-xs-3" style="width: 25%;flex: 1;margin-top: 1%;font-family:arial;border-right: 1px solid #ebebe4; border-left: 1px solid #ebebe4">
                                    <h6 style="text-align: center;font-family: arial;font-weight:bold; font-size:14px ">Player Selected</h6>
                                    <h4 style="text-align: center;font-family: arial;font-weight:bold; font-size:22px; color:green;">15/15</h4>
                                </div>
                                <div class="col-md-3  col-xs-3" style="width: 25%;flex: 1;margin-top: 1%;font-family:arial">
                                    <h6 style="text-align: center;font-family: arial;font-weight:bold; font-size:14px ">Money Remaining</h6>
                                    <h4 style="text-align: center;font-family: arial;font-weight:bold;color:green; font-size:22px ">$0.0</h4>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12 bc-img">
                            <hr style="border:none;margin-top: 6.5%"/>
                            <div class="col-md-6 col-xs-6" style="left:29%">
                                <img class="image-player" src="img/subsgk.png"/>
                                <p class="gkname" >Goalkeeper</p>
                            </div>
                            <div class="col-md-6 col-xs-6" style="float: left;left: 1.3%">
                                <img class="image-player" src="img/subsgk.png" />
                                <p class="gkname">Goalkeeper</p>
                            </div>

                            <hr style="border:none;margin-top: 26.5%">
                            <div class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1" style="right:8%">
                                <img class="image-player-cb" src="img/subs.png"  />
                                <p class="cbname" >Defender</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="right:4.65%">
                                <img class="image-player-cb" src="img/subs.png" />
                                <p class="cbname" >Defender</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="right:1.5%">
                                <img class="image-player-cb" src="img/subs.png"  />
                                <p class="cbname" >Defender</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left:1.65%">
                                <img class="image-player-cb" src="img/subs.png"  />
                                <p class="cbname" >Defender</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left:4.7%" >
                                <img class="image-player-cb" src="img/subs.png" />
                                <p class="cbname" >Defender</p>
                            </div>

                            <hr style="border:none;margin-top: 46.5%">                          
                            <div class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1  " style="right: 8%">
                                <img class="image-player-cb" src="img/subs.png"  />
                                <p class="cbname" >Midfielder</p>
                            </div>                            
                            <div class="col-md-2 col-xs-2" style="right:4.65%">
                                <img class="image-player-cb" src="img/subs.png" />
                                <p class="cbname" >Midfielder</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="right:1.5%">
                                <img class="image-player-cb" src="img/subs.png"  />
                                <p class="cbname" >Midfielder</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left:1.65%">
                                <img class="image-player-cb" src="img/subs.png"  />
                                <p class="cbname" >Midfielder</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left: 5%" >
                                <img class="image-player-cb" src="img/subs.png" />
                                <p class="cbname" >Midfielder</p>
                            </div>                            

                            <hr style="border:none;margin-top: 66.5%">                          
                            <div class="col-md-4  col-xs-4   " style="left:10%">
                                <img class="image-player-for" src="img/subs.png"  />
                                <p class="gkname" >Forward</p>
                            </div>
                            <div class="col-md-4  col-xs-4   " style="left:6.9%">
                                <img class="image-player-for" src="img/subs.png"  />
                                <p class="gkname" >Forward</p>
                            </div>
                            <div class="col-md-4  col-xs-4   " style="left:3% ">
                                <img class="image-player-for" src="img/subs.png"  />
                                <p class="gkname" >Forward</p>
                            </div>
                        </div>
                        <a  class="prevbutton btncustom col-md-12 " style="margin-left: 25%;height: 33px; font-size: 15px;text-align: center; font-family:arial;width: 50%;margin-bottom: 2%;margin-top: 2%;padding: 1%;text-decoration: none;" >
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
                            <h4 style="font-family: arial; font-weight: bold;font-size: 13px;text-align: center; "><%=posts.get(0) + " - " + date.get(0)%></h4>

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
                </div>
                <div class="col-md-4 sidebar" style=" ">
                    <div style="border-bottom:1px solid #ebebe4;border-left:1px solid #ebebe4;border-right:1px solid #ebebe4;margin-bottom: 5% ">
                        <div class="teambox">
                            <h3 style="font-family: arial;font-size: 19px; margin-left:5%; margin-top: 8%; line-height: 10px; font-weight: bold">Player Selection</h3>
                        </div>
                        <div>
                            <h5 style="font-family: arial;font-size: 16px; margin-left:5%; line-height: 10px; font-weight:lighter; margin-top: 6%">View</h5>
                            <div>
                                <select class="form-control"  data-size="5">
                                    <optgroup label="Global">
                                        <option>All players</option>
                                        <option>Watchlist</option>
                                    </optgroup>
                                    <optgroup label="By Position">
                                        <option>Goalkeepers</option>
                                        <option>Defenders</option>
                                        <option>Midfielders</option>
                                        <option>Forwards</option>
                                    </optgroup>
                                    <optgroup label="By Team">
                                        <option>Boston Breakers</option>
                                        <option>Chicago Red Stars</option>
                                        <option>FC Kansas City</option>
                                        <option>Houston Dash</option>
                                        <option>North Carolina Courage</option>
                                        <option>Orlando Pride</option>
                                        <option>Portland Thorns</option>
                                        <option>Seattle Reign</option>
                                        <option>Sky Blue FC</option>
                                        <option>Washington Spirit</option> 
                                    </optgroup>
                                </select>

                            </div>
                        </div>
                        <div>
                            <h5 style="font-family: arial;font-size: 16px; margin-left:5%; line-height: 10px; font-weight:lighter; margin-top:6%">Sorted by</h5>
                            <div>
                                <select class="form-control"  data-size="5">
                                    <option>Total score</option>
                                    <option>Round score</option> <option>Price</option>
                                    <option>Teams selected by %</option>
                                    <option>Minutes played</option>
                                    <option>Goal scored</option><option>Assists</option>
                                    <option>Clean sheets</option>
                                    <option>Own goals</option>
                                    <option>Goals conceded</option>
                                    <option>Penalties saved</option>
                                    <option>Penalties missed</option>
                                    <option>Yellow cards</option>
                                    <option>Red cards</option>
                                    <option>Bonus</option> 
                                    <option>Saves</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <h5 style="font-family: arial;font-size: 16px; margin-left:5%; line-height: 10px; font-weight:lighter; margin-top: 6%">With a maximum price of</h5>
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
                            <h5 style="font-family: arial;font-size: 16px; margin-left:5%; line-height: 10px; font-weight:lighter; margin-top: 6%">Search Player List</h5>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text">
                        </div>
                        <div>
                            <h6 class="text-center" style="font-family: arial;font-size: 16px; margin-left:5%; line-height: 10px; font-weight:lighter; margin-top: 6%"><span style="color:red;font-weight: bold;">200</span> players shown</h6>
                        </div>
                        <div>
                            <table style="width:100%; background-color: #f9f5f5">
                                <tr>
                                    <th style="background-color: yellow"></th>
                                    <th style="background-color: yellow">GOALKEEPERS</th> 
                                    <th style="background-color: yellow">$</th>
                                    <th style="background-color: yellow">TS</th>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/orlandogk.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Harris</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">150</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/orlandogk.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Harris</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">150</td>
                                </tr>
                            </table>
                            <table style="width:100%; background-color: #f9f5f5">
                                <tr>
                                    <th style="background-color:#00ff87 "></th>
                                    <th style="background-color:#00ff87">DEFENDERS</th> 
                                    <th style="background-color:#00ff87">$</th>
                                    <th style="background-color:#00ff87">TS</th>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                            </table>
                            <table style="width:100%; background-color: #f9f5f5">
                                <tr>
                                    <th style="background-color:#04f5ff "></th>
                                    <th style="background-color:#04f5ff">MIDFIELDERS</th> 
                                    <th style="background-color:#04f5ff">$</th>
                                    <th style="background-color:#04f5ff">TS</th>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                               
                            </table>
                            <table style="width:100%; background-color: #f9f5f5">
                                <tr>
                                    <th style="background-color:#e90052 "></th>
                                    <th style="background-color:#e90052">FORWARDS</th> 
                                    <th style="background-color:#e90052">$</th>
                                    <th style="background-color:#e90052">TS</th>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weigh:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight: lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: arial; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: arial; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: arial; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-12" style="width:100%">
                            <button type="button" class="btn btn-default btn-circle col-md-1 col-xs-1" style="width:10%;margin-top:5%;margin-right:2% "><i class="glyphicon glyphicon-backward"></i></button>
                            <button type="button" class="btn btn-default btn-circle btn-lg  col-md-2 col-xs-2" style="width:4rem"><i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>
                            <h6 class="col-md-6 col-xs-6" style="width: 40%;font-family: arial;font-weight: lighter;left:10%;margin-top: 7%">Page <span style="font-weight: lighter" >1</span> of 3  </h6>
                            <button type="button" class="btn btn-default btn-circle btn-lg col-md-2 col-xs-2" style="width:4rem;left:10%"><i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>
                            <button type="button" class="btn btn-default btn-circle col-md-1 col-xs-1" style="width:10%;margin-top:5%;margin-right:2%;float: right"><i class="glyphicon glyphicon-forward"></i></button>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <script>
            $(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var prev = $('#prev').val();
                $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    $("#somediv").html("");
                    var $h4 = $("<h4>");
                    $h4.css({"font-family": "arial", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                    $h4.text(responseText[0] + " - " + responseText[3]).appendTo("#somediv");

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
                    for (i = responseText.length; i >= 3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left": "-2.05%", "margin-bottom": "1%", "margin-top": "2.5%"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if (i + 6 > 0) {
                            if (responseText[i] == responseText[i - 6]) {
                                $h6.css({"display": "none"});
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
                        $h6home.css({"margin-left": "2.5%", "font-size": "17px", "width": "230px", "text-align": "right"});
                        $h6home.text(responseText[i + 1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/" + responseText[i + 2], 'class': "col-md-1 col-xs-1"});
                        $imghome.css({"width": "initial ", "margin-left": "-1%", "margin-right": "2%"});
                        $imghome.appendTo($divrow);
                        var $divtime = $("<div>");
                        $divtime.attr({"class": "col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px", "width": "15%", "left": "-4.3%", "background-color": "#1d3260", "border-radius": " 3pt"});
                        $divtime.appendTo($divrow);
                        var $time = $("<h6>");
                        $time.css({"width": "100%", "text-align": "center", "color": "white", "font-family": "arial", "font-size": "16px", "font-weight": "lighter"});
                        $time.text(responseText[i + 3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
                        $imgaway.css({"width": "initial ", "margin-left": "-7%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6a.css({"left": "-7%", "width": "30%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4   "});
                        $h6away.css({"font-size": "17px", "width": "230px", "text-align": "left"});
                        $h6away.text(responseText[i + 4]).appendTo($divh6a);

                        if (i >= responseText.length) {
                            $divrow.css({"display": "none"});
                            $h6.css({"display": "none"});
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
                    $h4.text(responseText[0] + " - " + responseText[3]).appendTo("#somediv");

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
                    for (i = responseText.length; i >= 3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left": "-2.05%", "margin-bottom": "1%", "margin-top": "2.5%"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if (i + 6 > 0) {
                            if (responseText[i] == responseText[i - 6]) {
                                $h6.css({"display": "none"});
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
                        $h6home.css({"margin-left": "2.5%", "font-size": "17px", "width": "230px", "text-align": "right"});
                        $h6home.text(responseText[i + 1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/" + responseText[i + 2], 'class': "col-md-1 col-xs-1"});
                        $imghome.css({"width": "initial ", "margin-left": "-1%", "margin-right": "2%"});
                        $imghome.appendTo($divrow);
                        var $divtime = $("<div>");
                        $divtime.attr({"class": "col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px", "width": "15%", "left": "-4.3%", "background-color": "#1d3260", "border-radius": " 3pt"});
                        $divtime.appendTo($divrow);
                        var $time = $("<h6>");
                        $time.css({"width": "100%", "text-align": "center", "color": "white", "font-family": "arial", "font-size": "16px", "font-weight": "lighter"});
                        $time.text(responseText[i + 3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
                        $imgaway.css({"width": "initial ", "margin-left": "-7%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4   "});
                        $divh6a.css({"left": "-7%", "width": "30%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4   "});
                        $h6away.css({"font-size": "17px", "width": "230px"});
                        $h6away.text(responseText[i + 4]).appendTo($divh6a);

                        if (i >= responseText.length) {
                            $divrow.css({"display": "none"});
                            $h6.css({"display": "none"});
                        }

                    }

                });
            });
        </script>

    </body>

</html>
