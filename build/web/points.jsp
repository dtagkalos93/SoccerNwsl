<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%
    String connectionUrl = "jdbc:mysql://localhost:3306/fantasy?zeroDateTimeBehavior=convertToNull";
    String dbName = "fantasy";
    String userId = "root";
    String password = "";
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
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
        <link href="css/pointscss.css" rel="stylesheet">

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
                        <img class="navbar-brand topnav"  src="img/nwsl-topnav.png" style="width: auto; height: -webkit-fill-available; padding: 1px" />
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
                <li class="nav-item active"><a href="points.jsp">Points</a></li>
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
            <div class="side-gap">


                <!-- Blog Entries Column -->
                <div class="col-md-9" style="margin-top:4%">
                    <div class="row ">
                        <button type="button" class="prevbtn btncstm col-md-3 hidden-xs" style="float:left">
                            Previous
                        </button>
                        <h4 class="col-md-8 hidden-xs" style="text-align:center;left: 0.7%">
                            Gameweek 24
                        </h4>
                        <button type="button" class="nextbtn btncstm col-md-3 hidden-xs" style="float:right">
                            Next
                        </button>


                        <!---<h4 class="hidden-sm hidden-md hidden-lg" style="font-weight: bold; font-family:Century Gothic;font-size:22px ">
                            Gameweek 5
                        </h4>
                        <div class="row hidden-sm hidden-md hidden-lg">
                            <button type="button" class="prevbutton btncustom col-sm-3" style="width:150px;height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:Century Gothic">
                                Previous
                            </button>
                            <button type="button" class="btncustom nextbtn col-sm-3" style="width:150px; height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:Century Gothic">
                                Next
                            </button>
                        </div>
                        <div class="col-md-4 hidden-xs" style="border:  18px solid #f9f5f5;" >
                            <p style="font-size:18px;font-weight: normal; font-weight: lighter;margin-top: 28px; margin-bottom: 0px" align="center">
                                Final Points
                            </p>
                            <p style="color:#db1b1b;font-weight:bold;font-family: Century Gothic; font-size: 45px" align="center">
                                88
                            </p>
                        </div>
                        <div class="col-md-4 hidden-xs" style="border:  18px solid #f9f5f5;;background-color: #f9f5f5;" >
                            <p style="border-bottom: 1.5px solid white;margin-top: 20px;" >
                                Average Pts
                                <span style="float:right; font-weight: bold">
                                    85
                                </span>
                            </p>
                            <p style="border-bottom: 1.5px solid white" >
                                GW Rank
                                <span style="float:right; font-weight: bold">
                                    245
                                </span>
                            </p>
                        </div>
                        <div class="hidden-xs col-md-4" style="border:  18px solid #f9f5f5;background-color: #f9f5f5;" >
                            <p style="border-bottom: 1.5px solid white;margin-top: 20px;" >
                                Highest Pts
                                <span style="float:right; font-weight: bold">
                                    85
                                </span>
                            </p>
                            <p style="border-bottom: 1.5px solid white" >
                                Transfers
                                <span style="float:right; font-weight: bold">
                                    245
                                </span>
                            </p>
                        </div>
                        <div class="col-xs-12 hidden-sm hidden-md hidden-lg" style="border:  20px solid #f9f5f5"  >
                            <p style="font-size:18px;font-weight: normal; font-weight: lighter;margin-top: 28px;margin-bottom: 0; " align="center">
                                Final Points
                            </p>
                            <p style="color:#db1b1b;font-weight:bold;font-family: Century Gothic; font-size: 45px" align="center">
                                88
                            </p>
                        </div>
                        <div class="col-xs-6 hidden-sm hidden-md hidden-lg" style="border:  18px solid #f9f5f5;;background-color: #f9f5f5;margin-top:-45px;" >
                            <col align="right">
                            <p style="border-bottom: 1.5px solid white;margin-top: 20px;" >
                                Average Pts
                                <span style="float:right; font-weight: bold">
                                    85
                                </span>
                            </p>
                            <p style="border-bottom: 1.5px solid white" >
                                GW Rank
                                <span style="float:right; font-weight: bold">
                                    245
                                </span>
                            </p>
                        </div>
                        <div class="col-xs-6 hidden-sm hidden-md hidden-lg" style="border:  18px solid #f9f5f5;background-color: #f9f5f5;margin-top:-45px;" >
                            <p style="border-bottom: 1.5px solid white;margin-top: 20px;" >
                                Highest Pts
                                <span style="float:right; font-weight: bold">
                                    85
                                </span>
                            </p>
                            <p style="border-bottom: 1.5px solid white" >
                                Transfers
                                <span style="float:right; font-weight: bold">
                                    245
                                </span>
                            </p>
                        </div>-->
                        <div class="col-lg-12 hidden-xs" style="  background-color:#f9f5f5;border-bottom:15px solid #f9f5f5">
                            <a href="dreamteam.jsp" style="padding-left: 10px;font-size:15px  ">Dream Team
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12 bc-img" >
                            <hr style="border:none;margin-top: 6.5%"/>
                            <div id="selGK1" class="col-md-6 col-xs-6" style="padding-left: 28%;"  >
                                <img class="image-player" id="gkimage" src="img/subsgk.png"/>
                                <p class="gkname" id="gkname" >Goalkeeper</p>
                                <p style="display: none" id="team1"></p>
                                <p style="display: none" id="pricegk1"></p>
                            </div>
                            <div id="selGK2" class="col-md-6 col-xs-6" style="padding-right: 28%;"  >
                                <img class="image-player" id="gkimage" src="img/subsgk.png"/>
                                <p class="gkname" id="gkname" >Goalkeeper</p>
                                <p style="display: none" id="team1"></p>
                                <p style="display: none" id="pricegk1"></p>
                            </div>
                            
                            <hr style="border:none;margin-top: 21%">
                            <div id="selDEF1" class="col-md-2 col-xs-2" style="margin-right: 34px" >
                                <img class="image-player-cb" id="defimage1" src="img/subs.png"  />
                                <p id="defname1" class="cbname" >Defender</p>
                                <p style="display: none" id="team3"></p>
                                <p style="display: none" id="defprice1"></p>
                            </div>
                            <div id="selDEF2" class="col-md-2 col-xs-2" style="margin-right: 34px" >
                                <img class="image-player-cb" id="defimage2" src="img/subs.png" />
                                <p id="defname2" class="cbname" >Defender</p>
                                <p style="display: none" id="team4"></p>
                                <p style="display: none" id="defprice2"></p>
                            </div>
                            <div id="selDEF3" class="col-md-2 col-xs-2" style="margin-right: 34px" >
                                <img class="image-player-cb" id="defimage3" src="img/subs.png"  />
                                <p id="defname3" class="cbname" >Defender</p>
                                <p style="display: none" id="team5"></p>
                                <p style="display: none" id="defprice3"></p>
                            </div>
                            <div id="selDEF4" class="col-md-2 col-xs-2" style="margin-right: 34px" >
                                <img class="image-player-cb" id="defimage4" src="img/subs.png"  />
                                <p id="defname4" class="cbname" >Defender</p>
                                <p style="display: none" id="team6"></p>
                                <p style="display: none" id="defprice4"></p>
                            </div>
                            <div id="selDEF5" class="col-md-2 col-xs-2">
                                <img class="image-player-cb" id="defimage5" src="img/subs.png" />
                                <p id="defname5" class="cbname" >Defender</p>
                                <p style="display: none" id="team7"></p>
                                <p style="display: none" id="defprice5"></p>
                            </div>

                            <hr style="border:none;margin-top: 21%">                          
                            <div id="selMID1" class="col-md-2 col-xs-2" style="margin-right: 34px" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage1" />
                                <p id="midname1" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team8"></p>
                                <p style="display: none" id="midprice1"></p>
                            </div>                            
                            <div id="selMID2" class="col-md-2 col-xs-2" style="margin-right: 34px;" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage2" />
                                <p id="midname2" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team9"></p>
                                <p style="display: none" id="midprice2"></p>
                            </div>
                            <div id="selMID3" class="col-md-2 col-xs-2" style="margin-right: 34px;" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage3" />
                                <p id="midname3" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team10"></p>
                                <p style="display: none" id="midprice3"></p>
                            </div>
                            <div id="selMID4" class="col-md-2 col-xs-2" style="margin-right: 34px;" >
                                <img class="image-player-cb" src="img/subs.png"  id="midimage4" />
                                <p id="midname4" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team11"></p>
                                <p style="display: none" id="midprice4"></p>
                            </div>
                            <div id="selMID5" class="col-md-2 col-xs-2">
                                <img class="image-player-cb" src="img/subs.png"  id="midimage5" />
                                <p id="midname5" class="cbname" >Midfielder</p>
                                <p style="display: none" id="team12"></p>
                                <p style="display: none" id="midprice5"></p>
                            </div>                            

                            <hr style="border:none;margin-top: 21%">                          
                            <div id="selFWD1" class="col-md-4  col-xs-4" >
                                <img class="image-player-for" id="fwdimage1" src="img/subs.png"  />
                                <p id="fwdname1" class="gkname" >Forward</p>
                                <p style="display: none" id="team13"></p>
                                <p style="display: none" id="fwdprice1"></p>
                            </div>
                            <div id="selFWD2" class="col-md-4  col-xs-4">
                                <img class="image-player-for" id="fwdimage2" src="img/subs.png"  />
                                <p id="fwdname2" class="gkname" >Forward</p>
                                <p style="display: none" id="team14"></p>
                                <p style="display: none" id="fwdprice2"></p>
                            </div>
                            <div id="selFWD3" class="col-md-4  col-xs-4" >
                                <img class="image-player-for" id="fwdimage3" src="img/subs.png"  />
                                <p id="fwdname3" class="gkname" >Forward</p>
                                <p style="display: none" id="team15"></p>
                                <p style="display: none" id="fwdprice3  "></p>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12 pit-img">
                            <hr style="border:none;margin-top: 0"/>
                            <div class="col-md-3  col-xs-3" data-toggle="modal" data-target="#players">
                                <img id="benimage1" class="image-player-bench" src="img/couragegk.png"  />
                                <p id="benname1"  class="benname" >D'Angelo</p>
                                <p class="benname">8</p>
                                <p class="benpos">GK</p>
                            </div>
                            <div class="col-md-3  col-xs-3" data-toggle="modal" data-target="#players">
                                <img id="benimage2" class="image-player-bench" src="img/breakers1.png"  />
                                <p id="benname2"  class="benname" >Westphal</p>
                                <p class="benname">8</p>
                                <p class="benpos">1</p>
                            </div>
                            <div class="col-md-3  col-xs-3" data-toggle="modal" data-target="#players">
                                <img id="benimage3" class="image-player-bench" src="img/pride1.png"  />
                                <p id="benname3"  class="benname" >Weatherholt</p>
                                <p class="benname">8</p>
                                <p class="benpos">2</p>
                            </div>
                            <div class="col-md-3  col-xs-3" data-toggle="modal" data-target="#players">
                                <img id="benimage4" class="image-player-bench" src="img/thorns1.png"  />
                                <p id="benname4"  class="benname" >Henry</p>
                                <p class="benname">8</p>
                                <p class="benpos">3</p>
                            </div>
                        </div>

                        <div class="col-md-12 col-xs-12" style="margin-top: 5%">
                            <table class="col-md-12 col-xs-12">
                                <tr>
                                    <th style="font-family: Century Gothic;font-size: 15px;color: white;background-color: #222427;padding: 1%">Automatic Substitutions</th>
                                </tr> 
                            </table>
                            <table class="col-md-12 col-xs-12" style="font-family: Century Gothic;border:1px solid #ebebe4">
                                <tr style="border-bottom:1px solid #ebebe4">
                                    <th class="out-head" style="font-size: 15px;font-weight: bold" >Player Out
                                    <span class="glyphicon glyphicon-arrow-down fa-md" style="color:#d21e25"></span>
                                    </th>
                                    <th class="in-head" style="font-size: 15px;font-weight: bold"> Player In
                                        <span class="glyphicon glyphicon-arrow-up fa-md" style="color:#21b121"></span>
                                    </th>
                                </tr>
                                <tr style="border-bottom:1px solid #ebebe4">
                                    <td class="out-head">Leroux</td>
                                    <td class="in-head">Monica</td>
                                </tr>
                                <tr style="border-bottom:1px solid #ebebe4">
                                    <td class="out-head">Spencer</td>
                                    <td class="in-head">Daly</td>
                                </tr>
                            </table>
                        </div>
                        <!--Code to retrieve database data for fixture-->
                        <%
                            try {
                                String strThatDay = "2017/04/11";
                                SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
                                Date d = null;
                                try {
                                    d = formatter.parse(strThatDay);//catch exception
                                } catch (ParseException e) {
                                    // TODO Auto-generated catch block
                                    e.printStackTrace();
                                }

                                Calendar thatDay = Calendar.getInstance();
                                thatDay.setTime(d);
                                Calendar today = Calendar.getInstance();
                                today.getTime();
                                long diff = today.getTimeInMillis() - thatDay.getTimeInMillis();
                                long days = diff / (24 * 60 * 60 * 1000);
                                int weeks = ((int) days) / 7;
                                connection = DriverManager.getConnection(connectionUrl, userId, password);
                                statement = connection.createStatement();
                                if (weeks + 1 == 9 || weeks + 1 == 10) {
                                    weeks = 9;
                                } else if (weeks + 1 == 16 || weeks + 1 == 17) {
                                    weeks = 15;
                                } else if (weeks + 1 == 23 || weeks + 1 == 24) {
                                    weeks = 21;
                                }
                                String sql = "SELECT * FROM fixture where fixture='Gameweek " + weeks + "'";
                                int i = 1;
                                String game = "game" + i;
                                String date = null;
                                String badge = null;
                                resultSet = statement.executeQuery(sql);

                        %>

                        <div class="col-md-12 col-sm-6 col-xs-12 fixtures" id="somediv">
                            <h4 style="font-family: Century Gothic; font-weight: bold;font-size: 13px;text-align: center; ">Gameweek <%=weeks%> </h4>
                            <button id="prev" value="<%="Gameweek " + (weeks - 1)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center;padding: 1%; float: left">
                                Previous
                            </button>
                            <h5 class="col-sm-6 hidden-xs" style="font-family: Century Gothic;text-align: center;font-weight: bold; font-size:18px;left:6.5%; margin-top: -1%;margin-bottom: -2%" align="center">
                                <img src="img/nwsllogo.png" style="width: 31%;padding-right: 0.5%" >Fixtures
                            </h5>
                            <button id="next" value="<%="Gameweek " + (weeks + 1)%>" type="button" class="fixturebtn btncstm col-sm-3 hidden-xs" style="font-family: Century Gothic;font-size: 14px; font-weight: bold; text-align: center; padding: 1%;float: right">
                                Next
                            </button>
                            <% while (resultSet.next()) {
                                    if (!resultSet.getString("date").equals(date)) {

                            %>    
                            <h6 class="col-sm-12" style="font-family: Century Gothic; font-weight: lighter;font-size: 14px;text-align: center;width: 104%; left:-2.05%;margin-bottom: -0.5%;margin-top: -2%; "><%=resultSet.getString("date")%></h6>
                            <% date = resultSet.getString("date");
                                }
                            %>
                            <a data-toggle="collapse" style="color:black " href="#<%=game%>" >
                                <div class="match col-sm-12 " style="width: 104.3%;left:-2.1%" >
                                    <div class="row">
                                        <div class="col-md-4  col-xs-4 match  " style="left: 3.5%">
                                            <h6 style="float: right;font-size:17px"><%=resultSet.getString("home")%></h6>
                                        </div>
                                        <%if (resultSet.getString("home").equals("Houston Dash")) {
                                                badge = "Houston_Dash2.png";
                                            } else if (resultSet.getString("home").equals("Chicago Red Stars")) {
                                                badge = "ChicagoRedStars1.png";
                                            } else if (resultSet.getString("home").equals("Portland Thorns FC")) {
                                                badge = "Portland1.png";
                                            } else if (resultSet.getString("home").equals("Orlando Pride")) {
                                                badge = "OrlandoPride2.png";
                                            } else if (resultSet.getString("home").equals("Washington Spirit")) {
                                                badge = "spirit.png";
                                            } else if (resultSet.getString("home").equals("North Carolina Courage")) {
                                                badge = "North_Carolina_Courage1.png";
                                            } else if (resultSet.getString("home").equals("Seattle Reign FC")) {
                                                badge = "SeattleReignFC2.png";
                                            } else if (resultSet.getString("home").equals("Sky Blue FC")) {
                                                badge = "Sky_Blue_FC1.png";
                                            } else if (resultSet.getString("home").equals("FC Kansas City")) {
                                                badge = "kansasCity2.png";
                                            } else if (resultSet.getString("home").equals("Boston Breakers")) {
                                                badge = "Boston_Breakers1.png";
                                            }
                                        %>


                                        <img  class="col-md-1 col-xs-1 " style="width:initial; "  src="img/<%=badge%>" />
                                        <div class="col-md-2  col-xs-2  skor "style="    letter-spacing: 0.5px;
                                             width: 15%; 
                                             left:-3.3%;
                                             background-color:#1d3260;
                                             border-radius: 3pt">
                                            <h6 style=" width: 100%;text-align: center;color:white;font-family: Century Gothic; font-size: 16px; font-weight:lighter"><%=resultSet.getString("time")%></h6>
                                        </div>

                                        <%if (resultSet.getString("away").equals("Houston Dash")) {
                                                badge = "Houston_Dash2.png";
                                            } else if (resultSet.getString("away").equals("Chicago Red Stars")) {
                                                badge = "ChicagoRedStars1.png";
                                            } else if (resultSet.getString("away").equals("Portland Thorns FC")) {
                                                badge = "Portland1.png";
                                            } else if (resultSet.getString("away").equals("Orlando Pride")) {
                                                badge = "OrlandoPride2.png";
                                            } else if (resultSet.getString("away").equals("Washington Spirit")) {
                                                badge = "spirit.png";
                                            } else if (resultSet.getString("away").equals("North Carolina Courage")) {
                                                badge = "North_Carolina_Courage1.png";
                                            } else if (resultSet.getString("away").equals("Seattle Reign FC")) {
                                                badge = "SeattleReignFC2.png";
                                            } else if (resultSet.getString("away").equals("Sky Blue FC")) {
                                                badge = "Sky_Blue_FC1.png";
                                            } else if (resultSet.getString("away").equals("FC Kansas City")) {
                                                badge = "kansasCity2.png";
                                            } else if (resultSet.getString("away").equals("Boston Breakers")) {
                                                badge = "Boston_Breakers1.png";
                                            }
                                        %>
                                        <img class="col-md-1 col-xs-1 "   style="width: initial;margin-left: -6%; " src="img/<%=badge%>" />

                                        <div class="col-md-4  col-xs-4 match  " style="width: 30%;    left: -4%;">
                                            <h6 style="font-size: 17px"><%=resultSet.getString("away")%></h6>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class= "col-sm-12 collapse " id="<%=game%>" >
                                <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                    <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Goal Scored</h6>
                                </div>
                                <div class="row2" style="width: 100%;" >
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;float:right">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                            <li>Milk</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;margin-left: -12.6%">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                    <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Assists</h6>
                                </div>
                                <div class="row2" style="width: 100%;" >
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;float:right">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                            <li>Milk</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family: Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;margin-left: -12.6%">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                    <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Yellow cards</h6>
                                </div>
                                <div class="row2" style="width: 100%;" >
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;float:right">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                            <li>Milk</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;margin-left: -12.6%">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                    <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Red cards</h6>
                                </div>
                                <div class="row2" style="width: 100%;" >
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;float:right">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                            <li>Milk</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;margin-left: -12.6%">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                    <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top:0.47% " >Saves</h6>
                                </div>
                                <div class="row2" style="width: 100%" >
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;float:right">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                            <li>Milk</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;margin-left: -12.6%">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-12" style="width: 100%;height:19px ;background-color:#1d3260; margin-top: 2% ">
                                    <h6 style="color:white;font-family: Century Gothic;font-size:13px;text-align: center;margin-top: 0.47% " >Bonus</h6>
                                </div>
                                <div class="row2" style="width: 100%;margin-bottom: 2%" >
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;border-right: 1px solid white;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;float:right">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                            <li>Milk</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6  col-xs-6" style="width: 50%;flex: 1;margin-top: 1%;font-family:Century Gothic;font-weight: lighter">
                                        <ul style="list-style: none;margin-left: -12.6%">
                                            <li>Coffee</li>
                                            <li>Tea</li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            <%
                                        i++;
                                        game = "game" + i;
                                    }

                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
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
                                    badge = "Utah_Royals.png";
                                }
                            %>
                            <img style="margin:auto; display:block; height:150px" src="img/<%=badge%>"/>
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

    <!--players modal -->
    <div id="players" class="modal fade" role="dialog" >
        <div class="modal-dialog" style="width: 450px">

            <!-- Modal content-->
            <div class="modal-content" >
                <div class="modal-header" style="background-color:#1d3260;height: 40px;" >
                    <button type="button" class="close" data-dismiss="modal" style="opacity: 1; color:white; margin-top:-2%" >&times;</button>
                    <h4 class="modal-title" style="color: white;text-align:left;font-family: Century Gothic;font-weight: bold; margin-top:-4% ">Ashlyn Harris $6.5<img src="img/nwsllogo1.png" style="width: 100px;height: 50px;margin-left:30%; padding-bottom: 1%"/></h4>

                </div>
                <!-- Modal content-->
                <div class="modal-body">
                    <button type="button" class="prevbutton btncustom  " style="width: 100%;background-color: red;color:white;font-family: Century Gothic;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
                        Substitute 
                    </button> 
                    <button type="button" class="prevbutton btncustom  " style="width: 100%;background-color: graytext;color:white;font-family: Century Gothic;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
                        Make Captain 
                    </button>
                    <button type="button" class="prevbutton btncustom  " style="width: 100%;font-family: Century Gothic;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
                        Make Vice-Captain 
                    </button>
                    <button type="button" class="prevbutton btncustom  " style="width: 100%;font-family: Century Gothic;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
                        View Information
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!--Button prev next scrip!-->
    <script>
        $(document).on("click", "#prev", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            var prev = $('#prev').val();
            $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                $("#somediv").html("");
                var $h4 = $("<h4>");
                $h4.css({"font-family": "Century Gothic", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                $h4.text(responseText[0] + "-" + responseText[3]).appendTo("#somediv");

                var $buttonprev = $("<button>");
                $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
                $buttonprev.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "Century Gothic", "margin-left": "-2%", "padding-top": "0.6%"});
                $buttonprev.text("Previous").insertAfter($h4);
                if (responseText[1] == "Gameweek 0") {
                    $buttonprev.css('visibility', 'hidden');
                }

                var $h5 = $("<h5>");
                $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
                $h5.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "Century Gothic", 'font-size': "17px", "left": "7.35%", 'margin-top': "-0.5%", 'margin-bottom': "-2%"});
                $h5.text("Fixtures").insertAfter($buttonprev);
                var $img = $("<img>");
                $img.attr({src: "img/nwsllogo.png"});
                $img.css({'height': "29%", "width": " 29%", "padding-right": " 0.5%"});
                $img.prependTo($h5);
                var $buttonnext = $("<button>");
                $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
                $buttonnext.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "Century Gothic", "margin-left": "-2.1%", "padding-top": "0.6%", "left": "2.1%"});
                $buttonnext.text("Next").insertAfter($h5);
                if (responseText[2] == "Gameweek 23") {
                    $buttonnext.css('visibility', 'hidden');
                }
                for (i = responseText.length; i >= 3; i = i - 6) {

                    var $h6 = $("<h6>");
                    $h6.attr({class: "col-sm-12"});
                    $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "Century Gothic", 'font-size': "14px", "width": "104%", "left": "-2.05%", "margin-bottom": "1%", "margin-top": "2.5%"});
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
                    $divh6.attr({'class': "col-md-4  col-xs-4 match  "});
                    $divh6.css({"left": "3.7%"});
                    $divh6.appendTo($divrow);
                    var $h6home = $("<h6>");
                    $h6home.attr({'class': "col-md-4  col-xs-4 match  "});
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
                    $time.css({"width": "100%", "text-align": "center", "color": "white", "font-family": "Century Gothic", "font-size": "16px", "font-weight": "lighter"});
                    $time.text(responseText[i + 3]).appendTo($divtime);
                    var $imgaway = $("<img>");
                    $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
                    $imgaway.css({"width": "initial ", "margin-left": "-7%"});
                    $imgaway.appendTo($divrow);
                    var $divh6a = $("<div>");
                    $divh6a.attr({'class': "col-md-4  col-xs-4 match  "});
                    $divh6a.css({"left": "-7%", "width": "30%"});
                    $divh6a.appendTo($divrow);
                    var $h6away = $("<h6>");
                    $h6away.attr({'class': "col-md-4  col-xs-4 match  "});
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
        $(document).on("click", "#next", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            var prev = $('#next').val();
            $.get("fixtureprev", {previous: prev}, function (responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                $("#somediv").html("");
                var $h4 = $("<h4>");
                $h4.css({"font-family": "Century Gothic", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                $h4.text(responseText[0] + "-" + responseText[3]).appendTo("#somediv");

                var $buttonprev = $("<button>");
                $buttonprev.attr({'id': "prev", 'value': responseText[1], 'type': "button", 'class': "prevbutton btncustom col-sm-3 hidden-xs"});
                $buttonprev.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "Century Gothic", "margin-left": "-2%", "padding-top": "0.6%"});
                $buttonprev.text("Previous").insertAfter($h4);
                if (responseText[1] == "Gameweek 0") {
                    $buttonprev.css('visibility', 'hidden');
                }

                var $h5 = $("<h5>");
                $h5.attr({class: "col-sm-6 hidden-xs", 'align': "center"});
                $h5.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "Century Gothic", 'font-size': "17px", "left": "7.35%", 'margin-top': "-0.5%", 'margin-bottom': "-2%"});
                $h5.text("Fixtures").insertAfter($buttonprev);
                var $img = $("<img>");
                $img.attr({src: "img/nwsllogo.png"});
                $img.css({'height': "29%", "width": " 29%", "padding-right": " 0.5%"});
                $img.prependTo($h5);
                var $buttonnext = $("<button>");
                $buttonnext.attr({'id': "next", 'value': responseText[2], 'type': "button", 'class': "btncustom nextbtn col-sm-3 hidden-xs"});
                $buttonnext.css({"height": "33px", "font-size": "13px", "font-weight": "bold", "text-align": "center", "font-family": "Century Gothic", "margin-left": "-2.1%", "padding-top": "0.6%", "left": "2.1%"});
                $buttonnext.text("Next").insertAfter($h5);
                if (responseText[2] == "Gameweek 23") {
                    $buttonnext.css('visibility', 'hidden');
                }
                for (i = responseText.length; i >= 3; i = i - 6) {

                    var $h6 = $("<h6>");
                    $h6.attr({class: "col-sm-12"});
                    $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "Century Gothic", 'font-size': "14px", "width": "104%", "left": "-2.05%", "margin-bottom": "1%", "margin-top": "2.5%"});
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
                    $divh6.attr({'class': "col-md-4  col-xs-4 match  "});
                    $divh6.css({"left": "3.7%"});
                    $divh6.appendTo($divrow);
                    var $h6home = $("<h6>");
                    $h6home.attr({'class': "col-md-4  col-xs-4 match  "});
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
                    $time.css({"width": "100%", "text-align": "center", "color": "white", "font-family": "Century Gothic", "font-size": "16px", "font-weight": "lighter"});
                    $time.text(responseText[i + 3]).appendTo($divtime);
                    var $imgaway = $("<img>");
                    $imgaway.attr({src: "img/" + responseText[i + 5], 'class': "col-md-1 col-xs-1"});
                    $imgaway.css({"width": "initial ", "margin-left": "-7%"});
                    $imgaway.appendTo($divrow);
                    var $divh6a = $("<div>");
                    $divh6a.attr({'class': "col-md-4  col-xs-4 match  "});
                    $divh6a.css({"left": "-7%", "width": "30%"});
                    $divh6a.appendTo($divrow);
                    var $h6away = $("<h6>");
                    $h6away.attr({'class': "col-md-4  col-xs-4 match  "});
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


    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
