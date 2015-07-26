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

  describe("displayWelcomeMessage", function() {
    beforeEach(function() {
      view.displayWelcomeMessage();
    });

    it("appends a welcome message to the gallery-wall div", function() {
      expect($('#gallery-wall #welcome-message')).toBeInDOM();
    });

    it("displays the welcome text", function() {
      expect($('#welcome-message')).toContainText('Click on the wall to hang a photo in the gallery.');
      expect($('#welcome-message')).toContainText('Click on a photo to view it larger.');
    });
  });

  describe("displayImage", function() {
    beforeEach(function() {
      var data = {
                  "title" : "Arapawa Island Goat Kid",
                  "description" : "Arapawa Island Goat Kid - Capra aegagrus hircus.",
                  "filename" : "GoatKid.jpg",
                  };
      view.displayImage(event, data);
    });

    it("appends an image to the gallery-wall div", function() {
      expect($('#gallery-wall img')).toBeInDOM();
    });

    it("displays the specified image", function() {
      expect($('#gallery-wall .gallery-image')).toContainHtml('src="assets/GoatKid.jpg"');
    });

    it("adds the image description as the alt text", function() {
      expect($('#gallery-wall .gallery-image')).toContainHtml('alt="Arapawa Island Goat Kid - Capra aegagrus hircus."');
    });

    it("displays the title for the specified image", function() {
      expect($('.gallery-image')).toContainText('Arapawa Island Goat Kid');
    });
  });

  describe("displayError", function() {
    beforeEach(function() {
      view.displayError();
    });

    it("appends an error div to the gallery-wall div", function() {
      expect($('#gallery-wall .error-message')).toBeInDOM();
    });

    it("displays the error text", function() {
      expect($('.error-message')).toContainText('It looks like something went wrong.');
      expect($('.error-message')).toContainText('Please try again.');
    });
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