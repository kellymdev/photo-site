class Image < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
  validates :filename, presence: true

  scope :landscapes, -> { where(category: Category.find_by(name: 'Landscapes')) }
end
