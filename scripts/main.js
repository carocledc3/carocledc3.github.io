$(function() {
    $(".switch").click(function() {
        $("html").toggleClass("dark");
        if($(".switch").html() == "light_mode") {
            $(".switch").html("dark_mode")
        } else {
            $(".switch").html("light_mode")
        }
        ;
    });
});