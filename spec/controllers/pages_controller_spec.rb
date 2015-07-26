require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'get #home' do
    before do
      get :home
    end

    it "returns http status 200" do
      expect(response.status).to eq(200)
    end

    it "renders the home template" do
      expect(response).to render_template('home')
    end
  end

  describe 'get #about' do
    before do
      get :about
    end

    it "returns http status 200" do
      expect(response.status).to eq(200)
    end

    it "renders the about template" do
      expect(response).to render_template('about')
    end
  end
end