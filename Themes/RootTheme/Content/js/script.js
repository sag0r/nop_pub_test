$(document).ready(function () {

  //$(document).on('click', '#navbarSupportedContent .dropdown-menu', function (e) {
  //  e.stopPropagation();
  //});

  $('.shop-dropdown .nav-link')
    .hoverIntent(function () {
      $(this).tab('show');
    });

});