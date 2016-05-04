class Image < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
  validates :filename, presence: true
end
