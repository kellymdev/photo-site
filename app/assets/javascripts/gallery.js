$(document).ready(function() {
  var controller = new ImageController();

  $('.portfolio-category').on('click', '.portfolio-image-container__image', function(e) {
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