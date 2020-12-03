function setMenuPosition() {
  const x = $('.top-links').height();
  const y = $('.header-main').height();
  const scrollTop = $(document).scrollTop();

  if (scrollTop > 570) {
    $('.go-to-top').show('slow');
  } else {
    $('.go-to-top').hide('slow');
  }

  if (scrollTop >= (x + y)) {
    $('.top-menu')
      .addClass('fixed-top has-border shadow-sm')
      .find('.navbar-brand').show(400);

    if (!$('.common-breadcrumb').hasClass('stick'))
      setTimeout(function () { $('.common-breadcrumb').addClass('stick') }, 500);
    if (!$('#CustomSearchForm').hasClass('stick'))
      setTimeout(function () { $('#CustomSearchForm').addClass('stick') }, 500);

  } else {
    $('.top-menu')
      .removeClass('fixed-top has-border shadow-sm')
      .find('.navbar-brand').hide();
    $('.common-breadcrumb, #CustomSearchForm').removeClass('stick')
  }
}

$(document).ready(function () {

  //
  

  // Topmenu positioning
  setMenuPosition();
  $(window).scroll(function () { setMenuPosition() });

  // MegaMenu tabs - show on hover
  $('.shop-dropdown .nav-link')
    .hoverIntent(function () {
      $('.shop-dropdown .nav-link').blur();
      $(this).tab('show');
    });

  $('.shop-dropdown .nav-link')
    .click(function (e) {
      e.preventDefault();
    });

  // Prevent closing dropdown if clicked inside mega menu
  $(".shop-dropdown").click(function (e) {
    e.stopPropagation();
  });

  //
  $('.ni-shop-dropdown').on('hidden.bs.dropdown', function () {
    $('.toggle-icon', this).removeClass('fa-chevron-up').addClass('fa-chevron-down');
  });
  $('.ni-shop-dropdown').on('shown.bs.dropdown', function () {
    $('.toggle-icon', this).removeClass('fa-chevron-down').addClass('fa-chevron-up');
  });

  //
  $('.auth-page-go-back').click(function () {
    const host = window.location.origin;
    if (document.referrer.includes(host)) {
      window.history.back();
    } else {
      window.location.assign(host);
    }
  });

  //
  $('.go-to-top button').click(function () {
    $('html, body').animate({
      scrollTop: 0
    });
  });



  /*
   * COLOR SELECTOR
   * For DEMO only
   */
  //
  $('.color-selector.th-color').click(function () {
    const old = $('.top-links')
      .attr('class')
      .split(/\s+/)
      .find(x => x.includes('bg-'));
    const newest = 'bg-' + $(this).data('val');
    //
    if (newest == old)
      return;
    //
    $('.top-links').removeClass(old)
      .addClass(newest);
  });
  $('.color-selector.p-color').click(function () {
    const selected = $(this).data('val');
    let old = $('.btn-search')
      .attr('class')
      .split(/\s+/)
      .find(x => x.includes('bg-'));
    //
    if (selected == old)
      return;
    //
    old = old.replace('bg-', '');
    $(`.bg-${old}:not(.color-selector)`).removeClass(`bg-${old}`).addClass(`bg-${selected}`);
    $(`.text-${old}:not(.color-selector)`).removeClass(`text-${old}`).addClass(`text-${selected}`);
    $(`.border-${old}:not(.color-selector)`).removeClass(`border-${old}`).addClass(`border-${selected}`);

  });

});