class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price, precision: 8, scale: 2
      t.string :color
      t.string :size
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
