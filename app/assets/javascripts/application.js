// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .

//= require jquery3
//= require popper
//= require bootstrap-sprockets

//if (document.getElementById('change-image1')){
    $(function() {
        for (let i=0; i<5; i++) {
            $(`#change-image${i}`).click(function() {
                var src = $(this).attr("src").replace("/images/empty-star.png", "/images/star.png");
                $(this).attr("src", src);
                $('#rating_rating').val(i+1);
                for (let j=0; j<i; j++) {
                    $(`#change-image${j}`).attr("src", src);
                }
            })
        }
    });
//};