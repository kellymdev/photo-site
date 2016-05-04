require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe 'get #home' do
    before { get :home }

    it 'returns http status 200' do
      expect(response.status).to eq(200)
    end

    it 'renders the home template' do
      expect(response).to render_template(:home)
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
