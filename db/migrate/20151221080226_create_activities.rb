class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :company_id
      t.text :desc
      t.string :pic
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
