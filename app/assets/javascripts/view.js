function ImageView() {
  this.createLightbox();
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
                    '<img src="' + imageDetails.filename + '" alt="' + imageDetails.description + '">' +
                    '<p>' + imageDetails.title + '</p>' +
                  '</div>';

  var $image = $(imageHtml);
  $('#gallery-wall').append($image);

  $image.position({
    my: "left top",
    of: event,
    collision: "none"
  });

  $image.draggable();
};

ImageView.prototype.displayError = function() {
  $('#welcome-message').remove();
  $('.error-message').remove();
  var errorHtml = '<div class="error-message">' +
                    '<p>It looks like something went wrong.</p>' +
                    '<p>Please try again.</p>' +
                  '</div>';
  $('#gallery-wall').append(errorHtml);
};

ImageView.prototype.createLightbox = function() {
  var $overlay = $('<div id="overlay"></div>');
  var $close = $('<p>Click anywhere to close</p>');
  var $image = $('<img>');
  var $caption = $('<p class="caption"></p>');

  $close.css({'text-align': 'right',
              'margin-right': '20px',
              'font-size': '0.85em'});

  $overlay.append($close);
  $overlay.append($image);
  $('body').append($overlay);
  $overlay.append($caption);
};

ImageView.prototype.displayLightbox = function(filename, description) {
  $('#overlay img').attr("src", filename);
  $('#overlay').show();
  $('#overlay .caption').text(description);
};

ImageView.prototype.hideLightbox = function() {
  $('#overlay').hide();
};