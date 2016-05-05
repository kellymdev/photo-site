function ImageController() {
  this.view = new ImageView();
}

ImageController.prototype.requestLightbox = function(filename, description) {
  this.view.displayLightbox(filename, description);
};

ImageController.prototype.requestHideLightbox = function() {
  this.view.hideLightbox();
};