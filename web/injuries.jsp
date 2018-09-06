<%@page import="com.fantasy.rosterPlayer"%>
<!DOCTYPE html>
<%
    String teamemail = session.getAttribute("email").toString();
    rosterPlayer players = new rosterPlayer(teamemail);
    String injuryPlayers = players.getInjuryFull();
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
        <link href="css/injuriescss.css" rel="stylesheet">

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
    <body onLoad="injuryPlay('<%=injuryPlayers%>')">

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
                <li class="nav-item"><a href="status.html">Status</a></li>
                <li class="nav-item"><a href="myTeam.jsp">My Team</a></li>
                <li class="nav-item"><a href="points.jsp">Points</a></li>
                <li class="nav-item"><a href="transfers.jsp">Transfers</a></li>
                <li class="nav-item"><a href="leagues.html">Leagues</a></li>
                <li class="nav-item"><a href="fixtures.jsp">Fixtures</a></li>
                <li class="nav-item"><a href="statistics.jsp">Statistics</a></li>
                <li class="nav-item active"><a href="injuries.jsp">Injuries</a></li>
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

        <!-- /.container -->

    </div>
    <!-- /.intro-header -->

    <div class="container">
        <div class="row">


            <!-- Blog Entries Column -->

            <h3 class="col-md-12 col-xs-12" style="font-family: Century Gothic; margin-top: 4.7%">Injuries and Bans</h3>

            <div class="col-md-12 col-xs-12">

                <div class="row">
                    <div class="col-md-2  col-xs-2">
                        <h5 style="font-family: Century Gothic;font-size: 16px;padding-top: 2%; line-height: 10px; font-weight:bold;width: 30%">View</h5>
                    </div>
                    <div class="col-md-5 col-xs-5" style="width: 30%; margin-left:-12%"  >
                        <select class="form-control"  data-size="5" id="selectInjury" onchange="showInjury()">
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
                                <option value="CHI" >Chicago Red Stars</option>
                                <option value="HOU">Houston Dash</option>
                                <option value="NJ">North Carolina Courage</option>
                                <option value="ORL">Orlando Pride</option>
                                <option value="POR">Portland Thorns FC</option>
                                <option value="SEA">Seattle Reign FC</option>
                                <option value="NJ">Sky Blue FC</option> 
                                <option value="UTA">Utah Royals FC</option>
                                <option value="WAS">Washington Spirit</option> 
                            </optgroup>
                        </select>
                    </div>
                </div>
            </div>

            <table class="col-md-10 col-xs-10" style="width:60%; border:1px solid #e8e8e8; margin-top: 2%; margin-bottom: 1%; border-top:2px solid #c8373b">
                <tr>
                    <th style="background-color: #e8e8e8;padding: 0.5%; width: 5%"></th>
                    <th style="font-family: Century Gothic;font-size: 13px;background-color: #e8e8e8;padding: 0.5%; padding-left: 2%; width: 35%">Player</th>
                    <th style="font-family: Century Gothic;font-size: 13px;background-color:#e8e8e8;padding-bottom: 1%;padding-top:1%; width: 12%; text-align: center">Pos</th>
                    <th style="font-family: Century Gothic;font-size: 13px;background-color:#e8e8e8;padding-bottom: 1%;padding-top:1%; width: 12%;text-align: center">Club</th>
                    <th style="font-family: Century Gothic;font-size: 13px;background-color:#e8e8e8;padding-bottom: 1%;padding-top:1%; width: 12%;text-align: center">Description</th>
                </tr>
                <%
                    for (int i = 1; i <= 20; i++) {

                %>
                <tr id="inj<%=i%>">
                    <td style='border-bottom:1px solid #e8e8e8; background-color: #f6f6f5' align="center"><span class="glyphicon glyphicon-one-fine-red-dot" style="padding-bottom: 10px"></span></td>
                    <td style="font-family: Century Gothic; font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding-left:6%; padding-top: 0.5%; padding-bottom: 0.5%;    width: 26%;">
                        <div  class='col-sm-2' style="width:37px;height: 30px">
                            <img id="injimg<%=i%>" src="img/orlandogk.png" style="width:27px;height:30px;float:right" />
                        </div>
                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;padding-top:5px; ">
                            <span id="injname<%=i%>" style="font-size: 15px;font-family: Century Gothic; ">Harris</span><hr style="border:none;margin-top: -34%">
                        </div>
                    </td>
                    <td id="injpos<%=i%>" style="font-family: Century Gothic; font-size:13px; padding-left:0.5%; padding-top: 0.5%; padding-bottom: 0.5%; font-weight:bold;text-align: center; border-bottom:1px solid #e8e8e8">GK</td>
                    <td id="injteam<%=i%>" style="font-family: Century Gothic; font-size:13px; padding-left:0.5%; padding-top: 0.5%; padding-bottom: 0.5%; font-weight:bold;text-align: center; border-bottom:1px solid #e8e8e8">ORL</td>
                    <td id="injdes<%=i%>" style="font-family: Century Gothic; font-size:13px; padding-left:0.5%; padding-top: 0.5%; padding-bottom: 0.5%; font-weight:bold;text-align: center; border-bottom:1px solid #e8e8e8;    width: 70%;">Hamstring</td>
                </tr>

                <%                    }
                %>


            </table>
            <div id="btninj" class="col-md-12 col-xs-12" style="width:80%; margin-bottom: 2%">
                <div class="row">
                    <button type="button" class="btn  btn-circle col-md-1 col-xs-1" style="margin-top: 0.1%;left:14%; padding-right: 0.4%"><i class="glyphicon glyphicon-backward"></i></button>
                    <button type="button" class="btn  btn-circle btn-lg  col-md-1 col-xs-1" style="margin-top: -0.4%; padding-top: 0.8%; border-radius: 100pt 100pt;left: 21%"><i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>
                    <h5 class="col-md-6 col-xs-6" style="left: 22%;width: 40%;font-family: Century Gothic;font-weight: lighter; text-align: center; font-size: 17px">Page <span style="font-weight: bold; font-size: 17px" >1</span> of 7  </h5>
                    <button type="button" class="btn  btn-circle btn-lg col-md-1 col-xs-1" style="margin-top: -0.4%;border-radius: 100pt 100pt;left: 23%; padding-top: 0.8%"><i class="glyphicon glyphicon glyphicon-chevron-right"></i></button>
                    <button type="button" class="btn  btn-circle col-md-1 col-xs-1" style="margin-top:0.1%;border-radius: 100pt 100pt;padding-top: 0.6%; padding-left: 0.5%;left: 30%"><i class="glyphicon glyphicon-forward"></i></button>
                </div>
            </div>
        </div>
    </div>





    <script src="js/injury.js"></script>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
