class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :summary
      t.text :content
      t.string :pic
      t.integer :user_id
      t.string :main_url

      t.timestamps null: false
    end
  end
end
