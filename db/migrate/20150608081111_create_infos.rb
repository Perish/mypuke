class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.text :content
      t.integer :company_id
      t.integer :style

      t.timestamps null: false
    end
  end
end
