class ChangeProductAttributes < ActiveRecord::Migration
  def change
  	change_column :products, :weight, :string
  	change_column :products, :alco_level, :string
  end
end
