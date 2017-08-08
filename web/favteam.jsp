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

                <img src="img/banner2.png" style="visibility: hidden;width: 25%;height: 25%" />
                
            <!-- /.container -->

        </div>

        <div class="container" style="margin-bottom: 3%">
            <div class="row">

                <h1 class="col-md-12 col-xs-12" align="center" style="margin-bottom: 50px">Favourite Team</h1><br>
                <div  id="ajaxLoginResponse" style="color: red;"></div>

                <form class="col-md-12 col-xs-12" method="POST" action="confirmation">
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none" >
                        <label class="col-md-3 col-xs-3" for="first" style="font-size: 20px" >First Name:</label>
                        <div class="col-md-9 col-xs-9"> 
                            <input type="firstname" value="<%=request.getAttribute("firstname") %>" class="form-control" name="firstname" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="last" style="font-size: 20px" >Last Name:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="lastname"  value="<%=request.getAttribute("lastname") %>" class="form-control" name="lastname" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="email" style="font-size: 20px" >Email Address:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="email" value="<%=request.getAttribute("email") %>"  class="form-control" name="email" style="width:75%">
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="pwd" style="font-size: 20px" >Password:</label>
                        <div class="col-md-9 col-xs-9"> 
                        <input type="text" value="<%=request.getAttribute("password") %>"  class="form-control" name="pwd" style="width:75%">
                        </div>
                    </div>
                    <div  style="margin-left: 20%;padding-bottom: 4%;display: none">
                        <label class="col-md-3 col-xs-3" for="gender" style="font-size: 20px"> Gender:</label>
                        <div class="col-md-9 col-xs-9"> 
                            <%String gender=request.getAttribute("gender").toString();
                                if (gender.equals("male")){%>
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px" checked> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px"> Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                            <%}else if(gender.equals("female")){ 
                            %>
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px" checked> Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px"> Unspecified 
                            <%}else if(gender.equals("other")){ 
                            %>
                            <input type="radio" name="gender" value="male" style="margin-right: 3px;margin-left: 10px"> Male
                            <input type="radio" name="gender" value="female" style="margin-right: 3px;margin-left: 10px" > Female
                            <input type="radio" name="gender" value="other" style="margin-right: 3px;margin-left: 10px" checked> Unspecified 
                            <% } %>
                        </div>
                    </div>

		<div style="margin-left: 20%;margin-top: 20px;padding-bottom: 2%;">
                        <select name="team" id="filesB" style='position:relative;z-index:100'>
                            <option style="" value="" data-class="selectteam">Select your Team </option>
                            <option name="team" value="boston" data-class="boston" >Boston Breakers</option>
                            <option name="team" value="chicago" data-class="chicago"  >Chicago Red Stars</option>
                            <option name="team" value="kansas" data-class="kansas" >FC Kansas City</option>
                            <option name="team" value="houston" data-class="houston" >Houston Dash</option>
                            <option name="team" value="courage" data-class="courage" >North Carolina Courage</option>
                            <option name="team" value="orlando" data-class="orlando"  >Orlando Pride</option>
                            <option name="team" value="portland" data-class="portland" >Portland Thorns FC</option>
                            <option name="team" value="seattle" data-class="seattle"  >Seattle Reign</option>
                            <option name="team" value="sky" data-class="sky" >Sky Blue FC</option>
                            <option name="team" value="spirit" data-class="spirit" >Washington Spirit</option>
                        </select>
                    </div>
                            <input name="country" value="<%=request.getAttribute("country")%>"  class="form-control"  style="display:none">
                            <div class="col-md-6 col-xs-6" align="right" style="margin-bottom: 50px">
                                <button type="submit" class=" prevbutton2 btncustom   " style="font-size: 13px; font-weight: lighter; text-align: center; font-family:arial;padding: 1.5%;width:34%" onclick="goBack()" >
                                    <i class="glyphicon glyphicon-arrow-left" style="float:left; margin-top: 0.5%;"></i>Back</button>
                            </div>
                            <div class="col-md-6 col-xs-6" align="left" style="margin-bottom: 50px">
                                <button type="submit" class="prevbutton btncustom" style="font-size: 13px; font-weight: lighter; text-align: center; font-family:arial;padding: 1.5%;width:34%" >
                                    <i class="glyphicon glyphicon-arrow-right" style="float:right; margin-top: 0.5%;"></i>Confirmation</button>
                            </div>
       
            </form>


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

<script>
function goBack() {
    window.history.back();
}
</script>



</body>

</html>