function goalkeeper(gk){
    console.log("here at goalkeeper!");
    var name=gk.split("-")[0];
    var team=gk.split("-")[1];
    document.getElementById("gkname").innerHTML=name;
    if(team=='BOS'){
        var image="breakersgk.png";
    }
    else if(team=='CHI'){
        var image="chicagogk.png";
    }
    else if(team=='HOU'){
        var image="houstongk.png";
    }
    else if(team=='NC'){
        var image="couragegk.png";
    }
    else if(team=='ORL'){
        var image="orlandogk.png";
    }
    else if(team=='POR'){
        var image="thornsgk.png";
    }
    else if(team=='SEA'){
        var image="seattlegk.png";
    }
    else if(team=='NJ'){
        var image="skybluegk.png";
    }
    else if(team=='WAS'){
        var image="spiritgk.png";
    }
    else if(team=='KC'){
        var image="kansasgk.png";
    }
    
    document.getElementById("gkimage").src="img/"+image;
}

function defence(def,defNo){
    if(defNo=='4'){
        
    }
}

