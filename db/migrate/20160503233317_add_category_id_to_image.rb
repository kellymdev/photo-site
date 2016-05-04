class AddCategoryIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :category_id, :integer, foreign_key: true
  end
end
