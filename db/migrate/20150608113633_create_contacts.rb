class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :content
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
