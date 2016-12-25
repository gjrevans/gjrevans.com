$(document).ready(function(){
    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        if (scroll >= 100) {
            $("header.nav--top").css("top", "-200px");
        } else {
            $("header.nav--top").css("top", "0px");
        }
    });
});
