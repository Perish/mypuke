class AddColumnsToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :factory, :string  # 酒厂
  	add_column :products, :weight, :integer  # 净含量
  	add_column :products, :origin, :string  # 产地
  	add_column :products, :alco_level, :integer  # 酒精度
  	add_column :products, :standard, :string  # 规格
  	add_column :products, :box, :string  # 箱规
  	add_column :products, :flavor, :string  # 香型
  	add_column :products, :material, :string  # 原料
  end
end
