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
        <link href="css/transferscss.css" rel="stylesheet">

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
                        <img class="navbar-brand topnav"  src="img/Logonwsl.png" style="width: auto; height: -webkit-fill-available; padding: 0" >
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="http://chicagoredstars.com/"  target="_blank">
                                <img  src="img/ChicagoRedStars.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://houstondashsoccer.com/"  target="_blank">
                                <img  src="img/Houston_Dash.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://nccourage.com/"  target="_blank">
                                <img  src="img/North_Carolina_Courage.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.orlando-pride.com/"  target="_blank">
                                <img  src="img/OrlandoPride.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.timbers.com/thornsfc"  target="_blank">
                                <img  src="img/Portland.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.reignfc.com/" target="_blank">
                                <img  src="img/SeattleReignFC.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://www.skybluefc.com/"  target="_blank">
                                <img  src="img/Sky_Blue_FC.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="https://www.rsl.com/utahroyalsfc"  target="_blank">
                                <img  src="img/UtahRoyals.png" style="width: auto;height: 40px;margin-left: 15%" />
                            </a>
                        </li>
                        <li>
                            <a href="http://washingtonspirit.com/"  target="_blank">
                                <img src="img/Washington_Spirit.png" style="width: auto;height: 40px;margin-left: 15%" />
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
                    <li ><a href="points.jsp">Points</a></li>
                    <li  class="hidden-xs active"><a href="transfers.html">Transfers</a></li>
                    <li  class="hidden-xs"><a href="leagues.html">Leagues</a></li>
                    <li  class="hidden-xs"><a href="fixture">Fixtures</a></li>
                    <li  class="hidden-xs"><a href="statistics.html">Statistics</a></li>
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
            <div class="row">


                <!-- Blog Entries Column -->
                <div class="col-md-8 test">
                    <div class="row ">
                        <h3 class="col-md-12 col-xs-12"  style="font-family: Century Gothic">Transfers</h3>
                        <h5 class="col-md-12 col-xs-12" style="font-size: 14px; font-weight:lighter;font-family: Century Gothic " >
                            Select a maximum of 4 players from a single team or 'Auto Pick' if you're short of time.
                        </h5>
                        <div  class="col-sm-12  ">
                            <div class="col-sm-12" style="width: 100%;background-color:#050424">
                                <h6 style="color:white;font-size:14px;text-align:center; font-weight:lighter;margin-top: 8px;margin-bottom: 8px;font-family: Century Gothic" >Gameweek 3 Deadline:
                                    <strong style="color:#d4213c; font-size:19px;font-family: Century Gothic" >17 Jun 02:30PM ET </strong>
                                </h6>
                            </div>
                            <div class="col-sm-12" style="width: 100%;border: 1px solid #ebebe4;margin-bottom: 1%;padding-left: 0;padding-right: 0" >
                                <div class="col-md-3  col-xs-3" style="margin-top: 3%">
                                    <button type="button" class="prevbutton btncustom col-sm-6 " style="padding: 4.5%; font-size: 15px; text-align: center;font-family: Century Gothic" onclick="autopick()">
                                        Auto Pick 
                                    </button> 
                                </div>
                                <div class="col-md-3  col-xs-3" style="margin-top: 3%">
                                    <button type="button" class="prevbutton btncustom col-sm-6 " style="padding: 4.5%; font-size: 15px; text-align: center;float: right;font-family: Century Gothic" onclick="reset()">
                                        Reset 
                                    </button> 
                                </div>
                                <div class="col-md-3  col-xs-3" style="flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;border-left: 1px solid #ebebe4">
                                    <h6 style="text-align: center;font-weight:bold; font-size:15px;font-family: Century Gothic ">Player Selected</h6>
                                    <h4 id="allPlayers" style="text-align: center;font-weight:bold; font-size:20px; color:#d4213c;font-family: Century Gothic;"><span id="totalPlayers">0</span>/15</h4>
                                </div>
                                <div class="col-md-3  col-xs-3" style="flex: 1;margin-top: 0.5%;margin-bottom: 0.5%;border-left: 1px solid #ebebe4">
                                    <h6 style="text-align: center;font-weight:bold; font-size:15px;font-family: Century Gothic ">Money Remaining</h6>
                                    <h4 style="text-align: center;font-weight:bold;color:#28b528; font-size:20px;font-family: Century Gothic ">$<span id="remainPrice">100.0</span></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12  " class="col-md-12 col-xs-12" style="border: 1px solid #d4213c; background-color:#ea344f; padding-right: 15px;padding-left: 15px; margin-bottom: 1%; display: none " id='errorbox'> 
                            <h5  id="teamError" style="text-align: center; font-size: 14px;font-family: Century Gothic">More than 4 players selected from <span id="team"></span>.</h5>
                            <h5  id="posError" style="text-align: center; font-size: 14px;font-family: Century Gothic;display: none"><span id="pos"></span> :Maximum players in this position!</h5>
                            <h5  id="enterError" style="text-align: center; font-size: 14px;font-family: Century Gothic;display: none">Please complete your Team!</h5>
                        </div>
                        <div class="col-md-12 col-xs-12" style="border: 1px solid #28b528; background-color:#92c992; padding-right: 15px;padding-left: 15px; margin-bottom: 1%; display: none"id='checkbox'> 
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

                            <hr style="border:none;margin-top: 21%">
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

                            <hr style="border:none;margin-top: 21%">                          
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

                            <hr style="border:none;margin-top: 21%">                          
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
                            <h4 style="font-family: Century Gothic; font-weight: bold;font-size: 13px;text-align: center; ">Gameweek <%=weeks %> </h4>
                            <button id="prev" value="<%="Gameweek " + (weeks - 1)%>" type="button" class="prevbutton btncustom col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:Century Gothic;margin-left: -2%;padding-top: 0.7%">
                                Previous
                            </button>
                            <h5 class="col-sm-6 hidden-xs" style="text-align: center;font-weight: lighter; font-family:Century Gothic;font-size:17px;left:7.35%; margin-top: -0.5%" align="center">
                                <img src="img/nwsllogo.png" style="height: 29%;width: 29%;padding-right: 0.5%" >Fixtures
                            </h5>
                            <button id="next" value="<%="Gameweek " + (weeks + 1)%>" type="button" class="btncustom nextbtn col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:Century Gothic;margin-right:-2.1%;padding-top: 0.7%">
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
                <div class="col-md-4 sidebar" >
                    <div style="border-bottom:1px solid #ebebe4;border-left:1px solid #ebebe4;border-right:1px solid #ebebe4;margin-bottom: 5% ">
                        <div class="teambox">
                            <h3 style="font-family: Century Gothic;font-size: 19px; margin-left:5%; margin-top: 8%; line-height: 10px; font-weight: bold">Player Selection</h3>
                        </div>
                        <div>
                            <h5 style="font-family: Century Gothic;font-size: 14px; margin-left:5%; margin-top: 5%">View</h5>
                            <div>
                                <select class="form-control"  data-size="5" id ="selectPlayers"  data-size="5" onchange="showPlayers()">
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
                            <h5 style="font-family: Century Gothic;font-size: 14px; margin-left:5%; margin-top:5%">Sorted by</h5>
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
                            <h5 style="font-family: Century Gothic;font-size: 14px; margin-left:5%; margin-top: 5%">Maximum price</h5>
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
                            <h5 style="font-family: Century Gothic;font-size: 14px; margin-left:5%; margin-top: 5%">Search Player List</h5>
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
                            <h6 class="text-center" style="font-family: Century Gothic;font-size: 15px; line-height: 10px; font-weight:lighter; margin-top: 6%"><strong style="font-family: Century Gothic;color:#d4213c;font-size: 16px" id ="total"><%=request.getAttribute("total")%></strong> players shown</h6>
                        </div>
                        <div>
                            <table style="width:100%; background-color: #f9f5f5" id='gk'>
                                <tr>
                                    <th style="background-color: yellow"></th>
                                    <th style="background-color: yellow; font-family: Century Gothic">GOALKEEPERS</th> 
                                    <th style="background-color: yellow; text-align: center; font-family: Century Gothic">$</th>
                                    <th id="catGK" style="background-color: yellow; text-align: center; font-family: Century Gothic">TS</th>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/orlandogk.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Harris</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">150</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/orlandogk.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Harris</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">150</td>
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
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
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
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td> 
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>

                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
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
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weigh:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight: lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                                <tr>
                                    <td style='font-family: Century Gothic; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;width: 10% '><span class="glyphicon glyphicon-info-sign"></span></td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px;width: 65% ">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/pride1.png" style="width:31px;height:30px;float:right" />
                                        </div>
                                        <div class='col-sm-10' style="width:100px;height: 30px;right: 15px;margin-top:-3px; ">
                                            <span style="font-size: 14px;font-family: Century Gothic; ">Krieger</span><hr style="border:none;margin-top: -34%">
                                            <span style="font-size: 14px;font-family: Century Gothic; font-weight: lighter ">ORL</span>
                                        </div>
                                    </td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%  ">$6.2</td>
                                    <td style="font-family: Century Gothic; font-weight:lighter ;text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white;width: 12.5%     ">200</td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-12" style="width:100%">
                            <button type="button" class="btn btn-default btn-circle col-md-1 col-xs-1" style="width:10%;margin-top:5%;margin-right:2% "><i class="glyphicon glyphicon-backward"></i></button>
                            <button type="button" class="btn btn-default btn-circle btn-lg  col-md-2 col-xs-2" style="width:4rem"><i class="glyphicon glyphicon glyphicon-chevron-left"></i></button>
                            <h6 class="col-md-6 col-xs-6" style="width: 40%;font-family: Century Gothic;font-weight: lighter;left:10%;margin-top: 7%">Page <span style="font-weight: lighter" >1</span> of 3  </h6>
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
                    $h4.css({"font-family": "Century Gothic", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                    $h4.text(responseText[0]+"-"+responseText[3]).appendTo("#somediv");

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
                   for (i =responseText.length ; i >=3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "Century Gothic", 'font-size': "14px", "width": "104%", "left":"-2.05%","margin-bottom": "1%","margin-top": "2.5%"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if(i+6>0){
                            if(responseText[i]==responseText[i-6]){
                                $h6.css({"display":"none"});
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
                        $h6home.css({"margin-left":"2.5%","font-size":"17px","width": "230px","text-align":"right"});
                        $h6home.text(responseText[i+1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/"+responseText[i+2],'class':"col-md-1 col-xs-1"});
                        $imghome.css({ "width": "initial ","margin-left": "-1%","margin-right": "2%"});
                        $imghome.appendTo($divrow);
                        var $divtime=$("<div>");
                        $divtime.attr({"class":"col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px","width": "15%","left":"-4.3%","background-color":"#1d3260","border-radius":" 3pt"});
                        $divtime.appendTo($divrow);
                        var $time=$("<h6>");
                        $time.css({"width": "100%","text-align": "center","color":"white","font-family": "Century Gothic", "font-size": "16px", "font-weight":"lighter"});
                        $time.text(responseText[i+3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/"+responseText[i+5],'class':"col-md-1 col-xs-1"});
                        $imgaway.css({ "width": "initial ","margin-left": "-7%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4 match  "});
                        $divh6a.css({"left": "-7%","width":"30%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4 match  "});
                        $h6away.css({"font-size":"17px","width": "230px"});
                        $h6away.text(responseText[i+4]).appendTo($divh6a);
                        
                        if(i>=responseText.length){
                            $divrow.css({"display":"none"});
                            $h6.css({"display":"none"});
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
                    $h4.text(responseText[0]+"-"+responseText[3]).appendTo("#somediv");

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
                   for (i =responseText.length ; i >=3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "Century Gothic", 'font-size': "14px", "width": "104%", "left":"-2.05%","margin-bottom": "1%","margin-top": "2.5%"});
                        $h6.text(responseText[i]).insertAfter($buttonnext);
                        if(i+6>0){
                            if(responseText[i]==responseText[i-6]){
                                $h6.css({"display":"none"});
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
                        $h6home.css({"margin-left":"2.5%","font-size":"17px","width": "230px","text-align":"right"});
                        $h6home.text(responseText[i+1]).appendTo($divh6);
                        var $imghome = $("<img>");
                        $imghome.attr({src: "img/"+responseText[i+2],'class':"col-md-1 col-xs-1"});
                        $imghome.css({ "width": "initial ","margin-left": "-1%","margin-right": "2%"});
                        $imghome.appendTo($divrow);
                        var $divtime=$("<div>");
                        $divtime.attr({"class":"col-md-2  col-xs-2  skor "});
                        $divtime.css({"letter-spacing": "0.5px","width": "15%","left":"-4.3%","background-color":"#1d3260","border-radius":" 3pt"});
                        $divtime.appendTo($divrow);
                        var $time=$("<h6>");
                        $time.css({"width": "100%","text-align": "center","color":"white","font-family": "Century Gothic", "font-size": "16px", "font-weight":"lighter"});
                        $time.text(responseText[i+3]).appendTo($divtime);
                        var $imgaway = $("<img>");
                        $imgaway.attr({src: "img/"+responseText[i+5],'class':"col-md-1 col-xs-1"});
                        $imgaway.css({ "width": "initial ","margin-left": "-7%"});
                        $imgaway.appendTo($divrow);
                        var $divh6a = $("<div>");
                        $divh6a.attr({'class': "col-md-4  col-xs-4 match  "});
                        $divh6a.css({"left": "-7%","width":"30%"});
                        $divh6a.appendTo($divrow);
                        var $h6away = $("<h6>");
                        $h6away.attr({'class': "col-md-4  col-xs-4 match  "});
                        $h6away.css({"font-size":"17px","width": "230px"});
                        $h6away.text(responseText[i+4]).appendTo($divh6a);
                        
                        if(i>=responseText.length){
                            $divrow.css({"display":"none"});
                            $h6.css({"display":"none"});
                        }
                        
                    }

                });
            });
        </script>

    </body>

</html>
