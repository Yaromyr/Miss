$(function() {
    var dress_images = document.getElementById('dress_images');


    $('#menu_but').click(function () {
        if ($('#menu_but').html() == 'меню') {
            $(this).html('X');
        } else {
            $(this).html('меню');
        }

        if ( !dress_images.style.marginLeft ) {
            dress_images.style.marginLeft = '0px';
        }
        if ( dress_images.style.marginLeft == '0px' ) {
            $('#dress_images').animate({
                marginLeft: '95px'
            });
        } else if ( dress_images.style.marginLeft == '95px' ) {
            $('#dress_images').animate({
                marginLeft: '0px'
            });
        }




        $('#side_nav').toggleClass('visible');
    }); //menu
});
