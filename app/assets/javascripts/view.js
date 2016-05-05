function ImageView() {
  this.createLightbox();
}

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