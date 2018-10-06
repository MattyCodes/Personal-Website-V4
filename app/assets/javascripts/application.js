//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  // Scroll to a different point in the page when the element is clicked.
  $(document).on('click', '#scroll-from', function() {
    $('html, body').animate({
      scrollTop: $('#scroll-to').offset().top
    }, 700);
  });

  // Prevent Google recaptcha scripts from being loaded multiple times.
  $(document).on('turbolinks:before-cache', function() {
    if ( $('#google-recaptcha') && $('#google-recaptcha').length > 0 ) $('#google-recaptcha').empty();
  });
});
