function themeToggle() {
    $("html").toggleClass("dark");
    if($(".switch").html() == "light_mode") {
        $(".switch").html("dark_mode")
    } else {
        $(".switch").html("light_mode")
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