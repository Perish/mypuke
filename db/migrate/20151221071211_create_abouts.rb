class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :desc
      t.integer :company_id
      t.timestamps null: false
    end
  end
end
