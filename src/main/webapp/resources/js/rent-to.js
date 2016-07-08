/**
 * Created by arsen on 08.07.2016.
 */
$('.dress-rent__text').css({
    fontFamily: 'Arial Unicode MS'
});
$('.dress-rent__edit-text-1').val($('.dress-rent__text-1').text());
$('.dress-rent__edit-text-2').val($('.dress-rent__text-2').text());



$('.dress-rent-edit-1').click(function() {

    if($('.dress-rent-edit-1').text() == 'Редагувати') {
        $(this).text('Зберегти')
    } else {
        $(this).text('Редагувати')
    }

    $('.dress-rent__text-1').text($('.dress-rent__edit-text-1').val());
    $('.dress-rent__text-1').css({
        fontFamily: 'Arial Unicode MS'
    });
    $('.dress-rent__edit-text-1').toggle();

    $('.dress-rent__text-1').toggle();
});

$('.dress-rent-edit-2').click(function() {

    if($('.dress-rent-edit-2').text() == 'Редагувати') {
        $(this).text('Зберегти')
    } else {
        $(this).text('Редагувати')
    }

    $('.dress-rent__text-2').text($('.dress-rent__edit-text-2').val());
    $('.dress-rent__text-2').css({
        fontFamily: 'Arial Unicode MS'
    });
    $('.dress-rent__edit-text-2').toggle();

    $('.dress-rent__text-2').toggle();
});
