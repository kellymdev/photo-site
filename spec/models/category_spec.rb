require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { create(:category) }

  describe 'associations' do
    it 'has many images' do
      expect(category).to have_many(:images)
    end
  end

  describe 'validations' do
    it 'has a name' do
      expect(category).to validate_presence_of(:name)
    end

    it 'has an image url' do
      expect(category).to validate_presence_of(:image_url)
    end
  end
end
