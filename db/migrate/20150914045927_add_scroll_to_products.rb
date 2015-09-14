class AddScrollToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :scroll, :integer, default: 0
  	add_column :products, :num, :integer, default: 0
  end
end
