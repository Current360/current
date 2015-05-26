$('article').mouseenter( function() {
        $(this).children('span').addClass('display');
    });
$('article').mouseleave( function() {
        $(this).children('span').removeClass('display');
    });