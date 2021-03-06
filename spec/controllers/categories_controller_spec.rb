require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let!(:category) { create(:category) }
  let!(:category_two) { create(:category) }

  describe 'get #index' do
    before { get :index }

    it 'returns http status 200' do
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      expect(response).to render_template :index
    end
  end

  describe 'get #show' do
    before { get :show, params: { id: category.id } }

    it 'returns http status 200' do
      expect(response.status).to eq(200)
    end

    it 'renders the show template' do
      expect(response).to render_template :show
    end
  end
end
