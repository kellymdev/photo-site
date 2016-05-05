describe("ImageView", function() {
  var mockPage;
  var view;

  beforeEach(function() {
    mockPage = document.createElement('div');
    document.body.appendChild(mockPage);
    view = new ImageView();
  });

  afterEach(function() {
    document.body.removeChild(mockPage);
  });

  describe("createLightbox", function() {
    beforeEach(function() {
      view.createLightbox();
    });

    it("creates an overlay div", function() {
      expect($('#overlay')).toBeInDOM();
    });

    it("includes a click to close message", function() {
      expect($('#overlay')).toContainText('Click anywhere to close');
    });

    it("includes an image tag", function() {
      expect($('#overlay')).toContainHtml('<img>');
    });

    it("includes a caption", function() {
      expect($('#overlay')).toContainHtml('<p class="caption"></p>');
    });
  });

  describe("displayLightbox", function() {
    beforeEach(function() {
      view.createLightbox();
      var filename = "assets/GoatKid.jpg";
      var description = "Arapawa Island Goat Kid - Capra aegagrus hircus.";
      view.displayLightbox(filename, description);
    });

    it("displays the lightbox", function() {
      expect($('#overlay')).toBeVisible();
    });

    it("displays the specified image in the lightbox", function() {
      expect($('#overlay')).toContainHtml('src="assets/GoatKid.jpg"');
    });

    it("displays the description in the lightbox", function() {
      expect($('#overlay')).toContainHtml('<p class="caption">Arapawa Island Goat Kid - Capra aegagrus hircus.</p>')
    });

    afterEach(function() {
      $('#overlay').hide();
    });
  });

  describe("hideLightbox", function() {
    beforeEach(function() {
      view.createLightbox();
      var filename = "assets/GoatKid.jpg";
      var description = "Arapawa Island Goat Kid - Capra aegagrus hircus.";
      view.displayLightbox(filename, description);
      view.hideLightbox();
    });

    it("hides the lightbox", function() {
      expect($('#overlay')).not.toBeVisible();
    });
  });
});