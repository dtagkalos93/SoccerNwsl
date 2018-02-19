
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
                        <img class="navbar-brand topnav"  src="img/nwsl-topnav.png" style="width: auto; height: -webkit-fill-available; padding: 1px" ></img>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <!--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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
        <!-- Header -->
        <div class="intro-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="intro-message">
                            <h2 style="font-family: Century Gothic;font-size: 32px; font-weight: lighter;color: #f8f8f8; text-align: left">Creating a new account</h2>
                        </div>
                    </div>
                </div>

                <%
                    boolean errorfirst = false;
                    boolean errorLast = false;
                    boolean errorEmail = false;
                    boolean errorPWD = false;
                    boolean errorGender = false;
                    String emailStr = "";
                    String emailmargin = "";

                    if (request.getAttribute("errorfirst") != null) {
                        errorfirst = true;
                    }
                    if (request.getAttribute("errorlast") != null) {
                        errorLast = true;
                    }
                    if (request.getAttribute("erroremail") != null) {
                        emailStr = request.getAttribute("erroremail").toString();
                        errorEmail = true;
                    }
                    if (request.getAttribute("errorpwd") != null) {
                        errorPWD = true;
                    }
                    if (request.getAttribute("errorgender") != null) {
                        errorGender = true;
                    }
                %>
                <div  id="ajaxLoginResponse" style="color: red;"></div>

                <form method="POST" action="sign" class="col-md-12 col-xs-12" style="border-bottom: 1px solid #d6d5d5;border-top: 1px solid #d6d5d5" >
                    <div class="form-group"  style="padding-bottom: 5%;margin-top: 2%">
                        <%if (!errorfirst) {%>

                        <label class="col-md-4 col-xs-4" for="first" align="right" style="font-size: 17px;padding:1%; font-family: Century Gothic" >First Name
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle"> 
                            <input type="text" class="form-control" name="firstname" value="<%=request.getAttribute("firstname")%>" >


                        </div>
                        <%} else { %> 
                        <label class="col-md-4 col-xs-4" for="first" align="right" style="font-size: 17px;padding:1%; font-family: Century Gothic" >First Name
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle" style=""> 
                            <input type="text" class="form-control" name="firstname" >
                            <div class="z-fieldError">
                                <span style="font-weight: bold; font-size: 13px; font-family: Century Gothic" >This field is required.</span>
                            </div>
                        </div>

                        <%}%>
                    </div>
                    <div class="form-group"  style="padding-bottom: 5%">
                        <%if (!errorLast) {
                                emailmargin = "-33.5";%>

                        <label class="col-md-4 col-xs-4" for="last" align="right" style="font-family: Century Gothic;font-size: 17px;padding:1%" >Last Name
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle"> 

                            <input type="text" class="form-control" name="lastname" value="<%=request.getAttribute("lastname")%>" >

                        </div>
                        <%} else {
                            emailmargin = "0";%>
                        <label class="col-md-4 col-xs-4" for="last" align="right" style="font-family: Century Gothic;font-size: 17px;padding:1%; font-family: Century Gothic" >Last Name
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle" > 
                            <input type="text" class="form-control" name="lastname" >
                            <div class="z-fieldError">
                                <span style="font-weight: bold; font-size: 13px; font-family: Century Gothic">This field is required.</span>
                            </div>
                        </div>
                        <%}%>
                    </div>
                    <div class="form-group"  style="padding-bottom: 5%;">
                        <%if (!errorEmail) {%>
                        <label class="col-md-4 col-xs-4" for="email" align="right" style="font-size: 17px;padding:1%; font-family: Century Gothic" >Email  Address
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle"> 
                            <input type="email" class="form-control" name="email" >
                        </div>
                        <%} else { %>
                        <label class="col-md-4 col-xs-4" for="email" align="right" style="font-size: 17px;padding: 1%; font-family: Century Gothic   " >Email
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle" style=""> 
                            <input type="email" class="form-control" name="email" >
                            <div class="z-fieldError">
                                <%if (emailStr.equals("email")) {%>
                                <span style="font-weight: bold; font-size: 13px; font-family: Century Gothic" >This field is required.</span>
                                <%} else if (emailStr.equals("exist")) {%>
                                <span style="font-weight: bold; font-size: 13px; font-family: Century Gothic" >This email already exist.</span><%
                                    }%>
                            </div>
                        </div>  
                        <%}%>
                    </div>
                    <div class="form-group" style=" padding-bottom: 5%">
                        <%if (!errorPWD) {%>
                        <label class="col-md-4 col-xs-4" for="pwd" align="right" style="font-size: 17px;padding:1%; font-family: Century Gothic" >Password
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle" > 
                            <input type="password" class="form-control" name="pwd" >
                        </div>
                        <%} else {%>
                        <label class="col-md-4 col-xs-4" for="email" align="right" style="font-size: 17px;padding:1%; font-family: Century Gothic" >Password
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="middle" style="padding-bottom: 1%"> 
                            <input type="password" class="form-control" name="pwd" >
                            <div class="z-fieldError">
                                <span style="font-weight: bold; font-size: 13px; font-family: Century Gothic" >This field is required.</span>

                            </div>
                        </div>
                        <%}%>
                    </div>
                    <div  style="padding-bottom: 6.25%">
                        <%if (!errorGender) {%>
                        <label class="col-md-4 col-xs-4" for="gender" align="right" style="font-size: 17px;padding:1%;font-family: Century Gothic"> Gender
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="left" style="margin-left: 5%;padding-top: 1%;font-family: Century Gothic;font-weight: lighter"> 
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px"> Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                        </div>
                        <%} else {%>
                        <label class="col-md-4 col-xs-4" for="gender" align="right" style="font-size: 17px;padding:1%; font-family: Century Gothic"> Gender
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="left" style="margin-left: 5%;padding-top: 1%;padding-bottom: 1%;font-family: Century Gothic;font-weight: lighter"> 
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px; background-color: #ce3535;"> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px"> Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                            <div class="z-fieldError">
                                <span class="z-fieldError_wrapper" style="font-weight: bold; font-size: 13px; font-family: Century Gothic" >This field is required.</span>
                            </div>
                        </div>
                        <%}%>
                    </div>
                    <div   style="padding-bottom:5%">
                        <label class="col-md-4 col-xs-4" align="right" style="font-size: 17px;padding:1%; font-family: Century Gothic"> Select your country
                            <span style="font-size: 17px"> *</span>
                        </label>
                        <div class="col-md-6 col-xs-6" align="left" style="font-size: 15px;font-weight: lighter; margin-left: 6%;padding-top: 0.5%; font-family: Century Gothic"> 
                            <input type="text" id="country" name="country" style="width: 172%;;border-radius: 1px; border-bottom:1px solid #1d3260;border-top: none;border-right: none;border-left: none">

                            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                            <script src="js/countrySelect.min.js"></script>
                            <script>
                                $("#country").countrySelect();
                            </script>
                        </div>
                    </div>
                    <div class="col-md-12 col-xs-12" align="center" style="margin-top:2.5%;margin-bottom: 3%">
                        <button type="submit" value="Next" class="nextbuttonaccount btncustom" style="font-family: Century Gothic;font-weight: lighter;color: white; font-size: 15px;text-align: center; width: 19%; padding: 0.7%"> Next
                            <i class="glyphicon glyphicon-arrow-right" style="float:right; margin-top: 0.5%;"></i>
                        </button>
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

