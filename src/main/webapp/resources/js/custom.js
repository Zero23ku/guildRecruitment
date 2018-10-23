$('a[href^="#"]').on('click', function (e) {
    e.preventDefault();

    var target = this.hash;
    var $target = $(target);

    $('html, body').animate({
        'scrollTop': $target.offset().top
    }, 1000, 'swing');
});

$(function(){
    $("#postular").on('submit',function(e){
        e.preventDefault();
        var pjName = e.target.elements[0].value;

        $.ajax({
            type: 'POST',
            url: '/sendApply',
            data: {name: pjName},
            dataType: 'json',
            success: function (data){
                console.log("oie zii");
                console.log(data);
            },
            error: function (data){
                console.log("oie no");
                console.log(data);
            }
        });
    });


});