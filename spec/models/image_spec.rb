require 'rails_helper'

RSpec.describe Image, type: :model do
  let(:image) { create(:image) }

  describe 'associations' do
    it 'belongs to a category' do
      expect(image).to belong_to(:category)
    end
  end

  describe 'validations' do
    it 'has a title' do
      expect(image).to validate_presence_of(:title)
    end

    it 'has a description' do
      expect(image).to validate_presence_of(:description)
    end

    it 'has a filename' do
      expect(image).to validate_presence_of(:filename)
    end
  end
end
