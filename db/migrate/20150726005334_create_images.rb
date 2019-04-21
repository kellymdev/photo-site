class CreateImages < ActiveRecord::Migration[4.2]
  def change
    create_table :images do |t|
      t.string :title
      t.string :description
      t.string :filename
      t.timestamps null: false
    end
  end
end
