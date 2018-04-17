<%@page import="com.fantasy.dreamTeam"%>
<%@page import="com.fantasy.deadLIne"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.fantasy.rosterPlayer"%>
<%@page import="com.fantasy.fixtureData"%>
<%@page import="java.util.ArrayList"%>
<%
    String teamemail = session.getAttribute("email").toString();
    rosterPlayer players = new rosterPlayer(teamemail);
    double value = players.getValue();
    String teamName = players.getteamName();

    String totalScore = players.getTotalScore();
    String totalUsers = players.getTotalUsers();
    deadLIne line = new deadLIne();
    int fixNo = Integer.parseInt(line.getGameweek().split(" ")[1]);
    dreamTeam dream = new dreamTeam((fixNo - 2));

    String status;
    if (line.getpointsStatus()) {
        status = "";
    } else {
        status = "none";
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

        <!-- Custom CSS -->
        <link href="css/dreamcss.css" rel="stylesheet">
        <link href="css/myTeam.css" rel="stylesheet">
        <link href="css/field.css" rel="stylesheet">
        <link href="css/modal.css" rel="stylesheet">

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
    <body onLoad="dreamTeam('<%=dream.getTeam()%>', '<%=dream.getName()%>', '<%=dream.getPos()%>', '<%=dream.getScore()%>');
          bestPlayer('<%=dream.getbestPlayer()%>');">

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
                                <img  src="img/Utah_Royals.PNG" style="width:57.8px;height:45px;margin-right:-8px" />
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
                    <li class="active"><a href="points.jsp">Points</a></li>
                    <li class="hidden-xs"><a href="transfers.html">Transfers</a></li>
                    <li class="hidden-xs"><a href="leagues.html">Leagues</a></li>
                    <li class="hidden-xs"><a href="fixture">Fixtures</a></li>
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

        <div class="container">
            <div class="side-gap">

                <!-- Blog Entries Column -->
                <div class="col-md-9 top-gap">
                    <div class="row ">
                        <h3 class="col-md-12 col-xs-12"  style="font-family: arial">Dream Team</h3>
                        <div  class="col-md-12">
                            <button type="button" class="prevbutton btncustom col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial">
                                Previous
                            </button>
                            <h4 class="col-sm-6 hidden-xs" style="text-align: center;font-weight: bold; font-family:arial;font-size:22px;left: 8% ">
                                Gameweek <%=(fixNo-1)%> 
                            </h4>
                            <button type="button" class="btncustom nextbtn col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial;display:none ">
                                Next
                            </button>


                            <h4 class="hidden-sm hidden-md hidden-lg" style="font-weight: bold; font-family:arial;font-size:22px ">
                                Gameweek <%=(fixNo-1)%> 
                            </h4>
                            <div class="row hidden-sm hidden-md hidden-lg">
                                <button type="button" class="prevbutton btncustom col-sm-3" style="width:150px;height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial">
                                    Previous
                                </button>
                                <button type="button" class="btncustom nextbtn col-sm-3" style="width:150px; height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial;display:none">
                                    Next
                                </button>
                            </div>
                            <div class="col-md-6 hidden-xs" style="border:  15px    solid #f9f5f5;" >
                                <p style="font-size:18px;font-weight: normal; font-weight: lighter;margin-top: 28px; margin-bottom: 0px" align="center">
                                    Total Points
                                </p>
                                <p style="color:#db1b1b;font-weight:bold;font-family: arial; font-size: 45px;    margin: 0px 6px 20px;" align="center">
                                    <%=dream.gettotalScore()%>
                                </p>
                            </div>
                            <div class="col-md-6 hidden-xs" style="border:  15px  solid #f9f5f5;" >
                                <p style="font-size:18px;font-weight: normal; font-weight: lighter; margin-bottom: 0px" align="center">
                                    Top Player
                                </p>
                                <div class="col-md-6">
                                    <img id="bestImage" class="image-player-top " src="img/skyblue1.png"   />
                                </div>
                                <div class="col-md-6">
                                    <p id="bestName" style="margin: 0px 6px 4px;margin-top: 11%;" >
                                        Sam Kerr
                                    </p>
                                    <p id="bestteam" style="margin: 0px 6px 4px;" >
                                        Sky Blue FC
                                    </p>
                                    <p id="bestpts" style="margin: 0px 6px 4px;" >
                                        20
                                    </p>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12 bc-img"  >
                            <hr style="border:none;margin-top: 6.5%"/>
                            <div id="selGK" class="col-md-12 col-xs-6" onclick="openModalGK('1')"   >
                                <img  class="image-player " id="gkimage"  src="img/subsgk.png" /> 
                                <p class="name" id="gkname" >Goalkeeper</p>
                                <p style="display: none" id="team1"></p>
                                <p class="opponent" id="ptsgk"></p>
                                <p style="display: none" id="pricegk1"></p>
                            </div>

                            <hr style="border:none;margin-top: 21%">
                            <div id="selDEF1" class="col-md-2 col-xs-2" onclick="openModalDEF('1')"   >


                                <img  class="image-player " id="defimage1"  src="img/subsgk.png" />  
                                <p class="name" id="defname1" >Defender</p>
                                <p style="display: none" id="team3"></p>
                                <p class="opponent" id="ptsdef1"></p>
                                <p style="display: none" id="defprice1"></p>
                            </div>
                            <div id="selDEF2" class="col-md-2 col-xs-2" onclick="openModalDEF('2')"   >
                                <img class="image-player" id="defimage2" src="img/subs.png" />

                                <p class="name" id="defname2" >Defender</p>
                                <p style="display: none" id="team4"></p>
                                <p class="opponent" id="ptsdef2"></p>
                                <p style="display: none" id="defprice2"></p>
                            </div>
                            <div id="selDEF3" class="col-md-2 col-xs-2" onclick="openModalDEF('3')"  >
                                <img class="image-player" id="defimage3" src="img/subs.png"  />

                                <p class="name" id="defname3" >Defender</p>
                                <p style="display: none" id="team5"></p>
                                <p class="opponent" id="ptsdef3"></p>
                                <p style="display: none" id="defprice3"></p>
                            </div>
                            <div id="selDEF4" class="col-md-2 col-xs-2" onclick="openModalDEF('4')"   >
                                <img class="image-player" id="defimage4" src="img/subs.png"  />

                                <p class="name" id="defname4" >Defender</p>
                                <p style="display: none" id="team6"></p>
                                <p class="opponent" id="ptsdef4"></p>
                                <p style="display: none" id="defprice4"></p>
                            </div>
                            <div id="selDEF5" class="col-md-2 col-xs-2" onclick="openModalDEF('5')" >
                                <img class="image-player" id="defimage5" src="img/subs.png" />

                                <p class="name" id="defname5" >Defender</p>
                                <p style="display: none" id="team7"></p>
                                <p class="opponent" id="ptsdef5"></p>
                                <p style="display: none" id="defprice5"></p>
                            </div>

                            <hr style="border:none;margin-top: 21%" >
                            <div id="selMID1" class="col-md-2 col-xs-2" onclick="openModalMID('1')" >
                                <img class="image-player" src="img/subs.png"  id="midimage1" />

                                <p id="midname1" class="name" >Midfielder</p>
                                <p style="display: none" id="team8"></p>
                                <p class="opponent" id="ptsmid1"></p>
                                <p style="display: none" id="midprice1"></p>
                            </div>
                            <div id="selMID2" class="col-md-2 col-xs-2" onclick="openModalMID('2')" >
                                <img class="image-player" src="img/subs.png"  id="midimage2" />

                                <p id="midname2" class="name" >Midfielder</p>
                                <p style="display: none" id="team9"></p>
                                <p class="opponent" id="ptsmid2"></p>
                                <p style="display: none" id="midprice2"></p>
                            </div>
                            <div id="selMID3" class="col-md-2 col-xs-2" onclick="openModalMID('3')" >
                                <img class="image-player" src="img/subs.png"  id="midimage3" />
                                <p id="midname3" class="name" >Midfielder</p>

                                <p style="display: none" id="team10"></p>
                                <p class="opponent" id="ptsmid3"></p>
                                <p style="display: none" id="midprice3"></p>
                            </div>
                            <div id="selMID4" class="col-md-2 col-xs-2"  onclick="openModalMID('4')">
                                <img class="image-player" src="img/subs.png"  id="midimage4" />

                                <p id="midname4" class="name" >Midfielder</p>
                                <p style="display: none" id="team11"></p>
                                <p class="opponent" id="ptsmid4"></p>
                                <p style="display: none" id="midprice4"></p>
                            </div>
                            <div id="selMID5" class="col-md-2 col-xs-2"  onclick="openModalMID('5')">
                                <img class="image-player" src="img/subs.png"  id="midimage5" />

                                <p id="midname5" class="name" >Midfielder</p>
                                <p style="display: none" id="team12"></p>
                                <p class="opponent" id="ptsmid5"></p>
                                <p style="display: none" id="midprice5"></p>
                            </div>

                            <hr style="border:none;margin-top: 21%">
                            <div id="selFWD1" class="col-md-4  col-xs-4"  onclick="openModalFWD('1')">
                                <img class="image-player" id="fwdimage1"  />

                                <p id="fwdname1" class="name" >Forward</p>
                                <p style="display: none" id="team13"></p>
                                <p class="opponent" id="ptsfwd1"></p>
                                <p style="display: none" id="fwdprice1"></p>
                            </div>
                            <div id="selFWD2" class="col-md-4  col-xs-4" onclick="openModalFWD('2')">
                                <img class="image-player" id="fwdimage2"  />

                                <p id="fwdname2" class="name" >Forward</p>
                                <p style="display: none" id="team14"></p>
                                <p class="opponent" id="ptsfwd2"></p>
                                <p style="display: none" id="fwdprice2"></p>
                            </div>
                            <div id="selFWD3" class="col-md-4  col-xs-4" onclick="openModalFWD('3')" >
                                <img class="image-player" id="fwdimage3"   />

                                <p id="fwdname3" class="name" >Forward</p>
                                <p style="display: none" id="team15"></p>
                                <p class="opponent" id="ptsfwd3"></p>
                                <p style="display: none" id="fwdprice3  "></p>
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
                                <a data-toggle="collapse" href="#<%=game%>" style="color:black">
                                    <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                        <div class="row" style="">
                                            <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                <h6 style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
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
                                                <h6 style="font-family: Century Gothic;font-size: 17px"><%=away.get(i)%></h6>
                                            </div>
                                        </div>
                                    </div>
                                </a>

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
                                    <a id="<%=mondaygame + "id"%>" data-toggle="collapse" href="#<%=mondaygame%>" style="color:black">
                                        <div class="match col-sm-12 " style="display: block;box-sizing: border-box;padding: .5rem 2rem .5rem 2rem;border-bottom: 1px solid #e8e4e4" >
                                            <div class="row" style="">
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%=mondayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%=mondayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%=mondayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%=mondayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
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
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= tuesdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= tuesdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= tuesdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= tuesdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
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
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= wednesdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= wednesdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= wednesdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= wednesdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
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
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= thursdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= thursdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= thursdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= thursdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
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
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%= fridayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%= fridayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%= fridayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%= fridayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
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
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%=saturdayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%=saturdayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%=saturdayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%=saturdayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
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
                                                <div class="col-md-4  col-xs-4 " style="left: 5%">
                                                    <h6 id="<%=sundayhome%>" style="font-family: Century Gothic;float: right;font-size:17px"><%=home.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 2.7%">
                                                    <img id="<%=sundayhomebadge%>" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=homebadge.get(i)%>">
                                                </div>
                                                <div class="col-md-2  col-xs-2 time" style="letter-spacing: 0.5px;width: 13%;left: 2.2%; background-color: #1d3260;border-radius: 3pt; border: 1px solid #1d3260;padding-right: 10px;padding-left: 10px">
                                                    <h6 id="<%=sundayscore%>" style="font-family: Century Gothic;text-align: center;color:white;font-size: 15px; font-weight:lighter"><%=time.get(i)%></h6>
                                                </div>
                                                <div class="col-md-1 col-xs-1 " style="left: 1.7%">
                                                    <img id="<%=sundayawaybadge%>" class="" style="margin-top: 9%;height: 30px;width: auto;margin-left: auto;margin-right: auto;display: block" src="img/<%=awaybadge.get(i)%>">
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

                <div class="col-md-3 sidebar top-gap" style="padding-right: 0">
                    <div class="threadbox" >
                        <h1 style="font-family:Century Gothic;font-weight:bold;font-size: 20px">
                            <%=session.getAttribute("fullname").toString()%>
                        </h1>
                    </div>
                    <div style="border-bottom: 1px solid #9e9fa5;border-left: 1px solid #9e9fa5;border-right: 1px solid #9e9fa5">
                        <div class="">
                            <h4 style="color: white;border-top:3px solid #1b2046;background-image: url(img/bannerred.png);background-size: 100% 100%; font-family: Century Gothic;text-align: center;padding: 10px;font-size: 16px"><%=teamName%></h4>
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
                                } else if (team.equals("royals")) {
                                    badge = "Utah_Royals.PNG";
                                }
                            %>
                            <img style="margin:auto; display:block; height:150px" src="img/<%=badge%>"/>
                        </div>

                        <div class="ranking">
                            <h5 style="font-family: Century Gothic;font-weight: bold;font-size: 15px;margin-top: 5%;padding: 3%;padding-left: 5%;color: white;background-color: #050424; ">Points/Rankings </h5>
                            <table style="font-family: Century Gothic;width:90%;margin-left:5%; background-color: #f9f5f5; border: 1px solid #ebebe4">
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px; padding:5px; font-weight: lighter'>Gameweek Points:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px "><%=totalScore%> </td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px;padding-left: 5px; padding:5px;font-weight: lighter '>Overall Points:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px "></td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px;padding-left: 5px; padding:5px; font-weight: lighter '>Overall Rank:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px "></td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style='font-size: 14px; padding:5px; font-weight: lighter'>Total Players:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  padding: 5px "><%=totalUsers%></td>
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
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  "></td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style="font-size: 14px;padding-left: 5px; padding:5px;;font-weight: lighter">Total transfers:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  "></td>
                                </tr>
                                <tr style="border-bottom:1px solid white">
                                    <td style="font-size: 14px; padding:5px;;font-weight: lighter">Team value:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  ">$<%=value%></td>
                                </tr>

                                <% double remain = 100.0 - value;
                                    DecimalFormat df = new DecimalFormat("####0.0");%>
                                <tr style="border-bottom:1px solid white">
                                    <td style="font-size: 14px; padding:5px;;font-weight: lighter">In the bank:</td>
                                    <td style="text-align: left ;font-size:14px; font-weight: bold;  ">$<%=df.format(remain)%></td>
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



        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/fixturejs.js" ></script>
        <script src="js/dream.js" ></script>

    </body>

</html>
