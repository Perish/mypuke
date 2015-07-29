class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :pic
      t.string :name
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
