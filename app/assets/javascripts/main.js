/* -- GOOGLE ANALYTICS -- */
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-91672044-1', 'auto');
ga('send', 'pageview');

/* -- PAGE JS --*/
$(document).ready(function(){
  $(function () {
    $('[data-toggle="popover"]').popover();
  });
  // Minipulate navigation style based on position
  $(window).scroll(function(){
    var scroll = $(window).scrollTop();
    console.log(scroll);
    if (scroll >= 100) {
      $(".js-navigation").addClass("nav--scrolled");
    } else {
      $(".js-navigation").removeClass("nav--scrolled");
    }
  });

  // Show navigation on scroll
  var lastScrollTop = 0;
  $(window).scroll(function(event){
    var st = $(this).scrollTop();
    if (st > lastScrollTop){
      $(".nav--top").css("top", "-200px");
    } else {
      $(".nav--top").css("top", "0px");
    }
    lastScrollTop = st;
  });

  // Smooth Scrolling
  $(function() {
    $('a[href*="#"]:not([href="#"])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html, body').animate({
            scrollTop: target.offset().top
          }, 1000);
          return false;
        }
      }
    });
  });
});
