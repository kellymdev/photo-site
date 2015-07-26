$(document).ready(function() {
  var controller = new ImageController();

  $('#gallery-wall').on('click', function(e) {
    e.preventDefault();
    controller.createImageRequest();
  })
});