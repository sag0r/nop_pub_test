$(document).ready(function () {
  setNavbarPostion();
  $('.menuShopen').liShopen();

  $(window).scroll(setNavbarPostion);
  $(window).resize(setNavbarPostion);

});

function setNavbarPostion() {

  if ($(window).width() > 992) {

    if ($(window).scrollTop() > 120) {
      $('.header-lower nav').addClass('shadow-sm');
      $('.navbar-brand-condt, .nav-link-condt').show();
      //$('.navbar-nav.mr-auto').addClass('pl-4');
      //$('.mega-menu-dropdown').removeClass('ml-3');
    } else {
      $('.header-lower nav').removeClass('shadow-sm');
      $('.navbar-brand-condt, .nav-link-condt').hide();
      //$('.navbar-nav.mr-auto').removeClass('pl-4');
      //$('.mega-menu-dropdown').addClass('ml-3');
    }

  } else {

    if (!$('.header-lower nav').hasClass('shadow-sm')) {
      $('.header-lower nav').addClass('shadow-sm');
    }

    if (!$('.navbar-brand-condt, .nav-link-condt').is(':visible')) {
      $('.navbar-brand-condt, .nav-link-condt').show();
    }

    //if (!$('.navbar-nav.mr-auto').hasClass('pl-4')) {
    //  $('.navbar-nav.mr-auto').addClass('pl-4');
    //}

  }

  
  
}