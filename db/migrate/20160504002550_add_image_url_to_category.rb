class AddImageUrlToCategory < ActiveRecord::Migration[4.2]
  def change
    add_column :categories, :image_url, :string
  end
end
