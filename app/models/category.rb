class Category < ActiveRecord::Base
  has_many :images

  validates :name, presence: true
  validates :image_url, presence: true
end
