require 'rails_helper'

RSpec.describe ImagesController, type: :controller do
  describe "get #random" do
    before do
      @image = create(:image)
      get :random
    end

    it "returns http status 200" do
      expect(response.status).to eq(200)
    end

    it "returns details for a random image as json" do
      expect(response.body).to eq(@image.to_json)
    end

    it "assigns the random image to @image" do
      expect(assigns(:image)).to eq(@image)
    end
  end
end