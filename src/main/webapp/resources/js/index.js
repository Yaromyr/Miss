$(function() {
    setTimeout(function () {
        $('.leftPreloader').animate({
            left: '-100%'
        }, 1500);

        $('.rightPreloader').animate({
            right: '-100%'
        }, 1500);

        $('body').css({
            overflow: 'auto'
        });

    }, 3000);

    $(document).click(function () {
        $('.page').css({
            display: 'block'
        });

        $('.leftPreloader').animate({
            left: '-100%',
        }, 1500);

        $('.rightPreloader').animate({
            right: '-100%',
        }, 1500);

        $('body').css({
            overflow: 'auto'
        });
    });

    setTimeout(function () {
        $('.leftPreloader').css({
            display: 'none'
        });

        $('.rightPreloader').css({
            display: 'none'
        });
    }, 4000);

    $(".main-page-slider").slick({
        dots: true,
        infinite: true,
        speed: 300,
        autoplay: true,
        autoplaySpeed: 2500,
        arrows: false
    }); //slick-slider
});/**
 * Created by arsen on 04.07.2016.
 */
