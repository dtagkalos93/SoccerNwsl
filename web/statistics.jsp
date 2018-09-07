<%@page import="com.fantasy.Statistics"%>
<!DOCTYPE html>
<%
    Statistics players = new Statistics();
    String pl = players.getPlayers();
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
        <link href="css/statisticscss.css" rel="stylesheet">

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
    <body onload="stats('<%=pl%>')">

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
                <li class="nav-item "><a href="status.jsp">Status</a></li>
                <li class="nav-item"><a href="myTeam.jsp">My Team</a></li>
                <li class="nav-item"><a href="points.jsp">Points</a></li>
                <li class="nav-item"><a href="transfers.jsp">Transfers</a></li>
                <li class="nav-item"><a href="leagues.html">Leagues</a></li>
                <li class="nav-item"><a href="fixtures.jsp">Fixtures</a></li>
                <li class="nav-item active"><a href="statistics.jsp">Statistics</a></li>
                <li class="nav-item"><a href="injuries.jsp">Injuries</a></li>
                <li class="nav-item"><a href="help.html">Help</a></li>
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
            <div class="side-gap">

                <!-- Blog Entries Column -->
                <div class="top-gap ">
                    <div class="row ">
                        <h3 class="col-md-12 col-xs-12" style="font-family: Century Gothic">Statistics</h3>
                        <div class="col-md-12 col-xs-12">
                            <div class="row" style="margin-top: 10px;font-family: Century Gothic">
                                <div class="col-md-2  col-xs-2">
                                    <h5 style="font-size: 16px;padding-top: 2%; line-height: 10px; font-weight:bold;width: 30%">View</h5>
                                </div>
                                <div class="col-md-5 col-xs-5" style="width: 30%; margin-left:-12%" >
                                    <select class="form-control " id ="selectPlayers"  data-size="5" onchange="showStats()" >
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

                                    </select>
                                </div>
                                <div class="col-md-2 col-xs-2">
                                    <h5 style="font-size: 16px; padding-top: 2%; line-height: 10px; font-weight:bold;width: 50%; margin-left:10%">Sorted by</h5>
                                </div>
                                <div class="col-md-5 col-xs-5" style="width: 30%; margin-left:-7.5%">
                                    <select class="form-control"  data-size="5" id="categorySelection" onchange="showStats()">
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
                                        <option value="saves">Saves</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <table class="col-md-9 col-xs-9" style="font-family: Century Gothic; border:1px solid #e8e8e8; margin-top: 2%; margin-bottom: 1%; border-top:2px solid #c8373b">
                            <tr style="font-size: 14px;background-color: #f1eded;">
                                <th style="padding: 0.5%; width: 5%; "></th>
                                <th style="padding: 0.5%; padding-left: 6%; width: 35%;">Player</th>
                                <th id="statschange" style="padding: 0.5%; width: 11.7%;text-align: center ">Min.</th>
                                <th style="padding: 0.5%; width: 11.7%;text-align: center ">Price</th>
                                <th style="padding: 0.5%; width: 11.7%;text-align: center ">Round Score</th>
                                <th style="padding: 0.5%; width: 11.7%;text-align: center ">Total Score</th>
                            </tr>
                            <% for (int i = 1; i <= 20; i++) {
                            %>

                            <tr id="statsblc<%=i%>" style="border-bottom:1px solid #e8e8e8">
                                <td  style='background-color: #f9f5f5' align="center"><span id="statsinj<%=i%>" class="glyphicon glyphicon-info-sign"></span></td>
                                <td style=" font-weight: lighter ;font-size:15px; padding-top: 0.5%; padding-bottom: 0.5%">
                                    <div class='col-sm-2'>
                                        <img id="statsimg<%=i%>" src="img/orlandogk.png" style="width:27px;height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width:230px;height: 30px;margin-top:-4.5px;padding-left: 0 ">
                                        <span id="statsname<%=i%>" style="font-size: 14px; ">Harris</span>
                                        <hr style="border:none;margin-top: -12%">
                                        <span id="statsteam<%=i%>" style="font-size: 13px; font-weight:bold ">ORL</span>
                                        <span id="statspos<%=i%>" style="font-size: 13px; padding-left: 3% ">GK</span>
                                    </div>
                                </td>
                                <td id="statsmin<%=i%>" style=" font-weight:lighter ;font-size:14px; padding-left:0.5%; padding-top: 0.5%; padding-bottom: 0.5%;text-align: center ">23.3%</td>
                                <td id="statsprice<%=i%>" style=" font-weight:lighter ;font-size:14px; padding-left:0.5%; padding-top: 0.5%; padding-bottom: 0.5%;text-align: center ">$6.4</td>
                                <td  id="statsgw<%=i%>"style=" font-weight:lighter ;font-size:14px; padding-left:0.5%; padding-top: 0.5%; padding-bottom: 0.5%;text-align: center ">9.0</td>
                                <td id="statstotal<%=i%>" style=" font-weight:lighter ;font-size:14px; padding-left:0.5%; padding-top: 0.5%; padding-bottom: 0.5%;text-align: center ">170</td>
                            </tr>
                            <% }
                            %>
                        </table>
                        <div id="btndiv" class="col-md-12 col-xs-12" style="width:80%; margin-bottom: 2%">
                            <div class="row">
                                <button id="startbtn" value="1" type="button" class="btn  btn-circle col-md-1 col-xs-1" style="margin-top: 0.1%;left:14%; padding-right: 0.4%" disabled onclick="changePage('start')"><i class="glyphicon glyphicon-backward"  ></i></button>
                                <button id="prevbtn" type="button" class="btn  btn-circle btn-lg  col-md-1 col-xs-1" style="margin-top: -0.4%; padding-top: 0.8%; border-radius: 100pt 100pt;left: 21%" disabled  onclick="changePage('prev')"><i class="glyphicon glyphicon glyphicon-chevron-left" disabled> </i></button>
                                <h5 class="col-md-6 col-xs-6" style="left: 22%;width: 40%;font-weight: lighter; text-align: center; font-size: 17px">Page <span id="pagestats" style="font-weight: bold; font-size: 17px" >1</span> of <span id="totalPagesstats"><%=players.getPage()%></span>  </h5>
                                <button id="nextbtn"  value="2" type="button" class="btn  btn-circle btn-lg col-md-1 col-xs-1" style="margin-top: -0.4%;border-radius: 100pt 100pt;left: 23%; padding-top: 0.8%" onclick="changePage('next')"><i class="glyphicon glyphicon glyphicon-chevron-right" ></i></button>
                                <button id="endbtn" value="<%=players.getPage()%>" type="button" class="btn  btn-circle col-md-1 col-xs-1" style="margin-top:0.1%;border-radius: 100pt 100pt;padding-top: 0.6%; padding-left: 0.5%;left: 30%" onclick="changePage('end')"><i class="glyphicon glyphicon-forward"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/stats.js"></script>


    </body>

</html>
