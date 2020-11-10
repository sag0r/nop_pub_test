function setMenuPosition() {
  const x = $('.top-links').height();
  const y = $('.header-main').height();
  const scrollTop = $(document).scrollTop();
  if (scrollTop >= (x + y)) {
    $('.top-menu')
      .addClass('fixed-top has-border shadow-sm')
      .find('.navbar-brand').show('slow');
  } else {
    $('.top-menu')
      .removeClass('fixed-top has-border shadow-sm')
      .find('.navbar-brand').hide();
  }
}

$(document).ready(function () {

  // Topmenu positioning
  setMenuPosition();
  $(window).scroll(function () { setMenuPosition() });

  // MegaMenu tabs - show on hover
  $('.shop-dropdown .nav-link')
    .hoverIntent(function () {
      $(this).tab('show');
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