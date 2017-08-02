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
                        <a href="enterRoster.html"  class="prevbutton btncustom col-md-12 " style="margin-left: 25%;height: 33px; font-size: 15px;text-align: center; font-family:arial;width: 50%;margin-bottom: 2%;margin-top: 2%;padding: 1%;text-decoration: none;" >
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
                <%
                    ArrayList<String> gkname = (ArrayList<String>) request.getAttribute("namegk");
                    ArrayList<String> gkteam = (ArrayList<String>) request.getAttribute("teamgk");
                    ArrayList<String> gkprice = (ArrayList<String>) request.getAttribute("pricegk");
                    ArrayList<String> gkscore = (ArrayList<String>) request.getAttribute("scoregk");
                    ArrayList<String> gk = (ArrayList<String>) request.getAttribute("badgegk");
                    ArrayList<String> defname = (ArrayList<String>) request.getAttribute("namedef");
                    ArrayList<String> defteam = (ArrayList<String>) request.getAttribute("teamdef");
                    ArrayList<String> defprice = (ArrayList<String>) request.getAttribute("pricedef");
                    ArrayList<String> defscore = (ArrayList<String>) request.getAttribute("scoredef");
                    ArrayList<String> def = (ArrayList<String>) request.getAttribute("badgedef");
                    ArrayList<String> midname = (ArrayList<String>) request.getAttribute("namemid");
                    ArrayList<String> midteam = (ArrayList<String>) request.getAttribute("teammid");
                    ArrayList<String> midprice = (ArrayList<String>) request.getAttribute("pricemid");
                    ArrayList<String> midscore = (ArrayList<String>) request.getAttribute("scoremid");
                    ArrayList<String> mid = (ArrayList<String>) request.getAttribute("badgemid");
                    ArrayList<String> fwdname = (ArrayList<String>) request.getAttribute("namefwd");
                    ArrayList<String> fwdteam = (ArrayList<String>) request.getAttribute("teamfwd");
                    ArrayList<String> fwdprice = (ArrayList<String>) request.getAttribute("pricefwd");
                    ArrayList<String> fwdscore = (ArrayList<String>) request.getAttribute("scorefwd");
                    ArrayList<String> fwd = (ArrayList<String>) request.getAttribute("badgefwd");
                %>            

                <div class="col-md-4 sidebar" style=" ">
                    <div style="border-bottom:1px solid #ebebe4;border-left:1px solid #ebebe4;border-right:1px solid #ebebe4;margin-bottom: 5% ">
                        <div class="teambox">
                            <h3 style="font-family: arial;font-size: 19px; margin-left:5%; margin-top: 8%; line-height: 10px; font-weight: bold">Player Selection</h3>
                        </div>
                        <div>
                            <h5 style="font-family: arial;font-size: 16px; margin-left:5%; line-height: 10px; font-weight:lighter; margin-top: 6%">View</h5>
                            <div>
                                <select class="form-control " id ="selectPlayers"  data-size="5" onchange="showPlayers(this.value)" >
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
                            <h6 class="text-center" style="font-family: arial;font-size: 16px; margin-left:5%; line-height: 10px; font-weight:lighter; margin-top: 6%"><span style="color:red;font-weight: bold;" id ="total"><%=request.getAttribute("total")%></span> players shown</h6>
                        </div>
                        <div>
                            <table style="width:100%; background-color: #f9f5f5" id='gk'>
                                <tr>
                                    <th style="background-color: yellow"></th>
                                    <th style="background-color: yellow">GOALKEEPERS</th> 
                                    <th style="background-color: yellow; text-align: center">$</th>
                                    <th style="background-color: yellow; text-align: center">TS</th>
                                </tr>
                                <tr id='gk1'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="gkimage1" src="img/<%=gk.get(0)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="gkname1" style="font-size: 14px;font-family: arial; " ><%=gkname.get(0)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="gkteam1" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=gkteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="gkprice1" style="font-family: arial;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= gkprice.get(0)%></td>
                                    <td id="gkscore1" style="font-family: arial;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= gkscore.get(0)%></td>
                                </tr>
                                <tr id='gk2'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="gkimage2" src="img/<%=gk.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="gkname2" style="font-size: 14px;font-family: arial; "><%=gkname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="gkteam2" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=gkteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="gkprice2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= gkprice.get(1)%></td>
                                    <td id="gkscore2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= gkscore.get(1)%></td>
                                </tr>
                                <%
                                    String gkstr;
                                    String gkimagestr;
                                    String gknamestr;
                                    String gkteamstr;
                                    String gkpricestr;
                                    String gkscorestr;

                                    for (int i = 3; i <= 20; i++) {
                                        gkstr = "gk" + i;
                                        gkimagestr = "gkimage" + i;
                                        gknamestr = "gkname" + i;
                                        gkteamstr = "gkteam" + i;
                                        gkpricestr = "gkprice" + i;
                                        gkscorestr = "gkscore" + i;

                                %>
                                <tr id='<%=gkstr%>' style='display:none'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=gkimagestr%>" src="img/<%=gk.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="<%=gknamestr%>" style="font-size: 14px;font-family: arial; "><%=gkname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="<%=gkteamstr%>" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=gkteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=gkpricestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= gkprice.get(1)%></td>
                                    <td id="<%=gkscorestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= gkscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>
                            </table>
                            <table style="width:100%; background-color: #f9f5f5" id='def'>
                                <tr>
                                    <th style="background-color:#00ff87 "></th>
                                    <th style="background-color:#00ff87">DEFENDERS</th> 
                                    <th style="background-color:#00ff87; text-align: center">$</th>
                                    <th style="background-color:#00ff87; text-align: center">TS</th>
                                </tr>
                                <tr id="def1" style=''>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div  class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef1" src="img/<%=def.get(0)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef1" style="font-size: 14px;font-family: arial; "><%=defname.get(0)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef1" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef1" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(0)%></td>
                                    <td id="scoredef1" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(0)%></td>
                                </tr>
                                <tr id="def2" style=''>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef2" src="img/<%=def.get(1)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef2" style="font-size: 14px;font-family: arial; "><%=defname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef2" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(1)%></td>
                                    <td id="scoredef2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(1)%></td>
                                </tr>
                                <tr id="def3" style=''>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef3" src="img/<%=def.get(2)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef3" style="font-size: 14px;font-family: arial; "><%=defname.get(2)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef3" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(2)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef3" style="font-family: arial;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(2)%></td>
                                    <td id="scoredef3" style="font-family: arial;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(2)%></td>
                                </tr>
                                <tr id="def4" style=''>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef4" src="img/<%=def.get(3)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef4" style="font-size: 14px;font-family: arial; "><%=defname.get(3)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef4" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(3)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef4" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(3)%></td>
                                    <td id="scoredef4" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  "><%=defscore.get(3)%></td>
                                </tr>
                                <tr id="def5" style=''>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef5" src="img/<%=def.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef5" style="font-size: 14px;font-family: arial; "><%=defname.get(4)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef5" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef5" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(4)%></td>
                                    <td id="scoredef5" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(4)%></td>
                                </tr>
                                <tr id="def6" style=''>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef6" src="img/<%=def.get(5)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef6" style="font-size: 14px;font-family: arial; "><%=defname.get(5)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef6" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(5)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef6" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(5)%></td>
                                    <td id="scoredef6" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(5)%></td>
                                </tr>
                                <tr id="def7" style=''>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef7" src="img/<%=def.get(6)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef7" style="font-size: 14px;font-family: arial; "><%=defname.get(6)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef7" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(6)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef7" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(6)%></td>
                                    <td id="scoredef7" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(6)%></td>
                                </tr>
                                <tr id="def8" >
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagedef8" src="img/<%=def.get(7)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namedef8" style="font-size: 14px;font-family: arial; "><%=defname.get(7)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamdef8" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(7)%></span>
                                        </div>
                                    </td>
                                    <td id="pricedef8" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=defprice.get(7)%></td>
                                    <td id="scoredef8" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=defscore.get(7)%></td>
                                </tr>
                                <%
                                    String defstr;
                                    String defimagestr;
                                    String defnamestr;
                                    String defteamstr;
                                    String defpricestr;
                                    String defscorestr;

                                    for (int i = 9; i <= 20; i++) {
                                        defstr = "def" + i;
                                        defimagestr = "imagedef" + i;
                                        defnamestr = "namedef" + i;
                                        defteamstr = "teamdef" + i;
                                        defpricestr = "pricedef" + i;
                                        defscorestr = "scoredef" + i;

                                %>
                                <tr id='<%=defstr%>' style='display:none'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=defimagestr%>" src="img/<%=def.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="<%=defnamestr%>" style="font-size: 14px;font-family: arial; "><%=defname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="<%=defteamstr%>" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=defteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=defpricestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= defprice.get(1)%></td>
                                    <td id="<%=defscorestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= defscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>
                            </table>
                            <table style="width:100%; background-color: #f9f5f5" id='mid'>
                                <tr>
                                    <th style="background-color:#04f5ff "></th>
                                    <th style="background-color:#04f5ff">MIDFIELDERS</th> 
                                    <th style="background-color:#04f5ff; text-align: center">$</th>
                                    <th style="background-color:#04f5ff; text-align: center">TS</th>
                                </tr>
                                <tr id='mid1'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid1" src="img/<%=mid.get(0)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namemid1" style="font-size: 14px;font-family: arial; "><%=midname.get(0)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teammid1" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=midteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid1" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(0)%></td>
                                    <td id="scoremid1" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(0)%></td>
                                </tr>
                                <tr id='mid2'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid2" src="img/<%=mid.get(1)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namemid2" style="font-size: 14px;font-family: arial; "><%=midname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teammid2" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=midteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(1)%></td>
                                    <td id="scoremid2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(1)%></td>
                                </tr>
                                <tr id="mid3">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid3" src="img/<%=mid.get(2)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namemid3" style="font-size: 14px;font-family: arial; "><%=midname.get(2)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teammid3" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=midteam.get(2)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid3" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(2)%></td>
                                    <td id="scoremid3" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(2)%></td>
                                </tr>
                                <tr id="mid4">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid4" src="img/<%=mid.get(3)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namemid4" style="font-size: 14px;font-family: arial; "><%=midname.get(3)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teammid4" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=midteam.get(3)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid4" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(3)%></td>
                                    <td id="scoremid4" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(3)%></td>
                                </tr>
                                <tr id="mid5">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid5" src="img/<%=mid.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namemid5" style="font-size: 14px;font-family: arial; "><%=midname.get(4)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teammid5" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=midteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid5" style="font-family: arial ;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(4)%></td>
                                    <td id="scoremid5" style="font-family: arial ;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(4)%></td>
                                </tr >
                                <tr id="mid6" style="display:none">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagemid6" src="img/<%=mid.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namemid6" style="font-size: 14px;font-family: arial; "><%=midname.get(4)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teammid6" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=midteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricemid6" style="font-family: arial ;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=midprice.get(4)%></td>
                                    <td id="scoremid6" style="font-family: arial ;text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=midscore.get(4)%></td>
                                </tr>
                                <%
                                    String midstr;
                                    String midimagestr;
                                    String midnamestr;
                                    String midteamstr;
                                    String midpricestr;
                                    String midscorestr;

                                    for (int i = 6; i <= 20; i++) {
                                        midstr = "mid" + i;
                                        midimagestr = "imagemid" + i;
                                        midnamestr = "namemid" + i;
                                        midteamstr = "teammid" + i;
                                        midpricestr = "pricemid" + i;
                                        midscorestr = "scoremid" + i;

                                %>
                                <tr id='<%=midstr%>' style='display:none'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=midimagestr%>" src="img/<%=mid.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="<%=midnamestr%>" style="font-size: 14px;font-family: arial; "><%=midname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="<%=midteamstr%>" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=midteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=midpricestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= midprice.get(1)%></td>
                                    <td id="<%=midscorestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= midscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>


                            </table>
                            <table style="width:100%; background-color: #f9f5f5" id='fwd'>
                                <tr>
                                    <th style="background-color:#e90052 "></th>
                                    <th style="background-color:#e90052">FORWARDS</th> 
                                    <th style="background-color:#e90052; text-align: center">$</th>
                                    <th style="background-color:#e90052; text-align: center">TS</th>
                                </tr>
                                <tr id="fwd1">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd1" src="img/<%=fwd.get(0)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namefwd1" style="font-size: 14px;font-family: arial; "><%=fwdname.get(0)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamfwd1" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=fwdteam.get(0)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd1" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(0)%></td>
                                    <td id="scorefwd1" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(0)%></td>
                                </tr>
                                <tr id="fwd2">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd2" src="img/<%=fwd.get(1)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namefwd2" style="font-size: 14px;font-family: arial; "><%=fwdname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamfwd2" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=fwdteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(1)%></td>
                                    <td id="scorefwd2" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(1)%></td>
                                </tr>
                                <tr id="fwd3">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd3" src="img/<%=fwd.get(2)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namefwd3" style="font-size: 14px;font-family: arial; "><%=fwdname.get(2)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamfwd3" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=fwdteam.get(2)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd3" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(2)%></td>
                                    <td id="scorefwd3" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(2)%></td>
                                </tr>
                                <tr id="fwd4">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd4" src="img/<%=fwd.get(3)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namefwd4" style="font-size: 14px;font-family: arial; "><%=fwdname.get(3)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamfwd4" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=fwdteam.get(3)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd4" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(3)%></td>
                                    <td id="scorefwd4" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(3)%></td>
                                </tr>
                                <tr id="fwd5">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd5" src="img/<%=fwd.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namefwd5" style="font-size: 14px;font-family: arial; "><%=fwdname.get(4)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamfwd5" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=fwdteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd5" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(4)%></td>
                                    <td id="scorefwd5" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(4)%></td>
                                </tr>
                                <tr id="fwd6" style="display:none">
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="imagefwd6" src="img/<%=fwd.get(4)%>" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="namefwd6" style="font-size: 14px;font-family: arial; "><%=fwdname.get(4)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="teamfwd6" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=fwdteam.get(4)%></span>
                                        </div>
                                    </td>
                                    <td id="pricefwd6" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%=fwdprice.get(4)%></td>
                                    <td id="scorefwd6" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%=fwdscore.get(4)%></td>
                                </tr>
                                <%
                                    String fwdstr;
                                    String fwdimagestr;
                                    String fwdnamestr;
                                    String fwdteamstr;
                                    String fwdpricestr;
                                    String fwdscorestr;

                                    for (int i = 6; i <= 20; i++) {
                                        fwdstr = "fwd" + i;
                                        fwdimagestr = "imagefwd" + i;
                                        fwdnamestr = "namefwd" + i;
                                        fwdteamstr = "teamfwd" + i;
                                        fwdpricestr = "pricefwd" + i;
                                        fwdscorestr = "scorefwd" + i;

                                %>
                                <tr id='<%=fwdstr%>' style='display:none'>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 60% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img id="<%=fwdimagestr%>" src="img/<%=fwd.get(1)%> " style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span id="<%=fwdnamestr%>" style="font-size: 14px;font-family: arial; "><%=fwdname.get(1)%></span><hr style="border:none;margin-top: -34%">
                                            <span id="<%=fwdteamstr%>" style="font-size: 12px;font-family: arial; font-weight: lighter "><%=fwdteam.get(1)%></span>
                                        </div>
                                    </td>
                                    <td id="<%=fwdpricestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%  ">$<%= fwdprice.get(1)%></td>
                                    <td id="<%=fwdscorestr%>" style="font-family: arial; text-align: center ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 15.5%     "><%= fwdscore.get(1)%></td>
                                </tr>

                                <%
                                    }%>

                            </table>
                        </div>
                        <div class="col-md-12" style="width:100%">
                            <button id="start" value="1" type="button" class="btn btn-default btn-circle col-md-1 col-xs-1" style="width:10%;margin-top:4.5%;margin-right:2%; padding-right: 0.8% " disabled><i class="glyphicon glyphicon-backward"></i></button>
                            <button id="prevPlayers" value="1" type="button" class="btn btn-default btn-circle btn-lg  col-md-2 col-xs-2" style="width:4rem" disabled><i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>
                            <h6 class="col-md-6 col-xs-6" style="width: 40%;font-family: arial;font-weight: lighter;left:10%;margin-top: 7%; font-size: 13px">Page <span id="page" style="font-weight: lighter" >1</span> of 11  </h6>
                            <button  id="nextPlayers" value="2"  type="button" class="btn btn-default btn-circle btn-lg col-md-2 col-xs-2" style="width:4rem;left:12%"><i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>
                            <button id="end" value="11" type="button" class="btn btn-default btn-circle col-md-1 col-xs-1" style="width:10%;margin-top:4.5%;float: right;padding-left: 1.5%"><i class="glyphicon glyphicon-forward"></i></button>
                            <button id="startSelect" value="1" type="button" class="btn btn-default btn-circle col-md-1 col-xs-1" style="width:10%;margin-top:4.5%;margin-right:2%; padding-right: 0.8%;display:none " disabled><i class="glyphicon glyphicon-backward"></i></button>
                            <button id="prevPlayersSelect" value="1" type="button" class="btn btn-default btn-circle btn-lg  col-md-2 col-xs-2" style="width:4rem;display:none;" disabled><i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>
                            <h6 id="pageSelect"  class="col-md-6 col-xs-6" style="width: 40%;font-family: arial;font-weight: lighter;left:10%;margin-top: 7%; font-size: 13px;display:none;">Page <span style="font-weight: lighter" >1</span> of 11  </h6>
                            <button  id="nextPlayersSelect" value="2"  type="button" class="btn btn-default btn-circle btn-lg col-md-2 col-xs-2" style="width:4rem;left:12%;display:none;"><i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>
                            <button id="endSelect" value="11" type="button" class="btn btn-default btn-circle col-md-1 col-xs-1" style="width:10%;margin-top:4.5%;float: right;padding-left: 1.5%;display:none;"><i class="glyphicon glyphicon-forward"></i></button>
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


        <script>
            $(document).on("click", "#nextPlayers", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var page = $('#nextPlayers').val();
                $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    document.getElementById("nextPlayers").value = responseText[1];
                    document.getElementById("prevPlayers").value = responseText[0];
                    document.getElementById("page").innerHTML = responseText[1] - 1;
                    if (responseText[1] == 12) {
                        document.getElementById("nextPlayers").disabled = true;
                        document.getElementById("end").disabled = true;
                    }
                    if (responseText[1] == 3) {
                        document.getElementById("prevPlayers").disabled = false;
                        document.getElementById("start").disabled = false;
                    }
                    document.getElementById("gkname1").innerHTML = responseText[2];
                    document.getElementById("gkimage1").src = "img/" + responseText[3];
                    document.getElementById("gkteam1").innerHTML = responseText[4];
                    document.getElementById("gkprice1").innerHTML = "$" + responseText[5];
                    document.getElementById("gkscore1").innerHTML = responseText[6];
                    document.getElementById("gkname2").innerHTML = responseText[7];
                    document.getElementById("gkimage2").src = "img/" + responseText[8];
                    document.getElementById("gkteam2").innerHTML = responseText[9];
                    document.getElementById("gkprice2").innerHTML = "$" + responseText[10];
                    document.getElementById("gkscore2").innerHTML = responseText[11];
                    if (responseText[1] - 1 == 1) {
                        var length = 8;
                        document.getElementById("def6").style.display = "";
                        document.getElementById("def7").style.display = "";
                        document.getElementById("def8").style.display = "";
                    } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
                        var length = 7;
                        document.getElementById("def6").style.display = "";
                        document.getElementById("def7").style.display = "";
                        document.getElementById("def8").style.display = "none";
                    } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
                        var length = 6;
                        document.getElementById("def6").style.display = "";
                        document.getElementById("def7").style.display = "none";
                        document.getElementById("def8").style.display = "none";
                    } else if (responseText[1] - 1 == 11) {
                        var length = 5;
                        document.getElementById("def6").style.display = "none";
                        document.getElementById("def7").style.display = "none";
                        document.getElementById("def8").style.display = "none";
                    }
                    var k = 1;
                    for (i = 12; i < (length * 5) + 12; i = i + 5) {
                        console.log(responseText[i] + " " + k);
                        document.getElementById("namedef" + k).innerHTML = responseText[i];
                        document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }

                    if (responseText[1] - 1 == 1) {
                        var length2 = 5;
                        document.getElementById("mid3").style.display = "";
                        document.getElementById("mid4").style.display = "";
                        document.getElementById("mid5").style.display = "";
                        document.getElementById("mid6").style.display = "none";
                    } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3 || responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
                        var length2 = 6;
                        document.getElementById("mid3").style.display = "";
                        document.getElementById("mid4").style.display = "";
                        document.getElementById("mid5").style.display = "";
                        document.getElementById("mid6").style.display = "";
                    } else if (responseText[1] - 1 == 11) {
                        var length2 = 2;
                        document.getElementById("mid3").style.display = "none";
                        document.getElementById("mid4").style.display = "none";
                        document.getElementById("mid5").style.display = "none";
                        document.getElementById("mid6").style.display = "none";
                    }
                    var k = 1;
                    for (i = (length * 5) + 12; i < (length2 * 5) + (length * 5) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namemid" + k).innerHTML = responseText[i];
                        document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }

                    if (responseText[1] - 1 == 1 || responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
                        var length3 = 5;
                        document.getElementById("fwd3").style.display = "";
                        document.getElementById("fwd4").style.display = "";
                        document.getElementById("fwd5").style.display = "";
                        document.getElementById("fwd6").style.display = "none";
                    } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
                        var length3 = 6;
                        document.getElementById("fwd3").style.display = "";
                        document.getElementById("fwd4").style.display = "";
                        document.getElementById("fwd5").style.display = "";
                        document.getElementById("fwd6").style.display = "";
                    } else if (responseText[1] - 1 == 11) {
                        var length3 = 2;
                        document.getElementById("fwd3").style.display = "none";
                        document.getElementById("fwd4").style.display = "none";
                        document.getElementById("fwd5").style.display = "none";
                        document.getElementById("fwd6").style.display = "none";
                    }
                    var k = 1;
                    for (i = (length * 5) + (length2 * 5) + 12; i < (length3 * 5) + (length2 * 5) + (length * 5) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namefwd" + k).innerHTML = responseText[i];
                        document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }
                });
            });
        </script>
        <script>
            $(document).on("click", "#end", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var page = $('#end').val();
                $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    document.getElementById("page").innerHTML = 11;
                    if (responseText[1] == 12) {
                        document.getElementById("nextPlayers").disabled = true;
                        document.getElementById("end").disabled = true;
                        document.getElementById("prevPlayers").value = 10;
                        document.getElementById("prevPlayers").disabled = false;
                        document.getElementById("start").disabled = false;
                    }

                    document.getElementById("gkname1").innerHTML = responseText[2];
                    document.getElementById("gkimage1").src = "img/" + responseText[3];
                    document.getElementById("gkteam1").innerHTML = responseText[4];
                    document.getElementById("gkprice1").innerHTML = responseText[5];
                    document.getElementById("gkscore1").innerHTML = responseText[6];
                    document.getElementById("gkname2").innerHTML = responseText[7];
                    document.getElementById("gkimage2").src = "img/" + responseText[8];
                    document.getElementById("gkteam2").innerHTML = responseText[9];
                    document.getElementById("gkprice2").innerHTML = responseText[10];
                    document.getElementById("gkscore2").innerHTML = responseText[11];
                    document.getElementById("def6").style.display = "none";
                    document.getElementById("def7").style.display = "none";
                    document.getElementById("def8").style.display = "none";
                    var k = 1;
                    for (i = 12; i < (5 * 5) + 12; i = i + 5) {
                        console.log(responseText[i] + " " + k);
                        document.getElementById("namedef" + k).innerHTML = responseText[i];
                        document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }
                    var length2 = 2;
                    document.getElementById("mid3").style.display = "none";
                    document.getElementById("mid4").style.display = "none";
                    document.getElementById("mid5").style.display = "none";
                    document.getElementById("mid6").style.display = "none";
                    var k = 1;
                    for (i = (5 * 5) + 12; i < (length2 * 5) + (5 * 5) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namemid" + k).innerHTML = responseText[i];
                        document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }
                    var length3 = 2;
                    document.getElementById("fwd3").style.display = "none";
                    document.getElementById("fwd4").style.display = "none";
                    document.getElementById("fwd5").style.display = "none";
                    document.getElementById("fwd6").style.display = "none";
                    var k = 1;
                    for (i = (5 * 2) + (5 * 5) + 12; i < (length3 * 5) + (5 * 5) + (5 * 2) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namefwd" + k).innerHTML = responseText[i];
                        document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }

                });
            });
        </script>
        <script>
            $(document).on("click", "#start", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var page = $('#start').val();
                $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    document.getElementById("page").innerHTML = 1;
                    if (responseText[0] == 0) {
                        document.getElementById("prevPlayers").disabled = true;
                        document.getElementById("start").disabled = true;
                        document.getElementById("nextPlayers").value = 2;
                        document.getElementById("nextPlayers").disabled = false;
                        document.getElementById("end").disabled = false;
                    }

                    document.getElementById("gkname1").innerHTML = responseText[2];
                    document.getElementById("gkimage1").src = "img/" + responseText[3];
                    document.getElementById("gkteam1").innerHTML = responseText[4];
                    document.getElementById("gkprice1").innerHTML = responseText[5];
                    document.getElementById("gkscore1").innerHTML = responseText[6];
                    document.getElementById("gkname2").innerHTML = responseText[7];
                    document.getElementById("gkimage2").src = "img/" + responseText[8];
                    document.getElementById("gkteam2").innerHTML = responseText[9];
                    document.getElementById("gkprice2").innerHTML = responseText[10];
                    document.getElementById("gkscore2").innerHTML = responseText[11];
                    document.getElementById("def6").style.display = "";
                    document.getElementById("def7").style.display = "";
                    document.getElementById("def8").style.display = "";
                    var k = 1;
                    for (i = 12; i < (5 * 8) + 12; i = i + 5) {
                        console.log(responseText[i] + " " + k);
                        document.getElementById("namedef" + k).innerHTML = responseText[i];
                        document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }
                    var length2 = 5;
                    document.getElementById("mid3").style.display = "";
                    document.getElementById("mid4").style.display = "";
                    document.getElementById("mid5").style.display = "";
                    document.getElementById("mid6").style.display = "none";
                    var k = 1;
                    for (i = (5 * 8) + 12; i < (length2 * 5) + (5 * 8) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namemid" + k).innerHTML = responseText[i];
                        document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }
                    var length3 = 5;
                    document.getElementById("fwd3").style.display = "";
                    document.getElementById("fwd4").style.display = "";
                    document.getElementById("fwd5").style.display = "";
                    document.getElementById("fwd6").style.display = "none";
                    var k = 1;
                    for (i = (5 * 8) + (5 * 5) + 12; i < (length3 * 5) + (5 * 5) + (5 * 8) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namefwd" + k).innerHTML = responseText[i];
                        document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }
                });
            });
        </script>
        <script>
            $(document).on("click", "#prevPlayers", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                var page = $('#prevPlayers').val();
                $.get("playersData", {page: page}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    document.getElementById("prevPlayers").value = responseText[0];
                    document.getElementById("nextPlayers").value = responseText[1];
                    document.getElementById("page").innerHTML = responseText[1] - 1;
                    if (responseText[0] == 0) {
                        document.getElementById("prevPlayers").value = 1;
                        document.getElementById("prevPlayers").disabled = true;
                        document.getElementById("start").disabled = true;
                    }
                    if (responseText[1] == 11) {
                        document.getElementById("nextPlayers").disabled = false;
                        document.getElementById("end").disabled = false;
                    }
                    document.getElementById("gkname1").innerHTML = responseText[2];
                    document.getElementById("gkimage1").src = "img/" + responseText[3];
                    document.getElementById("gkteam1").innerHTML = responseText[4];
                    document.getElementById("gkprice1").innerHTML = responseText[5];
                    document.getElementById("gkscore1").innerHTML = responseText[6];
                    document.getElementById("gkname2").innerHTML = responseText[7];
                    document.getElementById("gkimage2").src = "img/" + responseText[8];
                    document.getElementById("gkteam2").innerHTML = responseText[9];
                    document.getElementById("gkprice2").innerHTML = responseText[10];
                    document.getElementById("gkscore2").innerHTML = responseText[11];
                    if (responseText[1] - 1 == 1) {
                        var length = 8;
                        document.getElementById("def6").style.display = "";
                        document.getElementById("def7").style.display = "";
                        document.getElementById("def8").style.display = "";
                    } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
                        var length = 7;
                        document.getElementById("def6").style.display = "";
                        document.getElementById("def7").style.display = "";
                        document.getElementById("def8").style.display = "none";
                    } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
                        var length = 6;
                        document.getElementById("def6").style.display = "";
                        document.getElementById("def7").style.display = "none";
                        document.getElementById("def8").style.display = "none";
                    } else if (responseText[1] - 1 == 11) {
                        var length = 5;
                        document.getElementById("def6").style.display = "none";
                        document.getElementById("def7").style.display = "none";
                        document.getElementById("def8").style.display = "none";
                    }
                    var k = 1;
                    for (i = 12; i < (length * 5) + 12; i = i + 5) {
                        console.log(responseText[i] + " " + k);
                        document.getElementById("namedef" + k).innerHTML = responseText[i];
                        document.getElementById("imagedef" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamdef" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricedef" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoredef" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }

                    if (responseText[1] - 1 == 1) {
                        var length2 = 5;
                        document.getElementById("mid3").style.display = "";
                        document.getElementById("mid4").style.display = "";
                        document.getElementById("mid5").style.display = "";
                        document.getElementById("mid6").style.display = "none";
                    } else if (responseText[1] - 1 == 2 || responseText[1] - 1 == 3 || responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
                        var length2 = 6;
                        document.getElementById("mid3").style.display = "";
                        document.getElementById("mid4").style.display = "";
                        document.getElementById("mid5").style.display = "";
                        document.getElementById("mid6").style.display = "";
                    } else if (responseText[1] - 1 == 11) {
                        var length2 = 2;
                        document.getElementById("mid3").style.display = "none";
                        document.getElementById("mid4").style.display = "none";
                        document.getElementById("mid5").style.display = "none";
                        document.getElementById("mid6").style.display = "none";
                    }
                    var k = 1;
                    for (i = (length * 5) + 12; i < (length2 * 5) + (length * 5) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namemid" + k).innerHTML = responseText[i];
                        document.getElementById("imagemid" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teammid" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricemid" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scoremid" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }

                    if (responseText[1] - 1 == 1 || responseText[1] - 1 == 2 || responseText[1] - 1 == 3) {
                        var length3 = 5;
                        document.getElementById("fwd3").style.display = "";
                        document.getElementById("fwd4").style.display = "";
                        document.getElementById("fwd5").style.display = "";
                        document.getElementById("fwd6").style.display = "none";
                    } else if (responseText[1] - 1 == 4 || responseText[1] - 1 == 5 || responseText[1] - 1 == 6 || responseText[1] - 1 == 7 || responseText[1] - 1 == 8 || responseText[1] - 1 == 9 || responseText[1] - 1 == 10) {
                        var length3 = 6;
                        document.getElementById("fwd3").style.display = "";
                        document.getElementById("fwd4").style.display = "";
                        document.getElementById("fwd5").style.display = "";
                        document.getElementById("fwd6").style.display = "";
                    } else if (responseText[1] - 1 == 11) {
                        var length3 = 2;
                        document.getElementById("fwd3").style.display = "none";
                        document.getElementById("fwd4").style.display = "none";
                        document.getElementById("fwd5").style.display = "none";
                        document.getElementById("fwd6").style.display = "none";
                    }
                    var k = 1;
                    for (i = (length * 5) + (length2 * 5) + 12; i < (length3 * 5) + (length2 * 5) + (length * 5) + 12; i = i + 5) {
                        console.log(responseText.length + " " + i);
                        document.getElementById("namefwd" + k).innerHTML = responseText[i];
                        document.getElementById("imagefwd" + k).src = "img/" + responseText[i + 1];
                        document.getElementById("teamfwd" + k).innerHTML = responseText[i + 2];
                        document.getElementById("pricefwd" + k).innerHTML = "$" + responseText[i + 3];
                        document.getElementById("scorefwd" + k).innerHTML = responseText[i + 4];
                        k = k + 1;
                    }
                });
            });
        </script>


        <script type="text/javascript">
            function showPlayers(str) {
                var xhttp;
                if (str == "all") {
                    xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            var data = xhttp.responseText;
                            var jsonResponse = JSON.parse(data);
                            document.getElementById("total").innerHTML = (jsonResponse.length / 5);
                            document.getElementById("gk").style.display = "";
                            document.getElementById("def").style.display = "";
                            document.getElementById("mid").style.display = "";
                            document.getElementById("fwd").style.display = "";

                            for (i = 1; i < 21; i++) {
                                console.log(i + "i");
                                if (i >= 3) {
                                    document.getElementById("gk" + i).style.display = "none";
                                }
                                if (i >= 6) {
                                    
                                    document.getElementById("mid" + i).style.display = "none";
                                    document.getElementById("fwd" + i).style.display = "none";

                                }
                                if (i >= 9) {
                                    document.getElementById("def" + i).style.display = "none";

                                }
                            }
                            var gk = 1;
                            var def=1;
                            var mid=1;
                            var fwd= 1;
                            for (k = 0; k < jsonResponse.length; k = k + 5) {
                                if (k <= 5) {
                                    
                                    document.getElementById("gkname" + i).innerHTML = jsonResponse[k];
                                    document.getElementById("gkimage" + i).src = "img/" + jsonResponse[k + 1];
                                    document.getElementById("gkteam" + i).innerHTML = jsonResponse[k + 2];
                                    document.getElementById("gkprice" + i).innerHTML = "$" + jsonResponse[k + 3];
                                    document.getElementById("gkscore" + i).innerHTML = jsonResponse[k + 4];
                                    gk++;
                                    
                                } else if ( k <= 45) {
                                    console.log(jsonResponse[k]);
                                    document.getElementById("namedef" + i).innerHTML = jsonResponse[k];
                                    document.getElementById("imagedef" + i).src = "img/" + jsonResponse[k + 1];
                                    document.getElementById("teamdef" + i).innerHTML = jsonResponse[k + 2];
                                    document.getElementById("pricedef" + i).innerHTML = "$" + jsonResponse[k + 3];
                                    document.getElementById("scoredef" + i).innerHTML = jsonResponse[k + 4];
                                    def++;
                                } else if ( k <= 70) {
                                    
                                    document.getElementById("namemid" + i).innerHTML = jsonResponse[k];
                                    document.getElementById("imagemid" + i).src = "img/" + jsonResponse[k + 1];
                                    document.getElementById("teammid" + i).innerHTML = jsonResponse[k + 2];
                                    document.getElementById("pricemid" + i).innerHTML = "$" + jsonResponse[k + 3];
                                    document.getElementById("scoremid" + i).innerHTML = jsonResponse[k + 4];
                                    mid++;
                                } else {
                                    
                                    document.getElementById("namefwd" + i).innerHTML = jsonResponse[k];
                                    document.getElementById("imagefwd" + i).src = "img/" + jsonResponse[k + 1];
                                    document.getElementById("teamfwd" + i).innerHTML = jsonResponse[k + 2];
                                    document.getElementById("pricefwd" + i).innerHTML = "$" + jsonResponse[i + 3];
                                    document.getElementById("scorefwd" + i).innerHTML = jsonResponse[k + 4];
                                    fwd++;
                                }
                                
                                
                            }
                        }
                    };
                    xhttp.open("GET", "allPlayers?pos=" + str, true);
                    xhttp.send();
                } else if (str == "Goalkeeper" || str == "Defender" || str == "Midfielder" || str == "Forward") {
                    xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            var data = xhttp.responseText;
                            var jsonResponse = JSON.parse(data);
                            document.getElementById("total").innerHTML = (jsonResponse.length / 5);
                            if (str == "Goalkeeper") {
                                document.getElementById("gk").style.display = "";
                                document.getElementById("def").style.display = "none";
                                document.getElementById("mid").style.display = "none";
                                document.getElementById("fwd").style.display = "none";
                                var k = 1;
                                for (i = 0; i < 100; i = i + 5) {

                                    document.getElementById("gk" + k).style.display = "";
                                    document.getElementById("gkname" + k).innerHTML = jsonResponse[i];
                                    document.getElementById("gkimage" + k).src = "img/" + jsonResponse[i + 1];
                                    document.getElementById("gkteam" + k).innerHTML = jsonResponse[i + 2];
                                    document.getElementById("gkprice" + k).innerHTML = "$" + jsonResponse[i + 3];
                                    document.getElementById("gkscore" + k).innerHTML = jsonResponse[i + 4];

                                    console.log(i + "" + " -" + k);
                                    k = k + 1;
                                }
                            } else if (str == "Defender") {

                                document.getElementById("gk").style.display = "none";
                                document.getElementById("def").style.display = "";
                                document.getElementById("mid").style.display = "none";
                                document.getElementById("fwd").style.display = "none";
                                var k = 1;
                                for (i = 0; i < 100; i = i + 5) {

                                    console.log(i + "" + " -" + k + "length" + jsonResponse.length);
                                    document.getElementById("def" + k).style.display = "";
                                    document.getElementById("namedef" + k).innerHTML = jsonResponse[i];
                                    document.getElementById("imagedef" + k).src = "img/" + jsonResponse[i + 1];
                                    document.getElementById("teamdef" + k).innerHTML = jsonResponse[i + 2];
                                    document.getElementById("pricedef" + k).innerHTML = "$" + jsonResponse[i + 3];
                                    document.getElementById("scoredef" + k).innerHTML = jsonResponse[i + 4];
                                    k = k + 1;
                                }
                            } else if (str == "Midfielder") {
                                document.getElementById("gk").style.display = "none";
                                document.getElementById("def").style.display = "none";
                                document.getElementById("mid").style.display = "";
                                document.getElementById("fwd").style.display = "none";
                                var k = 1;
                                for (i = 0; i < 100; i = i + 5) {

                                    console.log(i + "" + " -" + k);
                                    document.getElementById("mid" + k).style.display = "";
                                    document.getElementById("namemid" + k).innerHTML = jsonResponse[i];
                                    document.getElementById("imagemid" + k).src = "img/" + jsonResponse[i + 1];
                                    document.getElementById("teammid" + k).innerHTML = jsonResponse[i + 2];
                                    document.getElementById("pricemid" + k).innerHTML = "$" + jsonResponse[i + 3];
                                    document.getElementById("scoremid" + k).innerHTML = jsonResponse[i + 4];
                                    k = k + 1;
                                }
                            } else if (str == "Forward") {
                                document.getElementById("gk").style.display = "none";
                                document.getElementById("def").style.display = "none";
                                document.getElementById("mid").style.display = "none";
                                document.getElementById("fwd").style.display = "";
                                var k = 1;
                                for (i = 0; i < 100; i = i + 5) {

                                    console.log(i + "" + " -" + k);
                                    document.getElementById("fwd" + k).style.display = "";
                                    document.getElementById("namefwd" + k).innerHTML = jsonResponse[i];
                                    document.getElementById("imagefwd" + k).src = "img/" + jsonResponse[i + 1];
                                    document.getElementById("teamfwd" + k).innerHTML = jsonResponse[i + 2];
                                    document.getElementById("pricefwd" + k).innerHTML = "$" + jsonResponse[i + 3];
                                    document.getElementById("scorefwd" + k).innerHTML = jsonResponse[i + 4];
                                    k = k + 1;
                                }
                            }
                        }
                    };
                    xhttp.open("GET", "playersSelection?pos=" + str, true);
                    xhttp.send();
                }
            }
        </script>
    </body>

</html>
