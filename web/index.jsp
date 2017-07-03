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
        <link href="css/index.css" rel="stylesheet">
        <link rel="stylesheet" href="css/countrySelect.css">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <style>
            .ui-front{z-index:0 !important; } 
            .ui-selectmenu-open {
                z-index:9999 !important;
                width: 17em;
            }

            /* select with custom icons */
            .ui-selectmenu-menu .ui-menu.customicons .ui-menu-item-wrapper {
                padding: 0.5em 0 0.5em 5em;
            }
            .ui-selectmenu-menu .ui-menu.customicons .ui-menu-item .ui-icon {
                height: 40px;
                width: 50px;
                top: 0.1em;
            }
            .ui-selectmenu-button.ui-button {
                width: 17em;
            }
            .ui-icon.selectteam {
                background: none;
            }
            .ui-icon.boston {
                background: url("img/Boston_Breakers1.png") 0 0 no-repeat;
            }
            .ui-icon.chicago {
                background: url("img/ChicagoRedStars1.png") 0 0 no-repeat;
            }
            .ui-icon.kansas {
                background: url("img/kansasCity2.png") 0 0 no-repeat;
            }
            .ui-icon.kansas {
                background: url("img/kansasCity2.png") 0 0 no-repeat;
            }
            .ui-icon.houston {
                background: url("img/Houston_Dash2.png") 0 0 no-repeat;
            }
            .ui-icon.courage {
                background: url("img/North_Carolina_Courage1.png") 0 0 no-repeat;
            }
            .ui-icon.orlando {
                background: url("img/OrlandoPride2.png") 0 0 no-repeat;
            }
            .ui-icon.portland {
                background: url("img/Portland1.png") 0 0 no-repeat;
            }
            .ui-icon.seattle {
                background: url("img/SeattleReignFC2.png") 0 0 no-repeat;
            }
            .ui-icon.sky {
                background: url("img/Sky_Blue_FC1.png") 0 0 no-repeat;
            }
            .ui-icon.spirit {
                background: url("img/spirit.png") 0 0 no-repeat;
            }
            /* select with CSS avatar icons */
            option.avatar {
                background-repeat: no-repeat !important;
                padding-left: 20px;
            }
            .avatar .ui-icon {
                background-position: left top;
            }
        </style>

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


        <!-- Header -->
        <a name="about"></a>
        <div class="intro-header">
            <div class="container">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="intro-message">
                            <h1>Fantasy NWSL</h1>
                            <button type="button" class="btn btn-default" style="width: 172.56px;background-color: #dfdede" data-toggle="modal" data-target="#loginBtn">Login   </button>
                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#SignBtn"  >Sign Up</button>

                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container -->

        </div>
        <!-- /.intro-header -->

        <!-- Page Content -->

        <a  name="services"></a>
        <div class="content-section-a">

            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-sm-6">
                        <hr class="section-heading-spacer">
                        <div class="clearfix"></div>
                        <h2 class="section-heading">Pick your squad<br></h2>
                        <p class="lead">Select your best IX and beat the best in order to be the best.</p>
                    </div>
                    <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                        <img class="img-responsive" src="img/ipad.png" alt="">
                    </div>
                </div>

            </div>
            <!-- /.container -->

        </div>
        <!-- /.content-section-a -->

        <div class="content-section-b">

            <div class="container">

                <div class="row">
                    <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                        <hr class="section-heading-spacer">
                        <div class="clearfix"></div>
                        <h2 class="section-heading">Create and join leagues</h2>
                        <p class="lead">Join standard leagues or you create your own to compete against your friends. </p>
                    </div>
                    <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                        <img class="img-responsive" src="img/dog.png" alt="">
                    </div>
                </div>

            </div>
            <!-- /.container -->

        </div>
        <!-- /.content-section-b -->

        <div class="content-section-a">

            <div class="container">

                <div class="row">
                    <div class="col-lg-5 col-sm-6">
                        <hr class="section-heading-spacer">
                        <div class="clearfix"></div>
                        <h2 class="section-heading">Squad Restrictions</h2>
                        <p class="lead">You get a $100 million budget to create your own team with 2 additional free transfers every week.</p>
                    </div>
                    <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                        <img class="img-responsive" src="img/phones.png" alt="">
                    </div>
                </div>

            </div>
            <!-- /.container -->

        </div>
        <!-- /.content-section-a -->
        <!--
        <a  name="contact"></a>
        <div class="banner">

            <div class="container">

                <div class="row">
                    <div class="col-lg-6">
                        <h2>Connect to Start Bootstrap:</h2>
                    </div>
                    <div class="col-lg-6">
                        <ul class="list-inline banner-social-buttons">
                            <li>
                                <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                            </li>
                            <li>
                                <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                            </li>
                            <li>
                                <a href="#" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->

    <!-- Footer -->
    <!--
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">About</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services">Services</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#contact">Contact</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; Your Company 2014. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>
    -->
    <!-- Login Modal -->

    <div id="loginBtn" class="modal fade" role="dialog" >
        <div class="modal-dialog" style="width: 450px">

            <!-- Modal content-->
            <div class="modal-content" >
                <h1 align="center" style="margin-bottom: 50px">Login</h1><br>
                <div id="ajaxLoginResponse" style="color: red;"></div>

                <form>
                    <div class="form-group" style="margin-left: 20%">
                        <label for="email" >Email address:</label>
                        <input type="email" class="form-control" id="email" style="width:75%">
                    </div>
                    <div class="form-group" style="margin-left: 20%">
                        <label for="pwd" >Password:</label>
                        <input type="password" class="form-control" id="pwd" style="width:75%">
                    </div>
                    <div class="checkbox" style="margin-left: 20%">
                        <label ><input type="checkbox"> Remember me</label>
                    </div>
                    <div align="center" style="margin-bottom: 50px">
                        <button type="submit" class="btn btn-default" >Submit</button>
                    </div>
                </form>



            </div>

        </div>
    </div>

    <!-- Sign Modal -->

    <div id="SignBtn" class="modal fade" role="dialog" >
        <div class="modal-dialog" style="width: 450px">

            <!-- Modal content-->
            <div class="modal-content" >
                <h1 align="center" style="margin-bottom: 50px">Sign Up</h1><br>
                <div id="ajaxLoginResponse" style="color: red;"></div>

                <form>
                    <div class="form-group" style="margin-left: 20%">
                        <label for="email" >First Name:</label>
                        <input type="email" class="form-control" id="email" style="width:75%">
                    </div>
                    <div class="form-group" style="margin-left: 20%">
                        <label for="pwd" >Last Name:</label>
                        <input type="password" class="form-control" id="pwd" style="width:75%">
                    </div>
                    <div class="form-group" style="margin-left: 20%">
                        <label for="pwd" >Email Address:</label>
                        <input type="password" class="form-control" id="pwd" style="width:75%">
                    </div>
                    <div class="form-group" style="margin-left: 20%">
                        <label for="pwd" >Password:</label>
                        <input type="password" class="form-control" id="pwd" style="width:75%">
                    </div>
                    <div align="center" style="margin-left: 5%">
                        <label for="gender"> Gender:</label>
                        <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                        <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px"> Female
                        <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified  
                    </div>
                    <div style="margin-left: 20%;margin-top: 20px">
                        <input type="text" id="country">

                        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                        <script src="js/countrySelect.min.js"></script>
                        <script>
                            $("#country").countrySelect();
                        </script>
                    </div>
                    <div style="margin-left: 20%;margin-top: 20px;">
                        <select name="team" id="filesB" style='position:relative;z-index:100'>
                            <option style="" value="" data-class="selectteam">Select your Team </option>
                            <option class="team" value="boston" data-class="boston" >Boston Breakers</option>
                            <option class="team" value="chicago" data-class="chicago"  >Chicago Red Stars</option>
                            <option class="team" value="kansas" data-class="kansas" >FC Kansas City</option>
                            <option class="team" value="houston" data-class="houston" >Houston Dash</option>
                            <option class="team" value="courage" data-class="courage" >North Carolina Courage</option>
                            <option class="team" value="orlando" data-class="orlando"  >Orlando Pride</option>
                            <option class="team" value="portland" data-class="portland" >Portland Thorns FC</option>
                            <option class="team" value="seattle" data-class="seattle"  >Seattle Reign</option>
                            <option class="team" value="sky" data-class="sky" >Sky Blue FC</option>
                            <option class="team" value="spirit" data-class="spirit" >Washington Spirit</option>
                        </select>
                    </div>


                    <div align="center" style="margin-bottom: 50px">
                        <button type="submit" class="btn btn-default" >Submit</button>
                    </div>
            </div>
            </form>



        </div>

    </div>
</div>



<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
                            $(function () {
                                $.widget("custom.iconselectmenu", $.ui.selectmenu, {
                                    _renderItem: function (ul, item) {
                                        var li = $("<li>"),
                                                wrapper = $("<div>", {text: item.label});

                                        if (item.disabled) {
                                            li.addClass("ui-state-disabled");
                                        }

                                        $("<span>", {
                                            style: item.element.attr("data-style"),
                                            "class": "ui-icon " + item.element.attr("data-class")
                                        })
                                                .appendTo(wrapper);

                                        return li.append(wrapper).appendTo(ul);
                                    }
                                });

                                $("#filesA")
                                        .iconselectmenu()
                                        .iconselectmenu("menuWidget")
                                        .addClass("ui-menu-icons");

                                $("#filesB")
                                        .iconselectmenu()
                                        .iconselectmenu("menuWidget")
                                        .addClass("ui-menu-icons customicons");

                                $("#people")
                                        .iconselectmenu()
                                        .iconselectmenu("menuWidget")
                                        .addClass("ui-menu-icons avatar");
                            });
</script>

</body>

</html>
