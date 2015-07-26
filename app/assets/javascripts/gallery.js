$(document).ready(function() {
  var controller = new ImageController();

  controller.requestWelcomeMessage();

  $('#gallery-wall').on('click', function(e) {
    e.preventDefault();
    controller.createImageRequest(e);
  });

  $('#gallery-wall').on('click', '.gallery-image', function(e) {
    e.stopPropagation();
  });
});