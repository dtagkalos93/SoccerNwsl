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
            <div class="row">


                <!-- Blog Entries Column -->
                <div class="col-md-8 test">
                    <div class="row ">
                        <button type="button" class="prevbutton btncustom col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial">
                            Previous
                        </button>
                        <h4 class="col-sm-6 hidden-xs" style="text-align: center;font-weight: bold; font-family:arial;font-size:22px;left: 8% ">
                            Gameweek 24
                        </h4>
                        <button type="button" class="btncustom nextbtn col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial">
                            Next
                        </button>


                        <h4 class="hidden-sm hidden-md hidden-lg" style="font-weight: bold; font-family:arial;font-size:22px ">
                            Gameweek 5
                        </h4>
                        <div class="row hidden-sm hidden-md hidden-lg">
                            <button type="button" class="prevbutton btncustom col-sm-3" style="width:150px;height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial">
                                Previous
                            </button>
                            <button type="button" class="btncustom nextbtn col-sm-3" style="width:150px; height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial">
                                Next
                            </button>
                        </div>
                        <div class="col-md-4 hidden-xs" style="border:  18px solid #f9f5f5;" >
                            <p style="font-size:18px;font-weight: normal; font-weight: lighter;margin-top: 28px; margin-bottom: 0px" align="center">
                                Final Points
                            </p>
                            <p style="color:#db1b1b;font-weight:bold;font-family: arial; font-size: 45px" align="center">
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
                            <p style="color:#db1b1b;font-weight:bold;font-family: arial; font-size: 45px" align="center">
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
                        </div>
                        <div class="col-lg-12 hidden-xs" style="  background-color:#f9f5f5;border-bottom:15px solid #f9f5f5">
                            <a href="#" style="padding-left: 10px;font-size:15px  ">Dream Team
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12 bc-img">
                            <hr style="border:none;margin-top: 6.5%"/>
                            <div class="col-md-12 col-xs-12" style="left:40.25%" data-toggle="modal" data-target="#players">

                                <img class="image-player " src="img/orlandogk.png" />
                                <p class="gkname1">Harris</p>
                                <p class="gkpoint1">8</p>
                            </div>

                            <hr style="border:none;margin-top: 27%">
                            <div class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1" style="right: 8%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png"  />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="right: 4.65%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png" />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="right: 1.5%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png"  />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left:1.65%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png"  />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left: 4.7%;display: none"  data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png" />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:4%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/pride1.png"  />
                                <p class="cbname2" >Krieger</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:3%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/spirit1.png"  />
                                <p class="cbname2" >Zadorsky</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:2.25%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/pride1.png"  />
                                <p class="cbname2" >Kennedy</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:1.2%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/thorns1.png"  />
                                <p class="cbname2" >Menges</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-4 col-xs-4" style="left:10%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for " src="img/kansas1.png"  />
                                <p class="gkname" >Sauerbrunn</p>
                                <p class="gkpoint">8</p>
                            </div>
                            <div class="col-md-4 col-xs-4" style="left:6.9%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/pride1.png"  />
                                <p class="gkname" >Ertz</p>
                                <p class="gkpoint">8</p>
                            </div>
                            <div class="col-md-4 col-xs-4" style="left:3%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/stars1.png"  />
                                <p class="gkname" >Short</p>
                                <p class="gkpoint">8</p>
                            </div>

                            <hr style="border:none;margin-top: 47.75%">
                            <div class="col-md-2 col-md-offset-1 col-xs-2 col-xs-offset-1  " style="right: 8%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png"  />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="right: 4.65%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png" />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="right: 1.5%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png"  />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left:1.65%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb" src="img/pride.png"  />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-2 col-xs-2" style="left: 4.7%;display: none" data-toggle="modal" data-target="#players" >
                                <img class="image-player-cb" src="img/pride.png" />
                                <p class="cbname" >Kennedy</p>
                                <p class="cbpoint">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:4%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/dash1.png"  />
                                <p class="cbname2" >Brian</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:3%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/dash1.png"  />
                                <p class="cbname2" >Lloyd</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:2.25%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/spirit1.png"  />
                                <p class="cbname2" >K. Mewis</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:1.2%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/reign1.png"  />
                                <p class="cbname2" >Rapinoe</p>
                                <p class="cbpoint2">8</p>
                            </div>
                            <div class="col-md-4 col-xs-4" style="left:10%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/thorns1.png"  />
                                <p class="gkname" >Heath</p>
                                <p class="gkpoint">8</p>
                            </div>
                            <div class="col-md-4 col-xs-4" style="left:6.9%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/courage.png"  />
                                <p class="gkname" >S. Mewis</p>
                                <p class="gkpoint">8</p>
                            </div>
                            <div class="col-md-4 col-xs-4" style="left:3%;display: none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/pride1.png"  />
                                <p class="gkname" >Camila</p>
                                <p class="gkpoint">8</p>
                            </div>

                            <hr style="border:none;margin-top: 68.5%">
                            <div class="col-md-4  col-xs-4   " style="left:10%; display:none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/pride1.png"  />
                                <p class="gkname" >Marta</p>
                                <p class="gkpoint">8</p>
                            </div>
                            <div class="col-md-4  col-xs-4   " style="left:6.9%; display:none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/skyblue1.png"  />
                                <p class="gkname" >Kerr</p>
                                <p class="gkpoint">8</p>
                            </div>
                            <div class="col-md-4  col-xs-4   " style="left:3%; display:none" data-toggle="modal" data-target="#players">
                                <img class="image-player-for" src="img/thorns1.png"  />
                                <p class="gkname" >Nadim</p>
                                <p class="gkpoint">8</p>
                            </div>
                            <div class="col-md-6  col-xs-6   " style="left:25%" data-toggle="modal" data-target="#players">
                                <img class="image-player-fw" src="img/courage.png"  />
                                <p class="fwname" >Williams</p>
                                <p class="fwpoint">8</p>
                            </div>
                            <div class="col-md-6  col-xs-6   " style="left:6%" data-toggle="modal" data-target="#players">
                                <img class="image-player-fw" src="img/dash1.png"  />
                                <p class="fwname" >Ohai</p>
                                <p class="fwpoint">8</p>
                            </div>
                            <div class="col-md-12  col-xs-12" style="left:40.25%; display:none" data-toggle="modal" data-target="#players" >
                                <img class="image-player" src="img/stars1.png"  />
                                <p class="fwname" >Press</p>
                                <p class="fwpoint">8</p>
                            </div>
                        </div>


                        <div class="col-md-12 col-sm-12 col-xs-12 pit-img">
                            <hr style="border:none;margin-top: 3.5%"/>

                            <div class="col-md-3  col-xs-3   " style="left:4%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/couragegk.png"  />
                                <p class="cbname2" >D'Angelo</p>
                                <p class="cbpoint2">8</p>
                                <p class="cbpoint2">GK</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:3%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/breakers1.png"  />
                                <p class="cbname2" >Westphal</p>
                                <p class="cbpoint2">8</p>
                                <p class="cbpoint2">1</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:2.25%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/pride1.png"  />
                                <p class="cbname2" >Weatherholt</p>
                                <p class="cbpoint2">8</p>
                                <p class="cbpoint2">2</p>
                            </div>
                            <div class="col-md-3  col-xs-3   " style="left:1.2%" data-toggle="modal" data-target="#players">
                                <img class="image-player-cb2" src="img/thorns1.png"  />
                                <p class="cbname2" >Henry</p>
                                <p class="cbpoint2">8</p>
                                <p class="cbpoint2">3</p>
                            </div>

                        </div>



                        <div class="col-md-12 col-sm-6 col-xs-12" style="width: 100%;margin-bottom: 5%">
                            <h3 style="font-family: arial; font-weight: bold;font-size: 18px; ">Automatic Substitutions </h3>
                            <table style="width: 100%">
                                <tr>
                                    <th class="out-head" style="font-size: 15px;font-weight: bold; margin-bottom: 0.75%" >Player Out</th>
                                    <th class="in-head" style="font-size: 15px;font-weight: bold; margin-bottom: 0.75%"> Player In</th>
                                </tr>
                                <tr style="">
                                    <td class="out-head players ">Leroux</td>
                                    <td class="in-head players ">Monica</td>
                                </tr>
                                <tr style="">
                                    <td class="out-head players">Spencer</td>
                                    <td class="out-head players">Daly</td>
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
                            <h4 style="font-family: arial; font-weight: bold;font-size: 13px;text-align: center; ">Gameweek <%=weeks %> </h4>
                            <button id="prev" value="<%="Gameweek " + (weeks - 1)%>" type="button" class="prevbutton btncustom col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial;margin-left: -2%;padding-top: 0.7%">
                                Previous
                            </button>
                            <h5 class="col-sm-6 hidden-xs" style="text-align: center;font-weight: lighter; font-family:arial;font-size:17px;left:7.35%; margin-top: -0.5%" align="center">
                                <img src="img/nwsllogo.png" style="height: 29%;width: 29%;padding-right: 0.5%" >Fixtures
                            </h5>
                            <button id="next" value="<%="Gameweek " + (weeks + 1)%>" type="button" class="btncustom nextbtn col-sm-3 hidden-xs" style="height: 33px; font-size: 13px; font-weight: bold; text-align: center; font-family:arial;margin-right:-2.1%;padding-top: 0.7%">
                                Next
                            </button>
                            <% while (resultSet.next()) {
                                    if (!resultSet.getString("date").equals(date)) {

                            %>    
                            <h6 class="col-sm-12" style="font-family: arial; font-weight: lighter;font-size: 14px;text-align: center;width: 104%; left:-2.05%;margin-bottom: -0.5%;margin-top: -2%; "><%=resultSet.getString("date")%></h6>
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
                                            <h6 style=" width: 100%;text-align: center;color:white;font-family: arial; font-size: 16px; font-weight:lighter"><%=resultSet.getString("time")%></h6>
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
                <div class="col-md-4 sidebar" style="padding-right: 0 ">
                    <div class="threadbox" >
                        <h1 style="font-family:arial;font-weight:bold;font-size: 20px">
                            John Doe
                        </h1>
                    </div>
                    <div style="border-bottom:1px solid #ebebe4;border-left:1px solid #ebebe4;border-right:1px solid #ebebe4;">
                        <div class="teambox">
                            <h1 style="font-family: arial;font-size: 19px;text-align: center; vertical-align: middle; line-height: 10px; font-weight: bold">Black Mambas</h1>
                        </div>
                        <div>
                            <h5 style="margin-left:5%;font-family: arial; font-weight: bold;font-size: 15px">Favorite Team</h5>


                            <img style="margin-top:-2%; margin-left: 33.25%" width="37%" height="37%" src="img/OrlandoPride.png"/>


                        </div>

                        <div class="ranking">
                            <h5 style="margin-left:5%;font-family: arial; font-weight: bold;font-size: 15px;margin-top: 3% ">Points/Rankings </h5>
                            <table style="width:90%;margin-left:5%; background-color: #f9f5f5; border: 1px solid #ebebe4">
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white; font-weight: lighter '>Overall Points:</td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px ">1,254</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px;padding-left: 5px; padding:5px;border-bottom:1px solid white; font-weight: lighter '>Overall Rank:</td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px ">320,154</td>
                                </tr>
                                <tr>
                                    <td style='font-family: arial; font-size: 14px; padding:5px;border-bottom:1px solid white; font-weight: lighter'>Total Players:</td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px ">254,999</td>
                                </tr>
                                <td style='font-family: arial; font-size: 14px; padding:5px;border-bottom:1px solid white; font-weight: lighter'>Gameweek Points:</td>
                                <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white; padding: 5px ">250</td>
                                </tr>
                            </table>

                        </div>
                        <div style="margin-left:5%;width:100%;margin-top:1% ">
                            <a href="#" style="font-size:16px">View Gameweek history
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div class='cleague'>
                            <h5 style="margin-left:5%;width:100%; margin-top: 20px;font-family: arial; font-weight: bold;font-size: 15px; ">Classic Leagues</h5>
                            <table style="width:90%;margin-left:5%" >
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow" ><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331; margin-right: -5px"></i></td>
                                    <td class="tb-rank" style="font-family: arial; font-size: 14px; padding-left:5px;font-weight: lighter">10</td>
                                    <td class="tb-name" style="font-family: arial; font-weight: lighter; font-size:14px; text-align: left; color:#db1b1b">Heroes</td>
                                </tr>
                            </table>
                        </div>
                        <div class='gleague'>
                            <h5 style="margin-left:5%;font-family: arial; font-weight: bold;font-size: 15px;margin-top: 20px; ">Global Leagues</h5>
                            <table style="width:90%;margin-left:5%">
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow"><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank" style="font-family: arial; font-size: 14px;padding-left: 5px;font-weight: lighter">52,661</td>
                                    <td class="tb-name" style="font-family: arial; font-weight: lighter ;text-align: left ;font-size:14px; color:#db1b1b; ">Orlando Pride</td>
                                </tr>
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow" ><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank" style="font-family: arial; font-size: 14px;padding-left: 5px;font-weight: lighter">5,465</td>
                                    <td class="tb-name" style="font-family: arial; font-weight: lighter ;text-align: left ;font-size:14px; color:#db1b1b; ">Greece</td>
                                </tr>
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow" ><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank" style="font-family: arial; font-size: 14px;padding-left: 5px;font-weight: lighter">5,465</td>
                                    <td class="tb-name" style="font-family: arial; font-weight: lighter ;text-align: left ;font-size:14px; color:#db1b1b; ">Open Weekend Challenge</td>
                                </tr>
                                <tr style="border-bottom: 1px solid #e8e8e8">
                                    <td class="tb-arrow" ><i class="fa fa-caret-up" style="font-size:22px;color:#0ea331"></i></td>
                                    <td class="tb-rank" style="font-family: arial; font-size: 14px;padding-left: 5px;font-weight: lighter">453,587</td>
                                    <td class="tb-rank" style="font-family: arial; font-weight: lighter ;text-align: left ;font-size:14px; color:#db1b1b">Overall</td>
                                </tr>
                            </table>
                        </div>
                        <div style="margin-left:5%;width:100%;margin-top:1% ">
                            <a href="#" style="font-size:16px">Create and join Leagues
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div class="transfers">
                            <h5 style="margin-left:5%;font-family: arial; font-weight: bold;font-size: 15px;margin-top: 20px;">Transfers and Finance </h5>
                            <table style="width:90%;margin-left:5%; background-color: #f9f5f5; border: 1px solid #ebebe4">
                                <tr>
                                    <td style="font-family: arial; font-size: 14px;padding-left: 5px; padding:5px; border-bottom:1px solid white;font-weight: lighter">Gameweek transfers:</td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white ">3</td>
                                </tr>
                                <tr>
                                    <td style="font-family: arial; font-size: 14px;padding-left: 5px; padding:5px;border-bottom:1px solid white;font-weight: lighter">Total transfers:</td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white ">41</td>
                                </tr>
                                <tr>
                                    <td style="font-family: arial; font-size: 14px; padding:5px;border-bottom:1px solid white;font-weight: lighter">Squad value</td>
                                    <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white ">$102.1</td>
                                </tr>
                                <td style="font-family: arial; font-size: 14px; padding:5px;border-bottom:1px solid white;font-weight: lighter">In the bank</td>
                                <td style="font-family: arial; text-align: left ;font-size:14px; font-weight: bold; border-bottom:1px solid white ">$1.1</td>
                                </tr>
                            </table>
                        </div>
                        <div style="margin-left:5%;width:100%;margin-top:1% ">
                            <a href="#" style="font-size:16px">View transfer history
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div class='admin' style="margin-left:5%;width:100%;margin-top:5% ">
                            <h5 style="font-family: arial; font-weight: bold;font-size: 15px">Admin</h5>
                        </div>
                        <div style="margin-left:5%;width:100%;margin-top:1%">
                            <a href="#" style="padding-left: 10px;font-size:15px">User profile
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
                        </div>
                        <div style="margin-left:5%;width:100%;margin-top:2%">
                            <a href="#" style="padding-left: 10px;font-size:15px">Team details
                                <image src="img/arrow_right.png" style="height: 10px;margin-left: 5px"/></a>
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
                        <h4 class="modal-title" style="color: white;text-align:left;font-family: arial;font-weight: bold; margin-top:-4% ">Ashlyn Harris $6.5<img src="img/nwsllogo1.png" style="width: 100px;height: 50px;margin-left:30%; padding-bottom: 1%"/></h4>

                    </div>
                    <!-- Modal content-->
                    <div class="modal-body">
                        <button type="button" class="prevbutton btncustom  " style="width: 100%;background-color: red;color:white;font-family: arial;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
                            Substitute 
                        </button> 
                        <button type="button" class="prevbutton btncustom  " style="width: 100%;background-color: graytext;color:white;font-family: arial;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
                            Make Captain 
                        </button>
                        <button type="button" class="prevbutton btncustom  " style="width: 100%;font-family: arial;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
                            Make Vice-Captain 
                        </button>
                        <button type="button" class="prevbutton btncustom  " style="width: 100%;font-family: arial;text-align: center;font-weight:lighter;margin-bottom: 2%;height: 30px; border-radius: 3pt">
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
                    $h4.css({"font-family": "arial", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                    $h4.text(responseText[0]+"-"+responseText[3]).appendTo("#somediv");

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
                   for (i =responseText.length ; i >=3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left":"-2.05%","margin-bottom": "1%","margin-top": "2.5%"});
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
                        $time.css({"width": "100%","text-align": "center","color":"white","font-family": "arial", "font-size": "16px", "font-weight":"lighter"});
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
                    $h4.css({"font-family": "arial", "font-weight": "bold", "font-size": "13px", "text-align": "center"});
                    $h4.text(responseText[0]+"-"+responseText[3]).appendTo("#somediv");

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
                   for (i =responseText.length ; i >=3; i = i - 6) {

                        var $h6 = $("<h6>");
                        $h6.attr({class: "col-sm-12"});
                        $h6.css({'text-align': "center", 'font-weight': "lighter", 'font-family': "arial", 'font-size': "14px", "width": "104%", "left":"-2.05%","margin-bottom": "1%","margin-top": "2.5%"});
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
                        $time.css({"width": "100%","text-align": "center","color":"white","font-family": "arial", "font-size": "16px", "font-weight":"lighter"});
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


        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
