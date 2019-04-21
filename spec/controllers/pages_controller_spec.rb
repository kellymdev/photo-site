require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe 'get #index' do
    let!(:landscapes) do
      Category.create!(
        name: 'Landscapes',
        image_url: 'test'
      )
    end
    let!(:image) do
      landscapes.images.create!(
        title: 'Sunrise',
        description: 'Glenburn Sunrise',
        filename: 'https://photographysite/KM-GlenburnSunrise.jpg'
      )
    end

    before { get :index }

    it 'returns http status 200' do
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'get #about' do
    before { get :about }

    it 'returns http status 200' do
      expect(response.status).to eq(200)
    end

    it 'renders the about template' do
      expect(response).to render_template(:about)
    end
  end

  describe 'get #contact' do
    before { get :contact }

    it 'returns http status 200' do
      expect(response.status).to eq(200)
    end

    it 'renders the contact template' do
      expect(response).to render_template(:contact)
    end
  end
end
