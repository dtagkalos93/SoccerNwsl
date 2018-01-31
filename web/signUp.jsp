<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>NWSL Fantasy League</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/signcss.css" rel="stylesheet">
        <link rel="stylesheet" href="css/countrySelect.css">

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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" >
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="http://www.nwslsoccer.com" target="_blank">
                        <img class="navbar-brand topnav"  src="img/Logonwsl.png" style="width:119px;height:105px; padding: 0" ></img>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="http://chicagoredstars.com/"  target="_blank">
                                <img  src="img/ChicagoRedStars.png" style="width:38.9px;height:45px;margin-right:-8px" />
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
                        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
                            <a href="https://www.rsl.com/utahroyalsfc"  target="_blank">
                                <img  src="img/UtahRoyals.png" style="width:46px;height:45px;margin-right:-8px" />
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



            <!-- /.container -->

        </div>

        <div class="container" style="margin-bottom: 3%">
            <div class="row">

                <h2 class="col-md-12 col-xs-12" style="margin-bottom: 50px;text-align: -webkit-left">Creating a new account</h2><br>


                <div  id="ajaxLoginResponse" style="color: red;"></div>

                <form method="POST" action="sign" class="col-md-12 col-xs-12" style="border-bottom: 1px solid #d6d5d5;border-top: 1px solid #d6d5d5" >
                    <div class="form-group"  style="padding-bottom: 4%;margin-top: 2%">

                        <label class="col-md-4 col-xs-4" for="first" align="right" style="font-size: 17px;padding:1%" >First Name
                            <span style="font-size: 18px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle"> 

                            <input type="text" class="form-control" name="firstname" style="font-family:arial;font-size:17px;font-weight: lighter;width:75%;border-radius: 0; border-bottom:1px solid #1d3260;padding: 3.5%">
                        </div>
                    </div>
                    <div class="form-group"  style="padding-bottom: 4%">
                        <label class="col-md-4 col-xs-4" for="last" align="right" style="font-size: 17px;padding:1%" >Last Name
                            <span style="font-size: 18px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle"> 

                            <input type="text" class="form-control" name="lastname" style="font-family:arial;font-size:17px;font-weight: lighter;width:75%;border-radius: 0; border-bottom:1px solid #1d3260;padding: 3.5%">

                        </div>
                    </div>
                    <div class="form-group"  style="padding-bottom: 4%">
                        <label class="col-md-4 col-xs-4" for="emial" align="right" style="font-size: 17px;padding:1%" >Email  Address
                            <span style="font-size: 18px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle"> 
                            <input type="email" class="form-control" name="email" style="font-family:arial;font-size:17px;font-weight: lighter;width:75%;border-radius: 0; border-bottom:1px solid #1d3260;padding: 3.5%">
                        </div>
                    </div>
                    <div class="form-group" style=" padding-bottom: 4%">
                        <label class="col-md-4 col-xs-4" for="pwd" align="right" style="font-size: 17px;padding:1%" >Password
                            <span style="font-size: 18px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle" > 
                            <input type="password" class="form-control" name="pwd" style="font-family:arial;font-size:17px;font-weight: lighter;width:75%;border-radius: 0; border-bottom:1px solid #1d3260;padding: 3.5%">
                        </div>

                    </div>
                    <div  style="padding-bottom: 5.25%">
                        <label class="col-md-4 col-xs-4" for="gender" align="right" style="font-size: 17px;padding:1%"> Gender
                            <span style="font-size: 18px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="left" style="margin-left: 5%;padding-top: 1%"> 
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px"> Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                        </div>
                    </div>
                    <div   style="padding-bottom: 4%">
                        <label class="col-md-4 col-xs-4" align="right" style="font-size: 17px;padding:1%"> Select your country
                            <span style="font-size: 18px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="left" style="font-size: 15px; margin-left: 6%;padding-top: 0.5%"> 
                            <input type="text" id="country" name="country" style="width: 172%;;border-radius: 1px; border-bottom:1px solid #1d3260;border-top: none;border-right: none;border-left: none">

                            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                            <script src="js/countrySelect.min.js"></script>
                            <script>
                                $("#country").countrySelect();
                            </script>
                        </div>
                    </div>
                    <div class="col-md-12 col-xs-12" align="center" style="margin-top:2.5%;margin-bottom: 3%">

                        <button type="submit" value="Next" class="prevbutton btncustom  " style="color:white; font-size: 13px; font-weight: lighter; text-align: center; font-family:arial;width: 22%;padding:0.8%; appearance: button"> Next
                        <i class="glyphicon glyphicon-arrow-right" style="float:right; margin-top: 0.5%;"></i>
                        </button>
                    </div>
                </form>
            </div>
            
            <!-- jQuery -->
            <script src="js/jquery.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>
    </body>

</html>
