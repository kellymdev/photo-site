function ImageView() {
}

ImageView.prototype.displayImage = function(imageDetails) {
  console.log(imageDetails.title);
  console.log(imageDetails.description);
  console.log(imageDetails.filename);
  var imageHtml = '<div class="gallery-image">' +
                    '<img src="assets/' + imageDetails.filename + '"">' +
                  '</div>';

  $('#gallery-wall').append(imageHtml);
}

ImageView.prototype.displayError = function() {

}