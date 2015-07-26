function ImageView() {
}

ImageView.prototype.displayImage = function(event, imageDetails) {
  var imageHtml = '<div class="gallery-image">' +
                    '<img src="assets/' + imageDetails.filename + '"">' +
                  '</div>';

  var $image = $(imageHtml)
  $('#gallery-wall').append($image);

  $image.position({
    my: "left top",
    of: event,
    collision: "none"
  });
}

ImageView.prototype.displayError = function() {

}