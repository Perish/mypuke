class CreateProductPics < ActiveRecord::Migration
  def change
    create_table :product_pics do |t|
      t.string :image
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
