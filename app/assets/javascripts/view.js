function ImageView() {
}

ImageView.prototype.displayWelcomeMessage = function() {
  var welcomeHtml = '<div id="welcome-message">' +
                      '<p>Click on the wall to hang a photo in the gallery.</p>' +
                      '<p>Click on a photo to view it larger.</p>' +
                    '</div>';
  $('#gallery-wall').append(welcomeHtml);
};

ImageView.prototype.displayImage = function(event, imageDetails) {
  var imageHtml = '<div class="gallery-image">' +
                    '<img src="assets/' + imageDetails.filename + '" alt="' + imageDetails.description + '">' +
                    '<p>' + imageDetails.title + '</p>' +
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
  $('#welcome-message').remove();
  $('.error-message').remove();
  var errorHtml = '<div class="error-message">' +
                    '<p>It looks like something went wrong.</p>' +
                    '<p>Please try again.</p>' +
                  '</div>';
  $('#gallery-wall').append(errorHtml);
}