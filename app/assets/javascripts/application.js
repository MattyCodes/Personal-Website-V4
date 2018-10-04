//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $(document).on('click', '#scroll-from', function() {
    $('html, body').animate({
      scrollTop: $('#scroll-to').offset().top
    }, 700);
  });
});
