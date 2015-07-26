function ImageModel() {
}

ImageModel.prototype.requestImage = function(successFunction, errorFunction) {
  $.ajax({
    type: 'get',
    url: 'images/random'
  }).done(function(responseJson) {
    successFunction(responseJson);
  }).fail(function() {
    errorFunction();
  });
};