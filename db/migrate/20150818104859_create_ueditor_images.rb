class CreateUeditorImages < ActiveRecord::Migration
  def change
    create_table :ueditor_images do |t|
      t.string :image
    end
  end
end
