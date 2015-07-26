function ImageModel() {
}

ImageModel.prototype.requestImage = function(event, successFunction, errorFunction) {
  $.ajax({
    type: 'get',
    url: 'images/random'
  }).done(function(responseJson) {
    successFunction(event, responseJson);
  }).fail(function() {
    errorFunction();
  });
};