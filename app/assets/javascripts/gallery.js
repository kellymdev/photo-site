$(document).ready(function() {
  var controller = new ImageController();

  controller.requestWelcomeMessage();

  $('#gallery-wall').on('click', function(e) {
    e.preventDefault();
    controller.createImageRequest(e);
  });

  $('#gallery-wall').on('click', '.gallery-image', function(e) {
    e.stopPropagation();
    var imageLocation = $(this).children("img").attr("src");
    var imageDescription = $(this).children("img").attr("alt");
    controller.requestLightbox(imageLocation, imageDescription);
  });

  $('.portfolio-list').on('click', '.gallery-image', function(e) {
    e.stopPropagation();
    var imageLocation = $(this).children("img").attr("src");
    var imageDescription = $(this).children("img").attr("alt");
    controller.requestLightbox(imageLocation, imageDescription);
  });

  $('#overlay').on('click', function(e) {
    e.preventDefault();
    controller.requestHideLightbox();
  });
});