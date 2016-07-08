$(function() {

    var navigation = $(".shown-menu");

    $(window).scroll(function(){

        if ( $(this).scrollTop() > 127){
            navigation.addClass("fixed");
        } else if( $(this).scrollTop() <= 124 &&  navigation.hasClass("fixed")) {
            navigation.removeClass("fixed");
        }


    }); ///scroll

    var but = $(".nav-icon");
    var menu = $(".menu-second");

    but.click(function () {
        menu.toggle('slow');
    });

});
