class CreateCustomes < ActiveRecord::Migration
  def change
    create_table :customes do |t|
      t.text :content
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
