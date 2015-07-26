class Image < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :filename, presence: true
end
