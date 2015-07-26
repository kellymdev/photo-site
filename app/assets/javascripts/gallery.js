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
    console.log(imageLocation);
    console.log(imageDescription);
  });
});