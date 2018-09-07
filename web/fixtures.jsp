<%@page import="com.fantasy.fixtureData"%>
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
        <script src="js/fixturejs.js"></script>

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
                <li class="nav-item active"><a href="fixtures.jsp">Fixtures</a></li>
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
                <div class="top-gap">
                    <div class="row ">
                        <h3 class="col-md-12 col-xs-12"  style="font-family: Century Gothic">Fixtures </h3>

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
                            ArrayList<String> stadium = (ArrayList<String>) fixture.getStadium();

                            String dateSTR = null;

                        %>

                        <!-- Blog Entries Column -->
                        <div class="col-md-9" style="margin-top: 10px">
                            <div class="col-md-12 col-sm-6 col-xs-12 fixtures" id="somediv">
                                <h4 id="gameweekid" style="font-family: Century Gothic;font-weight: bold;font-size: 15px;text-align: center;padding-bottom: 1% "><%=posts.get(0) + " - " + date.get(0)%></h4>
                                <button id="prevFix" value="<%=posts.get(1)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center;padding: 1%; float: left">
                                    Previous
                                </button>
                                <h5 class="col-sm-6 hidden-xs" style="font-family: Century Gothic;text-align: center;font-weight: bold; font-size:18px;width: 68%;margin-top: -1%;margin-bottom: -7%" align="center">
                                    <img src="img/nwsllogo.png" style="width: 23%;padding-right: 0.5%" >Fixtures
                                </h5>
                                <%  String displaynext = "disabled";
                                    if (!posts.get(2).equals("Gameweek 25")) {
                                        displaynext = "";
                                    }
                                %>
                                <button id="nextFix" value="<%=posts.get(2)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center; padding: 1%;float: right;" <%=displaynext%>>
                                    Next
                                </button>
                                <div id="first">
                                    <%

                                        for (int i = 0; i < date.size(); i++) {
                                            String game = "game" + i;

                                            if (!date.get(i).equals(dateSTR)) {


                                    %>
                                    <h6 class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"><%=date.get(i)%></h6>
                                    <%
                                            dateSTR = date.get(i);

                                        }
                                    %>
                                    <a data-toggle="collapse" href="#<%=game%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                    <img style="height: 75px;width: auto" src="img/<%=homebadge.get(i)%>">
                                                    <h6 style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"><%=home.get(i)%></h6>                                      
                                                </div>
                                                <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                    <h6 style="font-family: Century Gothic;text-align: center;font-size: 21px"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                    <img style="height: 75px;width: auto" src="img/<%=awaybadge.get(i)%>">
                                                    <h6 style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"><%=away.get(i)%></h6>
                                                </div>
                                            </div>
                                            <h6 class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"><%=stadium.get(i)%></h6>

                                        </div>
                                    </a>
                                    <div id="<%=game%>" class="col-sm-12 collapse " style="border-bottom: 1px solid #e8e4e4;margin-top: 1%;padding-bottom: 1%">
                                        <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35% " >Goal Scored</h6>
                                        </div>
                                        <div class="row2" style="width: 100%" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                    <li>Milk</li>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35%" >Assists</h6>
                                        </div>
                                        <div class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                    <li>Milk</li>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35%" >Yellow cards</h6>
                                        </div>
                                        <div class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                    <li>Milk</li>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%"
                                             <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top: 0.35%" >Red cards</h6>
                                        </div>
                                        <div class="row2" style="width: 100%;" >
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                    <li>Milk</li>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2%">
                                            <h6 style="font-family: Century Gothic;color:white;font-size:13px;text-align: center;margin-top:0.35%" >Saves</h6>
                                        </div>
                                        <div class="row2" style="width: 100%" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                    <li>Milk</li>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="font-family: Century Gothic;width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!--<div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                            <h6 style="color:white;font-size:13px;text-align: center;margin-top: 0.35%" >Bonus</h6>
                                        </div>
                                        <div class="row2" style="width: 100%;margin-bottom: 2%" >
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;float:right">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                    <li>Milk</li>
                                                </ul>
                                            </div>
                                            <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;font-size: 14px;font-weight: lighter">
                                                <ul style="list-style: none;margin-left: -12.6%">
                                                    <li>Coffee</li>
                                                    <li>Tea</li>
                                                </ul>
                                            </div>
                                        </div>-->
                                    </div>
                                    <% }%>
                                </div>


                                <div id="last" style="display:none">
                                    <div id="monday">
                                        <h6 id="mondaytitle" class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"></h6>
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
                                        <a id="<%=mondaygame + "id"%>" data-toggle="collapse" href="#<%=mondaygame%>" style="color:black">
                                            <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                                <div class="row" style="">

                                                    <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=mondayhomebadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=mondayhome%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>                                      
                                                    </div>
                                                    <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                        <h6 id="<%=mondayscore%>" style="font-family: Century Gothic;text-align: center;font-size: 21px"></h6>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=mondayawaybadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=mondayaway%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>
                                                    </div>

                                                </div>
                                                <h6 id="mondaystadium<%=i%>" class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"> </h6>

                                            </div>
                                        </a>
                                        <%}%>
                                    </div>

                                    <div id="tuesday">
                                        <h6 id="tuesdaytitle" class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"></h6>
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
                                            <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                                <div class="row" style="">
                                                    <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=tuesdayhomebadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=tuesdayhome%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>                                      
                                                    </div>
                                                    <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                        <h6 id="<%=tuesdayscore%>" style="font-family: Century Gothic;text-align: center;font-size: 21px"></h6>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=tuesdayawaybadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=tuesdayaway%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>
                                                    </div>
                                                </div>
                                                <h6 id="tuesdaystadium<%=i%>" class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"> </h6>

                                            </div>
                                        </a>
                                        <%}%>
                                    </div>
                                    <div id="wednesday">
                                        <h6 id="wednesdaytitle" class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"></h6>
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
                                        <a id="<%= wednesdaygame + "id"%>" data-toggle="collapse" href="#<%= wednesdaygame%>" style="color:black">
                                            <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                                <div class="row" style="">
                                                    <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=wednesdayhomebadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=wednesdayhome%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>                                      
                                                    </div>
                                                    <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                        <h6 id="<%=wednesdayscore%>" style="font-family: Century Gothic;text-align: center;font-size: 21px"></h6>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=wednesdayawaybadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=wednesdayaway%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>
                                                    </div>
                                                </div>
                                                <h6 id="wednesdaystadium<%=i%>" class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"> </h6>

                                            </div>
                                        </a>
                                        <%}%>
                                    </div>
                                    <div id="thursday">
                                        <h6 id="thursdaytitle" class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"></h6>
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
                                        <a id="<%= thursdaygame + "id"%>" data-toggle="collapse" href="#<%= thursdaygame%>" style="color:black">
                                            <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                                <div class="row" style="">
                                                    <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=thursdayhomebadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=thursdayhome%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>                                      
                                                    </div>
                                                    <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                        <h6 id="<%=thursdayscore%>" style="font-family: Century Gothic;text-align: center;font-size: 21px"></h6>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=thursdayawaybadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=thursdayaway%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>
                                                    </div>
                                                </div>
                                                <h6 id="thursdaystadium<%=i%>" class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"> </h6>

                                            </div>
                                        </a>
                                        <%}%>
                                    </div>
                                    <div id="friday">
                                        <h6 id="fridaytitle" class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"></h6>
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
                                        <a id="<%= fridaygame + "id"%>" data-toggle="collapse" href="#<%= fridaygame%>" style="color:black">
                                            <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                                <div class="row" style="">
                                                    <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=fridayhomebadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=fridayhome%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>                                      
                                                    </div>
                                                    <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                        <h6 id="<%=fridayscore%>" style="font-family: Century Gothic;text-align: center;font-size: 21px"></h6>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=fridayawaybadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=fridayaway%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>
                                                    </div>
                                                </div>
                                                <h6 id="fridaystadium<%=i%>" class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"> </h6>

                                            </div>
                                        </a>
                                        <%}%>
                                    </div>
                                    <div id="saturday">
                                        <h6 id="saturdaytitle" class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"></h6>
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
                                        <a id="<%=saturdaygame + "id"%>" data-toggle="collapse" href="#<%=saturdaygame%>" style="color:black">
                                            <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                                <div class="row" style="">
                                                    <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=saturdayhomebadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=saturdayhome%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>                                      
                                                    </div>
                                                    <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                        <h6 id="<%=saturdayscore%>" style="font-family: Century Gothic;text-align: center;font-size: 21px"></h6>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=saturdayawaybadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=saturdayaway%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>
                                                    </div>
                                                </div>
                                                <h6 id="saturdaystadium<%=i%>" class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"> </h6>

                                            </div>
                                        </a>
                                        <%}%>
                                    </div><div id="sunday">
                                        <h6 id="sundaytitle" class="col-sm-12" style="background-color:#050424;color:white;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;padding-bottom: 1%;padding-top: 1%;border-bottom: 1px solid #e8e4e4;margin-bottom: 0"></h6>
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
                                        <a id="<%=sundaygame + "id"%>" data-toggle="collapse" href="#<%=sundaygame%>" style="color:black">
                                            <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                                <div class="row" style="">
                                                    <div class="col-md-4  col-xs-4" style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=sundayhomebadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=sundayhome%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>                                      
                                                    </div>
                                                    <div class="col-md-4  col-xs-4 time" style="letter-spacing: 0.5px;padding-top: 37px">
                                                        <h6 id="<%=sundayscore%>" style="font-family: Century Gothic;text-align: center;font-size: 21px"></h6>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 " style="text-align:center;padding-bottom: 0.5%;padding-top: 1.5%">
                                                        <img id="<%=sundayawaybadge%>" style="height: 75px;width: auto" src="">
                                                        <h6 id="<%=sundayaway%>" style="font-family: Century Gothic;font-size: 15px;font-weight: lighter;margin-bottom: 0"></h6>
                                                    </div>
                                                </div>
                                                <h6 id="sundaystadium<%=i%>" class="col-sm-12" style="color:black;font-family: Century Gothic;font-weight: lighter;font-size: 17px;text-align: center;"> </h6>

                                            </div>
                                        </a>
                                        <%}%>
                                    </div>
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

    </body>

</html>