localStorage.setItem("theme", "dark");

function themeToggle() {
    
    $("html").toggleClass("dark");
    if(localStorage.getItem("theme") == "light") {
        $(".switch").html("dark_mode");
        localStorage.setItem("theme", "dark");
    } else {
        $(".switch").html("light_mode");
        localStorage.setItem("theme", "light");
    }
}

function showhide(id) {
    if (document.getElementById) {
        var divid = document.getElementById(id);
        var divs = document.getElementsByClassName("hideable");
        for (var i = 0; i < divs.length; i = i + 1) {
        $(divs[i]).fadeOut("slow");
        }
        $(divid).fadeIn("slow");
    }
    return false;
}