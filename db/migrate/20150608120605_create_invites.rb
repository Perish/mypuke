class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :name
      t.text :content
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
