$(function() {
    var accessories_images = document.getElementById('accessories_images');

    $('#menu_but').click(function () {
        if ($('#menu_but').html() == 'меню') {
            $(this).html('<i class="fa fa-times" aria-hidden="true"></i>');
        } else {
            $(this).html('меню');
        }

        if ( !accessories_images.style.marginLeft ) {
            accessories_images.style.marginLeft = '0px';
        }
        if ( accessories_images.style.marginLeft == '0px' ) {
            $('#accessories_images').animate({
                marginLeft: '95px'
            });

        } else if ( accessories_images.style.marginLeft == '95px' ) {
            $('#accessories_images').animate({
                marginLeft: '0px'
            });
        }

        $('#side_nav').toggleClass('visible');
    }); //menu
});/**
 * Created by arsen on 30.06.2016.
 */
