class AddCategoryIdToImage < ActiveRecord::Migration[4.2]
  def change
    add_column :images, :category_id, :integer, foreign_key: true
  end
end
