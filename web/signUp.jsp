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
                        <img class="navbar-brand topnav"  src="img/nwsl.png" style="width:141.7px;height:125px; margin-top: -17px" ></img>
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

                <img src="img/banner2.png" style="visibility: hidden;" />
                
            <!-- /.container -->

        </div>

        <div class="container" style="margin-bottom: 3%">
            <div class="row">

                <h1 class="col-md-12 col-xs-12" align="center" style="margin-bottom: 50px">New Account</h1><br>
                <div  id="ajaxLoginResponse" style="color: red;"></div>

                <form class="col-md-12 col-xs-12" action="favteam.jsp">
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%">
                        <label class="col-md-3 col-xs-3" for="first" style="font-size: 20px" >First Name:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="firstname" class="form-control" id="firstname" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%">
                        <label class="col-md-3 col-xs-3" for="last" style="font-size: 20px" >Last Name:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="lastname" class="form-control" id="lastname" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%">
                        <label class="col-md-3 col-xs-3" for="email" style="font-size: 20px" >Email Address:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="email" class="form-control" id="email" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%">
                        <label class="col-md-3 col-xs-3" for="pwd" style="font-size: 20px" >Password:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="password" class="form-control" id="pwd" style="width:75%">
                        </div>
                    </div>
                    <div  style="margin-left: 20%;padding-bottom: 4%">
                        <label class="col-md-3 col-xs-3" for="gender" style="font-size: 20px"> Gender:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                        <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px"> Female
                        <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                        </div>
                    </div>
                    <div   style="margin-left: 20%;">
                        <label class="col-md-3 col-xs-3"  style="font-size: 20px"> Select you country:</label>
                        <div class="col-md-6 col-xs-6"  style=""> 
                            <input type="text" id="country" >

                        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                        <script src="js/countrySelect.min.js"></script>
                        <script>
                            $("#country").countrySelect();
                        </script>
                        </div>
                    </div>
                    


                    <div class="col-md-12 col-xs-12" align="center" style="margin-bottom: 50px">
                        <button type="submit" class="btn btn-default" >Submit</button>
                    </div>
       
            </form>


                </div>
        </div>





<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>



</body>

</html>
