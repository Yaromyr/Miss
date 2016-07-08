/**
 * Created by arsen on 30.06.2016.
 */
$(function() {
    var shirts_images = document.getElementById('shirts_images');


    $('#menu_but').click(function () {
        if ($('#menu_but').html() == 'меню') {
            $(this).html('X');
        } else {
            $(this).html('меню');
        }

        if ( !shirts_images.style.marginLeft ) {
            shirts_images.style.marginLeft = '0px';
        }
        if ( shirts_images.style.marginLeft == '0px' ) {
            $('#shirts_images').animate({
                marginLeft: '95px'
            });
        } else if ( shirts_images.style.marginLeft == '95px' ) {
            $('#shirts_images').animate({
                marginLeft: '0px'
            });
        }


        $('#side_nav').toggleClass('visible');
    }); //menu
});
