function ImageController() {
  this.model = new ImageModel();
  this.view = new ImageView();
}

ImageController.prototype.createImageRequest = function() {
  this.model.requestImage(this.view.displayImage, this.view.displayError);
};