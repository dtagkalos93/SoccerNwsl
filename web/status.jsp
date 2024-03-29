<%@page import="com.fantasy.dreamTeam"%>
<%@page import="com.fantasy.standings"%>
<%@page import="com.fantasy.topPerformances"%>
<%@page import="com.fantasy.rosterPlayer"%>
<%@page import="com.fantasy.deadLIne"%>
<!DOCTYPE html>

<%
    String teamemail = session.getAttribute("email").toString();
    System.out.println(teamemail);
    rosterPlayer players = new rosterPlayer(teamemail);
    String totalScore = players.getTotalScore();
    String injuryPlayers = players.getInjury();
    System.out.println(injuryPlayers);
    deadLIne line = new deadLIne();
    int fixNo = Integer.parseInt(line.getGameweek().split(" ")[1]);
    String status;
    if (line.getpointsStatus()) {
        status = "";
    } else {
        status = "none";
    }

    topPerformances top = new topPerformances();

    standings stands = new standings();
    dreamTeam dream;
    if (fixNo == 24) {
        dream = new dreamTeam(24);
    } else {
        dream = new dreamTeam(fixNo - 1);
    }

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
        <link href="css/statuscss.css" rel="stylesheet">


        <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
        <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
        <!-- Custom CSS -->

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
    <body onLoad="topPlayers('<%=top.getTopPerfomance()%>');
            standings('<%=stands.getTeam()%>', '<%=stands.getBadge()%>', '<%=stands.getGp()%>', '<%=stands.getWins()%>', '<%=stands.getLooses()%>', '<%=stands.getDraws()%>', '<%=stands.getGd()%>', '<%=stands.getPts()%>');
            dreamTeam('<%=dream.getTeam()%>', '<%=dream.getName()%>', '<%=dream.getPos()%>', '<%=dream.getScore()%>');
            injury('<%=injuryPlayers%>')" 
          >

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
                <li class="nav-item active"><a href="status.jsp">Status</a></li>
                <li class="nav-item"><a href="myTeam.jsp">My Team</a></li>
                <li class="nav-item"><a href="points.jsp">Points</a></li>
                <li class="nav-item"><a href="transfers.jsp">Transfers</a></li>
                <li class="nav-item"><a href="leagues.html">Leagues</a></li>
                <li class="nav-item"><a href="fixtures.jsp">Fixtures</a></li>
                <li class="nav-item"><a href="statistics.jsp">Statistics</a></li>
                <li class="nav-item"><a href="injuries.jsp">Injuries</a></li>
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
                <div class="col-md-12 top-gap">
                    <h5 class="col-md-12 col-xs-12" style="font-family: Century Gothic;font-size: 15px; font-weight: lighter">You are logged in as 
                        <span style="font-weight: bold"><%=session.getAttribute("fullname")%></h5>

                    <h4 class="col-md-12 col-xs-12" style="font-family: Century Gothic; font-size: 20px;" >
                        <%if (fixNo == 24) {
                        %>
                        <span id="gw">Gameweek <%=(fixNo)%> </span> Status

                        <%
                        } else {
                        %>
                        <span id="gw">Gameweek <%=(fixNo - 1)%> </span> Status
                        <%
                            }
                        %>
                    </h4>
                    <div class="col-md-12 col-xs-12 image-tables" >
                        <img src="img/nwsl-cover.png" style="visibility: hidden;" />
                        <div class="col-md-12 col-xs-12" style="width: 100%;margin-top: -25%"  >
                            <div class="col-md-3 col-xs-3" style="margin-top: -1%">
                                <h6  style="font-family: Century Gothic; font-size: 40px;margin-top: 5%;text-align: center;right: 21%" >Points</h6> 
                                <h5 style="font-family: Century Gothic; font-size: 50px;text-align: center;right: 21%" ><%=totalScore%></h5> 
                            </div>
                            <div class="col-md-4 col-xs-4" style="margin-top: 5%" >
                                <a href="points.jsp"  class="prevbutton btncustom  " style="color:white  ;height: 40px; font-size: 13px; font-weight: bold; text-align: center; font-family:Century Gothic;width: 62%;padding:3.5%; appearance: button;text-decoration: none;" >
                                    My Team <i class="glyphicon glyphicon-arrow-right" style="float:right; margin-top: 0.5%;"></i>
                                </a>
                            </div>
                        </div>

                        <table class="col-md-12 col-xs-12" style="padding:3%;margin-top: -9.8%" >
                            <tr>
                                <th style="font-family: Century Gothic;text-align: center; font-size: 12px;border-right: 1px solid black">Highest Points</th>   
                                <th style="font-family: Century Gothic;text-align: center; font-size: 12px;border-right: 1px solid black">Average Points</th>
                                <th style="font-family: Century Gothic;text-align: center; font-size: 12px;border-right: 1px solid black">Transfers Made</th>
                                <th style="font-family: Century Gothic;text-align: center; font-size: 12px;border-right: 1px solid black">
                                    <a class="trnin" style="color:white;font-size: 12px" data-toggle="modal" data-target="#TransferIn" data-backdrop="static" data-keyboard="false">Most Transfered In</a></th>
                                <th style="font-family: Century Gothic;text-align: center; font-size: 12px;border-right: 1px solid black">
                                    <a class="trnin" style="color:white;font-size: 12px" data-toggle="modal" data-target="#TransferOut" data-backdrop="static" data-keyboard="false" >Most Transfered Out</a></th>
                                <th style="font-family: Century Gothic;text-align: center; font-size: 12px;border-right: 1px solid black">Wildcards Played</th>
                                <th style="font-family: Century Gothic;text-align: center; font-size: 12px">
                                    <a class="trnin" style="color:white;font-size: 12px" data-toggle="modal" data-target="#MostCaptained" data-backdrop="static" data-keyboard="false" >Most Captained</a></th>
                            </tr>
                            <tr>
                                <td style="font-family: Century Gothic;text-align: center; font-size: 15px;border-right: 1px solid black ">143</td>
                                <td style="font-family: Century Gothic;text-align: center; font-size: 15px;border-right: 1px solid black  ">58</td>
                                <td style="font-family: Century Gothic;text-align: center; font-size: 15px ;border-right: 1px solid black ">2,889,179</td>
                                <td style="font-family: Century Gothic;text-align: center; font-size: 15px ;border-right: 1px solid black">Morgan</td>
                                <td style="font-family: Century Gothic;text-align: center; font-size: 15px ;border-right: 1px solid black">Lavelle</td>
                                <td style="font-family: Century Gothic;text-align: center; font-size: 15px ;border-right: 1px solid black ">47,969</td>
                                <td style="font-family: Century Gothic;text-align: center; font-size: 15px">Marta</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12 col-xs-12">
                    <div class="col-md-6 col-xs-6" >
                        <table class="table-header-dt col-md-12 col-xs-12" >
                            <tr>
                                <%if (fixNo == 24) {
                                %>
                                <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 2.2%">Gameweek <%=(fixNo)%> Dream Team 

                                    <%
                                    } else {
                                    %>
                                <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 2.2%">Gameweek <%=(fixNo - 1)%> Dream Team 
                                    <%
                                        }
                                    %>
                                    <span>
                                        <a href= "dreamteam.jsp" style="color: white; float: right"> 
                                            <%=dream.gettotalScore()%> points <i class="glyphicon glyphicon-arrow-right" style="color: white;padding-left: 5px;vertical-align: baseline"></i>
                                        </a>
                                    </span>
                                </th>
                            </tr> 
                        </table>
                        <table class="col-md-12 col-xs-12" style="width:100%; font-family: Century Gothic; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8">
                            <tr style="font-family: Century Gothic; background-color: #f1eded;padding-top: 1.3%;padding-bottom: 1.3%;font-size: 14px">
                                <th style="padding: 1.3%;"></th>
                                <th style="padding: 1.3%;text-align: center">Pos</th> 
                                <th style="padding: 1.3%;padding-left:12.5% ">Player</th>
                                <th style="padding: 1.3%;text-align: center">Club</th>
                                <th style="padding: 1.3%;text-align: center">Pts</th>
                            </tr>
                            <%
                                for (int i = 1; i <= 11; i++) {
                            %>
                            <tr style="border-bottom: 1px solid #e8e8e8">
                                <td style=' font-size: 14px;padding-left: 5px; padding:5px; width: 7%; text-align: center; background-color: #f6f6f5'><span class="glyphicon glyphicon-info-sign"></span></td>
                                <td id="dreampos<%=i%>" style=' font-size: 13px; text-align: center; width: 12%'>GK</td>
                                <td style=" font-weight: lighter ;font-size:15px; padding:5px;width: 50%">
                                    <div class='col-sm-2'>
                                        <img id="dreamimage<%=i%>" src="img/orlandogk.png" style="width:25px;height:30px" />
                                    </div>
                                    <div class='col-sm-10' style="width: 230px;height: 30px;padding-top: 5px">
                                        <span id="dreamname<%=i%>" style="font-size: 15px;font-family: Century Gothic">Harris </span>
                                    </div>
                                </td>
                                <td id="dreamteam<%=i%>" style=" font-size:13px; font-weight: bold; text-align:center; width: 12.5%">ORL</td>
                                <td id="dreampoints<%=i%>" style=" font-size:13px; font-weight: bold; text-align:center; width: 12.5%">10</td>
                            </tr>

                            <%
                                }
                            %>

                        </table>
                    </div>

                    <div class="col-md-6 col-xs-6">
                        <table class="table-header-pts col-md-12 col-xs-12" >
                            <tr>
                                <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 2.2%"> NSWL Standings </th>
                            </tr> 
                        </table>
                        <table class="col-md-12 col-xs-12" style="font-family: Century Gothic; width:100%; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8">
                            <tr style="background-color: #f1eded;padding-top: 1.3%;padding-bottom: 1.3%;font-size: 14px">
                                <th style="padding: 1.3%;text-align: center ">#</th>
                                <th style="padding: 1.3%;padding-left:12.5%">Club</th> 
                                <th style="padding: 1.3%;text-align: center">GP</th>
                                <th style="padding: 1.3%;text-align: center">W</th>
                                <th style="padding: 1.3%;text-align: center">L</th>
                                <th style="padding: 1.3%;text-align: center">D</th>
                                <th style="padding: 1.3%;text-align: center">GD</th>
                                <th style="padding: 1.3%;text-align: center">Pts</th>
                            </tr>
                            <%
                                for (int i = 1; i <= 9; i++) {


                            %>
                            <tr style="border-bottom:1px solid #e8e8e8">
                                <td style='width: 5%; font-size: 14px; text-align: center; background-color: #f6f6f5'><%=i%></td>
                                <td style="width: 50%;font-size:15px;padding: 3px; ">
                                    <div class='col-sm-2' style="padding-left: 0">
                                        <img id="standsimage<%=i%>" src="img/North_Carolina_Courage1.png" style="height:38px" />
                                    </div>
                                    <div class='col-sm-10' style="width:230px;height: 30px;padding-top: 3%">
                                        <span id="standsteam<%=i%>" style="font-size: 15px">North Carolina Courage</span>
                                    </div>
                                </td>
                                <td id="standsgp<%=i%>" style="width: 7%; text-align:center ;font-size:13px; font-weight: lighter">24</td>
                                <td id="standswins<%=i%>" style='width: 5%; text-align:center ;font-size:13px; font-weight: lighter'>16</td>
                                <td id="standslooses<%=i%>" style="width: 5%; text-align:center ;font-size:13px; font-weight: lighter">7</td>
                                <td id="standsdraws<%=i%>" style="width: 5%; text-align:center ;font-size:13px; font-weight: lighter">1</td>
                                <td id="standsgd<%=i%>" style="width: 7%; text-align:center ;font-size:13px; font-weight: lighter">16</td>
                                <td id="standspts<%=i%>" style="width: 7%; text-align:center ;font-size:13px">49</td>
                            </tr>

                            <%}%>

                        </table>
                    </div>
                </div>
                <div class="col-md-12 col-xs-12">
                    <div class="col-md-4 col-xs-4" style="padding-left:0">
                        <table class="col-md-12 col-xs-12 table-header-pts" style="margin-top: 15.5%">
                            <tr>
                                <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 2.2%"> Gameweek Best Teams </th>
                            </tr>  
                        </table>
                        <table class="col-md-12 col-xs-12" style="width:100%; font-family: Century Gothic; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8;">
                            <tr style="background-color: #f1eded">
                                <th style="padding-top: 1%;padding-bottom:1%;text-align: center;width: 20%"> Pos</th>
                                <th style="padding-top: 1%;padding-bottom:1%;padding-left: 1.5%;width: 55%">Team</th> 
                                <th style="padding-top: 1%;padding-bottom:1%;text-align: center">Points</th> 
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>1</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>2</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>3</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>4</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>5</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-4 col-xs-4" >
                        <table class="col-md-12 col-xs-12 table-header-pts" style="margin-top: 16.3%">
                            <tr>
                                <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 2.3%"> Overall Best Teams </th>
                            </tr>  
                        </table>
                        <table class="col-md-12 col-xs-12" style="width:100%; font-family: Century Gothic; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8;">
                            <tr style="background-color: #f1eded">
                                <th style="padding-top: 1%;padding-bottom:1%;text-align: center;width: 20%"> Pos</th>
                                <th style="padding-top: 1%;padding-bottom:1%;padding-left: 1.5%;width: 55%">Team</th> 
                                <th style="padding-top: 1%;padding-bottom:1%;text-align: center">Points</th> 
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>1</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>2</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>3</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>4</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                            <tr style="border-bottom:1px solid #e8e8e8;">
                                <td style='width: 10%; font-size: 14px; font-weight: bold;text-align: center; padding:5px'>5</td>
                                <td style='font-size: 14px; font-weight: lighter; padding: 1.5%; border-right:1px solid #e8e8e8 '>White Walkers</td>
                                <td style="font-size: 14px; font-weight: bold;padding:5px;text-align: center">110</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-4 col-xs-4" style="padding-right: 0">
                        <table class="table-header-dt col-md-12 col-xs-12" style="margin-top: 15.5%">
                            <tr>
                                <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 2.2%"> Latest Injuries and Bans 
                                    <span>
                                        <a href="injuries.jsp" style="color: white; float: right; font-size: 14px"> 
                                            More <i class="glyphicon glyphicon-arrow-right" style="color: white;padding-left: 5px;vertical-align: baseline"></i>
                                        </a>
                                    </span>
                                </th>
                            </tr> 
                        </table>
                        <table class="col-md-12 col-xs-12" style="width:100%; font-family: Century Gothic; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8;">
                            <tr style="background-color: #f1eded">
                                <th style="width: 5%; padding: 0.5%"></th>
                                <th style="width: 40%; font-size: 13px;padding-bottom: 1%;padding-top:1%; padding-left: 14.5%; ">Player</th>
                                <th style="width: 12%; font-size: 13px;padding-bottom: 1%;padding-top:1%; text-align: center">Pos</th>
                                <th style="width: 12%; font-size: 13px;padding-bottom: 1%;padding-top:1%; text-align: center">Club</th>
                            </tr>
                            <%
                                for (int i = 1; i <= 5; i++) {


                            %>
                            <tr style="border-bottom:1px solid #e8e8e8">
                                <td id="injury<%=i%>" style='background-color: #f6f6f5' align="center"><span class="glyphicon glyphicon-one-fine-red-dot"></span></td>
                                <td style="font-weight: lighter ; padding: 0.7%">
                                    <div class='col-sm-2' style="width:37px;height: 30px">
                                        <img id="injuryimg<%=i%>" src="img/orlandogk.png" style="width:25px;height:28px; margin-top: 1px" />
                                    </div>
                                    <div class='col-sm-10' style="width:100px;height: 30px;padding-top:5px; ">
                                        <span id="injuryname<%=i%>" style="font-size: 14px ">Harris</span><hr style="border:none;margin-top: -34%">
                                    </div>
                                </td>
                                <td id="injurypos<%=i%>" style="font-size:13px; padding: 0.5%; font-weight:bold;text-align: center">GK</td>
                                <td id="injuryteam<%=i%>" style="font-size:13px; padding: 0.5%; font-weight:bold;text-align: center">ORL</td>
                            </tr>
                            <%
                                }
                            %>


                        </table>

                    </div>
                </div>
                <div class="col-md-12 col-xs-12" style="margin-top: 4%; border: 1px solid #e8e8e8;border-top: 4px solid #ac0f1f;height:280px ">
                    <div style="margin-top: 1% " >
                        <h4 style="font-size: 18px;font-family: Century Gothic">2018 Gameweek Top Players</h4>
                    </div>
                    <div class="col-md-12 col-xs-12" style="margin-top:3%">
                        <button   type="button" class="prevbutton btncustom col-md-2 col-xs-2 hidden-xs prev" style="height: 165px;width:40px;left:-2.7%">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </button>
                        <div class="center slider col-md-8 col-xs-8" style="height:165px;width:92%;left: 0.1%; margin-top: 1%" align="middle" >
                            <%
                                for (int i = 1; i <= 24; i++) {


                            %>

                            <div id="topgw<%=i%>">
                                <img id="topgwimage<%=i%>" class="image-player " src="img/subs.png" />
                                <p id="topgwname<%=i%>" class="gkname1" >-</p>
                                <p id="topgwpoint<%=i%>" class="gkpoint1">GW <%=i%></p>
                            </div>
                            <%
                                }%>

                        </div>
                        <button   type="button" class="prevbutton btncustom col-md-2 col-xs-2 hidden-xs next" style="height: 165px;width:40px; float: right;left: 2.8%;margin-top: 0">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </button>
                    </div>
                </div>


                <div id="TransferIn" class="modal fade" role="dialog" >
                    <div class="modal-dialog" style="width: 450px">

                        <!-- Modal content-->
                        <div class="modal-content" >
                            <table class="col-md-12 col-xs-12" style="width:100%; margin-top: 0.5%; border-top: 4px solid #1d3260">
                                <tr>
                                    <th style="background-color: #ac0f1f; padding-left: 2%; color: white; font-size: 15px;padding-top: 1.3%;padding-bottom: 1.3%"> Top 5 Most Transfered In
                                        <button type="button" class="close" data-dismiss="modal" style="opacity: 1; color:white; margin-top:-0.5%;margin-right: 3%" >&times;</button></th>
                                </tr>    
                            </table>
                            <table class="col-md-12 col-xs-12" style="width:100%;font-family: Century Gothic; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8;background-color: white">
                                <tr>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;border-bottom:1px solid white "></th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center;font-size: 13px">Rnk</th> 
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;padding-left:11%;font-size: 13px ">Player</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;font-size: 13px ;text-align: center">Club</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center ;font-size: 13px">Pos.</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center ;font-size: 13px">In %</th>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>1</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Morgan</span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">ORL</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">30%</td>
                                </tr>

                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>2</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Marta </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">ORL</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">25%</td>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5; border-right: 1px solid #f6f6f5'><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>3</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/reign1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Rapinoe </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">SEA</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">MID</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">23%</td>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>4</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/dash1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Lloyd </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">HOU</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">MID</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">14%</td>
                                </tr>

                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>5</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/stars1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Press </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">CHI</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">8%</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="TransferOut" class="modal fade" role="dialog" >
                    <div class="modal-dialog" style="width: 450px">

                        <!-- Modal content-->
                        <div class="modal-content" >
                            <table class="col-md-12 col-xs-12" style="width:100%; margin-top: 0.5%; border-top: 4px solid #1d3260">
                                <tr>
                                    <th style="background-color: #ac0f1f; padding-left: 2%; color: white; font-size: 15px;padding-top: 1.3%;padding-bottom: 1.3%"> Top 5 Most Transfered Out
                                        <button type="button" class="close" data-dismiss="modal" style="opacity: 1; color:white; margin-top:-0.5%;margin-right: 3%" >&times;</button></th>
                                </tr>    
                            </table>
                            <table class="col-md-12 col-xs-12" style="width:100%; font-family: Century Gothic; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8;background-color: white">
                                <tr>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;border-bottom:1px solid white "></th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center;font-size: 13px">Rnk</th> 
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;padding-left:11%;font-size: 13px ">Player</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;font-size: 13px ;text-align: center">Club</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center ;font-size: 13px">Pos.</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center ;font-size: 13px">Out %</th>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>1</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Morgan</span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">ORL</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">30%</td>
                                </tr>

                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>2</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Marta </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">ORL</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">25%</td>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5; border-right: 1px solid #f6f6f5'><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>3</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/reign1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Rapinoe </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">SEA</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">MID</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">23%</td>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>4</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/dash1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Lloyd </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">HOU</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">MID</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">14%</td>
                                </tr>

                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>5</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/stars1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Press </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">CHI</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">8%</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="MostCaptained" class="modal fade" role="dialog"  >
                    <div class="modal-dialog" style="width: 450px">

                        <!-- Modal content-->
                        <div class="modal-content" >
                            <table class="col-md-12 col-xs-12" style="width:100%; margin-top: 0.5%; border-top: 4px solid #1d3260">
                                <tr>
                                    <th style="background-color: #ac0f1f; padding-left: 2%; color: white; font-size: 15px;padding-top: 1.3%;padding-bottom: 1.3%"> Top 5 Most Captained
                                        <button type="button" class="close" data-dismiss="modal" style="opacity: 1; color:white; margin-top:-0.5%;margin-right: 3%" >&times;</button></th>
                                </tr>    
                            </table>
                            <table class="col-md-12 col-xs-12" style="width:100%; font-family: Century Gothic; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8;background-color: white">
                                <tr>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;border-bottom:1px solid white "></th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center;font-size: 13px">Rnk</th> 
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;padding-left:11%;font-size: 13px ">Player</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;font-size: 13px ;text-align: center">Club</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center ;font-size: 13px">Pos.</th>
                                    <th style="background-color: #f9f5f5;padding-top: 1.3%;padding-bottom: 1.3%;text-align: center ;font-size: 13px">Sel. %</th>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>1</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Morgan</span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">ORL</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">30%</td>
                                </tr>

                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>2</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Marta </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">ORL</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">25%</td>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5; border-right: 1px solid #f6f6f5'><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>3</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/reign1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Rapinoe </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">SEA</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">MID</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">23%</td>
                                </tr>
                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>4</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/dash1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Lloyd </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">HOU</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">MID</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">14%</td>
                                </tr>

                                <tr>
                                    <td style=' font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid #e8e8e8;width: 7%; text-align: center; background-color: #f6f6f5 '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style=' font-size: 13px; border-bottom: 1px solid #e8e8e8;text-align: center'>5</td>
                                    <td style=" font-weight: lighter ;font-size:15px; border-bottom:1px solid #e8e8e8; padding:5px;width: 50%;padding-left: 5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/stars1.png" style="width:25px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px; padding-top: 2%">
                                            <span style="font-size: 15px; margin-left: -15%">Press </span>
                                        </div>
                                    </td>
                                    <td style=" font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%;text-align: center">CHI</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">FWD</td>
                                    <td style=" text-align: center ;font-size:13px; font-weight: bold; border-bottom:1px solid #e8e8e8;width: 12.5%">8%</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="slick/slick.js"></script>

        <script type="text/javascript">
        $(document).ready(function () {
            $('.center').slick({
                dots: false,
                infinite: false,
                centerMode: false,
                slidesToShow: 7,
                slidesToScroll: 1,
                prevArrow: $('.prev'),
                nextArrow: $('.next')
            });
        });
        </script>


        <script src="js/topPerfomance.js"></script>

    </body>

</html>