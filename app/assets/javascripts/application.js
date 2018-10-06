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
  (function(){var CFG='___grecaptcha_cfg';if(!window[CFG]){window[CFG]={};}var GR='grecaptcha';if(!window[GR]){window[GR]={};}window[GR].ready=window[GR].ready||function(f){(window[CFG]['fns']=window[CFG]['fns']||[]).push(f);};(window[CFG]['render']=window[CFG]['render']||[]).push('onload');window['__google_recaptcha_client']=true;var po=document.createElement('script');po.type='text/javascript';po.async=true;po.src='https://www.gstatic.com/recaptcha/api2/v1538375507325/recaptcha__en.js';var elem=document.querySelector('script[nonce]');var n=elem&&(elem['nonce']||elem.getAttribute('nonce'));if(n){po.setAttribute('nonce',n);}var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(po, s);})();
});
