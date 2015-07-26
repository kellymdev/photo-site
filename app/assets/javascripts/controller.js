function ImageController() {
  this.model = new ImageModel();
  this.view = new ImageView();
}

ImageController.prototype.createImageRequest = function(event) {
  this.model.requestImage(event, this.view.displayImage, this.view.displayError);
};