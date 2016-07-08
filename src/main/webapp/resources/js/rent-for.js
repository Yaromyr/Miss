/**
 * Created by arsen on 08.07.2016.
 */
$('.dress-rent__text').css({
    fontFamily: 'Arial Unicode MS'
});
$('.dress-rent__edit-text').val($('.dress-rent__text').text());



$('.dress-rent-edit').click(function() {

    if($('.dress-rent-edit').text() == 'Редагувати') {
        $(this).text('Зберегти')
    } else {
        $(this).text('Редагувати')
    }

    $('.dress-rent__text').text($('.dress-rent__edit-text').val());
    $('.dress-rent__text').css({
        fontFamily: 'Arial Unicode MS'
    });
    $('.dress-rent__edit-text').toggle();

    $('.dress-rent__text').toggle();
});
