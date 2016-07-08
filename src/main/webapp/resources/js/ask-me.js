

var left, right;

$('.ask-me-add-but-left').click(function() {
    $('.ask-me-add-block-left').toggle();

    var left = $('.ask-me-add-text-left').val();

    $('.ask-me__content').append('<div class="left-message"><span class="left-side__image"></span>' +
        '<span class="left-side__message message">' + left + '</span>' + '</div>');
});

$('.ask-me-add-left').click(function() {
    $('.ask-me-add-block-left').toggle();
});


$('.ask-me-add-but-right').click(function() {
    $('.ask-me-add-block-right').toggle();

    var right = $('.ask-me-add-text-right').val();

    $('.ask-me__content').append('<div class="right-message"><span class="right-side__image"></span>' +
        '<span class="right-side__message message">' + right + '</span>' + '</div>');
});

$('.ask-me-add-right').click(function() {
    $('.ask-me-add-block-right').toggle();
});


