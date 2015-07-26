describe("ImageView", function() {
  var mockPage;
  var view;

  beforeEach(function() {
    mockPage = document.createElement('div');
    mockPage.id = "gallery-wall";
    document.body.appendChild(mockPage);
    view = new ImageView();
  });

  afterEach(function() {
    document.body.removeChild(mockPage);
  });

  describe("displayImage", function() {
    beforeEach(function() {
      var data = {
                  "title" : "Arapawa Island Goat Kid",
                  "description" : "Arapawa Island Goat Kid - Capra aegagrus hircus.",
                  "filename" : "GoatKid.jpg",
                  };
      view.displayImage(data);
    });

    it("appends an image to the gallery-wall div", function() {
      expect($('#gallery-wall img')).toBeInDOM();
    });
  });
});