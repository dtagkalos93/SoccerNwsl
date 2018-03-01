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
        <link href="css/enterRoster.css" rel="stylesheet">

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
                        <img class="navbar-brand topnav"  src="img/nwsl-topnav.png" style="width: auto; height: -webkit-fill-available; padding: 1px" ></img>
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


        <!-- Header -->
        <div class="intro-header">
            <div class="container">


                <!-- Blog Entries Column -->

                <%
                    ArrayList<String> gkname = (ArrayList<String>) request.getAttribute("namegk");
                    ArrayList<String> gkteam = (ArrayList<String>) request.getAttribute("teamgk");
                    ArrayList<String> gkjersey = (ArrayList<String>) request.getAttribute("jerseygk");
                    ArrayList<String> gkprice = (ArrayList<String>) request.getAttribute("pricegk");
                    ArrayList<String> defname = (ArrayList<String>) request.getAttribute("namedef");
                    ArrayList<String> defteam = (ArrayList<String>) request.getAttribute("teamdef");
                    ArrayList<String> defjersey = (ArrayList<String>) request.getAttribute("jerseydef");
                    ArrayList<String> defprice = (ArrayList<String>) request.getAttribute("pricedef");
                    ArrayList<String> midname = (ArrayList<String>) request.getAttribute("namemid");
                    ArrayList<String> midteam = (ArrayList<String>) request.getAttribute("teammid");
                    ArrayList<String> midjersey = (ArrayList<String>) request.getAttribute("jerseymid");
                    ArrayList<String> midprice = (ArrayList<String>) request.getAttribute("pricemid");
                    ArrayList<String> fwdname = (ArrayList<String>) request.getAttribute("namefwd");
                    ArrayList<String> fwdteam = (ArrayList<String>) request.getAttribute("teamfwd");
                    ArrayList<String> fwdjersey = (ArrayList<String>) request.getAttribute("jerseyfwd");
                    ArrayList<String> fwdprice = (ArrayList<String>) request.getAttribute("pricefwd");
                    String remain = (String) request.getAttribute("remain");
                    String value = (String) request.getAttribute("value");   
                    session.setAttribute("value", value);
                %>   

                <div class="row">
                    <div class="col-lg-12">
                        <div class="intro-message">
                            <h2 style="font-family: Century Gothic;font-size: 32px;font-weight: lighter;color: #f8f8f8; text-align: left">Roster Review</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-xs-5">
                    <table class="col-md-12 col-xs-12 table-header-pl" style="margin-top: 2%">
                        <tr>
                            <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 1.5%;padding-left: 2%"> Selected Players </th>
                        </tr>  
                    </table>
                    <table class="col-md-12 col-xs-12" style="width:100%; border-bottom:1px solid #e8e8e8;border-right:1px solid #e8e8e8; border-left:1px solid #e8e8e8;">
                        <tr style="font-family:Century Gothic;background-color: #f1eded">
                            <th style="padding-top: 1%;padding-bottom: 1%"></th>
                            <th style="padding-top: 1%;padding-bottom: 1%;text-align: center;font-size: 13px ">Pos</th> 
                            <th style="padding-top: 1%;padding-bottom: 1%;padding-left:10.5%;font-size: 13px ">Player</th>
                            <th style="padding-top: 1%;padding-bottom: 1%;text-align: center;font-size: 13px ">Club</th>
                            <th style="padding-top: 1%;padding-bottom: 1%;text-align: center;font-size: 13px">Price</th>
                        </tr>
                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8;'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>GK</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2'style='padding: initial'>
                                    <img src="img/<%=gkjersey.get(0)%>" style="width:31px;height:30px" /> 
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=gkname.get(0)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=gkteam.get(0)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=gkprice.get(0)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic'> 
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center;border-bottom: 1px solid #ac0f1f; border-right: 1px solid #e8e8e8;border-right-style: inset'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%;border-bottom: 1px solid #ac0f1f'>GK</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%;border-bottom: 1px solid #ac0f1f">
                                <div class='col-sm-2' style='padding: initial'>
                                    <img src="img/<%=gkjersey.get(1)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=gkname.get(1)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%;border-bottom: 1px solid #ac0f1f"><%=gkteam.get(1)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%;border-bottom: 1px solid #ac0f1f">$<%=gkprice.get(1)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>DEF</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=defjersey.get(0)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=defname.get(0)%></span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=defteam.get(0)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=defprice.get(0)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>DEF</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=defjersey.get(1)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=defname.get(1)%></span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=defteam.get(1)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=defprice.get(1)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>DEF</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=defjersey.get(2)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=defname.get(2)%></span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=defteam.get(2)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=defprice.get(2)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>DEF</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=defjersey.get(3)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=defname.get(3)%></span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=defteam.get(3)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=defprice.get(3)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center;border-bottom: 1px solid #ac0f1f; border-right: 1px solid #e8e8e8;border-right-style: inset'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%;border-bottom: 1px solid #ac0f1f'>DEF</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%;border-bottom: 1px solid #ac0f1f">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=defjersey.get(4)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=defname.get(4)%></span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%;border-bottom: 1px solid #ac0f1f"><%=defteam.get(4)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%;border-bottom: 1px solid #ac0f1f">$<%=defprice.get(4)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>MID</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=midjersey.get(0)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=midname.get(0)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=midteam.get(0)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=midprice.get(0)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>MID</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=midjersey.get(1)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=midname.get(1)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=midteam.get(1)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=midprice.get(1)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>MID</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=midjersey.get(2)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=midname.get(2)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=midteam.get(2)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=midprice.get(2)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>MID</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=midjersey.get(3)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=midname.get(3)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=midteam.get(3)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=midprice.get(3)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%;border-bottom: 1px solid #ac0f1f; text-align: center; border-right: 1px solid #e8e8e8;border-right-style: inset'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%;border-bottom: 1px solid #ac0f1f'>MID</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%;border-bottom: 1px solid #ac0f1f">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=midjersey.get(4)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=midname.get(4)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%;border-bottom: 1px solid #ac0f1f"><%=midteam.get(4)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%;border-bottom: 1px solid #ac0f1f">$<%=midprice.get(4)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>FWD</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=fwdjersey.get(0)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=fwdname.get(0)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=fwdteam.get(0)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=fwdprice.get(0)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>FWD</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=fwdjersey.get(1)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=fwdname.get(1)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=fwdteam.get(1)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=fwdprice.get(1)%></td>
                        </tr>

                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            <td style='font-size: 14px;padding-left: 5px; padding:5px; width: 10%; text-align: center; border-right: 1px solid #e8e8e8;'><span class="glyphicon glyphicon-info-sign"></span></td>
                            <td style='font-size: 13px; text-align: center; width: 12.5%'>FWD</td>
                            <td style="font-weight: lighter ;font-size:15px;padding: 5px;width: 50%">
                                <div class='col-sm-2' style="padding: initial">
                                    <img src="img/<%=fwdjersey.get(2)%>" style="width:31px;height:30px" />
                                </div>
                                <div class='col-sm-10' style="width:83%;height: 30px;padding: inherit">
                                    <span><%=fwdname.get(2)%> </span>
                                </div>
                            </td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%"><%=fwdteam.get(2)%></td>
                            <td style="font-size: 13px; font-weight: bold;text-align: center;width: 12.5%">$<%=fwdprice.get(2)%></td>
                        </tr>
                        
                    </table>
                        <table class="col-md-12 col-xs-12" style="width:100%; margin-top:5%; border:1px solid #e8e8e8;border-top: 2px solid #ac0f1f">
                            <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                           
                            <td style='font-size: 16px; font-weight: lighter;text-align: center; width: 50%;padding: 1%;'>Roster Value</td>
                            
                            <td  style="font-size: 15px; text-align: center;width: 17%">$<%=value%> </td>
                        </tr>
                        <tr style='font-family: Century Gothic;border-bottom: 1px solid #e8e8e8'>
                            
                            <td style='font-size: 16px; font-weight: lighter;text-align: center; width: 50%;padding: 1%;'>Money Remaining</td>
                            
                            <td style="font-size: 15px; text-align: center;width: 17%">$<%=remain%></td>
                        </tr>
                        </table>
                </div>
                <%
                    ArrayList<String> bosname = (ArrayList<String>) request.getAttribute("namebos");
                    ArrayList<String> bospos = (ArrayList<String>) request.getAttribute("posbos");
                    ArrayList<String> bosjersey = (ArrayList<String>) request.getAttribute("jerseybos");
                    ArrayList<String> bosprice = (ArrayList<String>) request.getAttribute("pricebos");

                    ArrayList<String> chiname = (ArrayList<String>) request.getAttribute("namechi");
                    ArrayList<String> chipos = (ArrayList<String>) request.getAttribute("poschi");
                    ArrayList<String> chijersey = (ArrayList<String>) request.getAttribute("jerseychi");
                    ArrayList<String> chiprice = (ArrayList<String>) request.getAttribute("pricechi");

                    ArrayList<String> kcname = (ArrayList<String>) request.getAttribute("namekc");
                    ArrayList<String> kcpos = (ArrayList<String>) request.getAttribute("poskc");
                    ArrayList<String> kcjersey = (ArrayList<String>) request.getAttribute("jerseykc");
                    ArrayList<String> kcprice = (ArrayList<String>) request.getAttribute("pricekc");

                    ArrayList<String> houname = (ArrayList<String>) request.getAttribute("namehou");
                    ArrayList<String> houpos = (ArrayList<String>) request.getAttribute("poshou");
                    ArrayList<String> houjersey = (ArrayList<String>) request.getAttribute("jerseyhou");
                    ArrayList<String> houprice = (ArrayList<String>) request.getAttribute("pricehou");

                    ArrayList<String> ncname = (ArrayList<String>) request.getAttribute("namenc");
                    ArrayList<String> ncpos = (ArrayList<String>) request.getAttribute("posnc");
                    ArrayList<String> ncjersey = (ArrayList<String>) request.getAttribute("jerseync");
                    ArrayList<String> ncprice = (ArrayList<String>) request.getAttribute("pricenc");

                    ArrayList<String> orlname = (ArrayList<String>) request.getAttribute("nameorl");
                    ArrayList<String> orlpos = (ArrayList<String>) request.getAttribute("posorl");
                    ArrayList<String> orljersey = (ArrayList<String>) request.getAttribute("jerseyorl");
                    ArrayList<String> orlprice = (ArrayList<String>) request.getAttribute("priceorl");

                    ArrayList<String> porname = (ArrayList<String>) request.getAttribute("namepor");
                    ArrayList<String> porpos = (ArrayList<String>) request.getAttribute("pospor");
                    ArrayList<String> porjersey = (ArrayList<String>) request.getAttribute("jerseypor");
                    ArrayList<String> porprice = (ArrayList<String>) request.getAttribute("pricepor");

                    ArrayList<String> seaname = (ArrayList<String>) request.getAttribute("namesea");
                    ArrayList<String> seapos = (ArrayList<String>) request.getAttribute("possea");
                    ArrayList<String> seajersey = (ArrayList<String>) request.getAttribute("jerseysea");
                    ArrayList<String> seaprice = (ArrayList<String>) request.getAttribute("pricesea");

                    ArrayList<String> njname = (ArrayList<String>) request.getAttribute("namenj");
                    ArrayList<String> njpos = (ArrayList<String>) request.getAttribute("posnj");
                    ArrayList<String> njjersey = (ArrayList<String>) request.getAttribute("jerseynj");
                    ArrayList<String> njprice = (ArrayList<String>) request.getAttribute("pricenj");

                    ArrayList<String> wasname = (ArrayList<String>) request.getAttribute("namewas");
                    ArrayList<String> waspos = (ArrayList<String>) request.getAttribute("poswas");
                    ArrayList<String> wasjersey = (ArrayList<String>) request.getAttribute("jerseywas");
                    ArrayList<String> wasprice = (ArrayList<String>) request.getAttribute("pricewas");
                %>
                <div class="col-md-5 col-xs-5">
                    <table class="col-md-12 col-xs-12 table-header-pl" style="margin-top: 2%;margin-bottom:1%">
                        <tr>
                            <th style="font-family:Century Gothic; color: white; font-size: 15px; padding: 1.5%;padding-left: 2%"> Selected Players by Team </th>
                        </tr>  
                    </table>                    
                    <div  class="col-md-12 col-xs-12 border-rule">
                        <a class="cola2 collapsed col-md-12 col-xs-12 rules" data-toggle="collapse" href="#boston" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/Boston_Breakers1.png" style="width:42px;height:25px" /></span>Boston Breakers (<%=bosname.size()%>/15)
                        </a>
                        <div id="boston" class="panel-collapse collapse">
                            <%
                                if (bosname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < bosname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=bosjersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=bosname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=bospos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=bosprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#chi" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/ChicagoRedStars1.png" style="width:42px;height:25px" /></span>Chicago Red Stars (<%=chiname.size()%>/15)
                        </a>
                        <div id="chi" class="panel-collapse collapse">
                            <%
                                if (chiname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < chiname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=chijersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=chiname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=chipos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=chiprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#kc" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/kansasCity2.png" style="width:42px;height:25px" /></span>FC Kansas City (<%=kcname.size()%>/15)
                        </a>
                        <div id="kc" class="panel-collapse collapse">
                            <%
                                if (kcname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < kcname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=kcjersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=kcname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=kcpos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=kcprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#hou" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/Houston_Dash2.png" style="width:42px;height:25px" /></span>Houston Dash (<%=houname.size()%>/15)
                        </a>
                        <div id="hou" class="panel-collapse collapse">
                            <%
                                if (houname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < houname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=houjersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=houname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=houpos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=houprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#nc" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/North_Carolina_Courage1.png" style="width:42px;height:25px" /></span>North Carolina Courage (<%=ncname.size()%>/15)
                        </a>
                        <div id="nc" class="panel-collapse collapse">
                            <%
                                if (ncname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < ncname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=ncjersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=ncname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=ncpos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=ncprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#orl" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/OrlandoPride2.png" style="width:42px;height:25px" /></span>Orlando Pride (<%=orlname.size()%>/15)
                        </a>
                        <div id="orl" class="panel-collapse collapse">
                            <%
                                if (orlname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < orlname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=orljersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=orlname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=orlpos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=orlprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#por" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/Portland1.png" style="width:42px;height:25px" /></span>Portland Thorns (<%=porname.size()%>/15)
                        </a>
                        <div id="por" class="panel-collapse collapse">
                            <%
                                if (porname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < porname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=porjersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=porname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=porpos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=porprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#sea" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/SeattleReignFC2.png" style="width:42px;height:25px" /></span>Seattle Reign FC (<%=seaname.size()%>/15)
                        </a>
                        <div id="sea" class="panel-collapse collapse">
                            <%
                                if (seaname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < seaname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=seajersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=seaname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=seapos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=seaprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#nj" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/Sky_Blue_FC1.png" style="width:42px;height:25px" /></span>Sky Blue FC (<%=njname.size()%>/15)
                        </a>
                        <div id="nj" class="panel-collapse collapse">
                            <%
                                if (njname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < njname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=njjersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=njname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=njpos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=njprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div  class="col-md-12 col-xs-12 border-rule" style="margin-top: 4%">
                        <a class="cola2 collapsed col-md-12 col-xs-12   rules " data-toggle="collapse" href="#was" style="font-family:Century Gothic;color:black " >
                            <span ><img src="img/spirit.png" style="width:42px;height:25px" /></span>Washington Spirit (<%=wasname.size()%>/15)
                        </a>
                        <div id="was" class="panel-collapse collapse">
                            <%
                                if (wasname.size() != 0) {
                            %>
                            <table class="col-md-12 col-xs-12" style="font-family:Century Gothic;width:100%;width: 100%">
                                <tr style='background-color: #242043'>
                                    <th style="font-size: 13px;; padding: 0.5%; padding-left: 12%; width: 40%;color: white">Player</th>
                                    <th style="font-size: 13px;; width: 10%;color: white;text-align: center">Pos</th>
                                    <th style="font-size: 13px;; width: 14%;color: white;text-align: center">Price</th>
                                </tr>
                                <%
                                    for (int i = 0; i < wasname.size(); i++) {
                                %>
                                <tr style=' border-bottom:1px solid #e8e8e8;' >
                                    <td style="font-size: 15px;font-weight: lighter;padding: 0.5%">
                                        <div class='col-sm-2' style="width:37px;height: 30px">
                                            <img src="img/<%=wasjersey.get(i)%>" style="width:31px;height:30px" />
                                        </div>
                                        <div class='col-sm-10' style="width:80%;padding-top: 2% ">
                                            <span style="font-size: 14px"><%=wasname.get(i)%></span>
                                        </div>
                                    </td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%"><%=waspos.get(i)%></td>
                                    <td style="font-weight:lighter ;text-align: center;font-size: 13px;padding: 0.5%">$<%=wasprice.get(i)%> </td>
                                </tr>
                                <%  }
                                %>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>

                <form class="col-md-12 col-xs-12" style="margin-top: 2%" >
                    <div class="form-group"  style="padding-bottom: 6%;margin-top: 2%">
                        <label class="col-md-4 col-xs-4" for="first"  style="font-family:Century Gothic;font-size: 17px;padding:1%;text-align: right" >Enter Team Name
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle">  
                            <input id="teamName" type="text" class="form-control" name="team" style="padding: 3.5%">
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-6" align="right" style="margin-bottom: 50px">
                        <button onClick="history.go(-1); return false;" type="back" class=" rosterprevbtn btncstm" style="font-family:Century Gothic;font-size: 15px; font-weight: lighter; text-align: center;padding: 1.6%;width:38%">
                            <i class="glyphicon glyphicon-arrow-left" style="float:left; margin-top: 0.5%;"></i>Back
                        </button>
                    </div>
                    <div class="col-md-6 col-xs-6" align="left" style="margin-bottom: 50px">
                        <a onClick="localStorage.removeItem('firstLoad');" id="confirmation" type="submit" class="rosterconfirmbtn btncstm" style="font-family:Century Gothic;font-size: 15px; font-weight: lighter; text-align: center; padding: 1.6%;width:38%">
                            <i class="glyphicon glyphicon-arrow-right" style="float:right; margin-top: 0.5%;"></i>Confirmation
                        </a>
                    </div>
                </form>
            </div>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <script>
                            function goBack() {
                                window.history.back();
                            }
        </script>
        <%                     
            String players = (String) request.getAttribute("players");

            %>
            <div style="display:none" id="playersAtt"><%=players%>
        </div>
        
        <script src="js/confirmation.js"></script>
    </body>

</html>
