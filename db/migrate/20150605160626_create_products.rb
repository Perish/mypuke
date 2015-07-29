class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.integer :company_id
      t.string :pic

      t.timestamps null: false
    end
  end
end
