class AddDetailQrcodeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :detail_qrcode, :string
  end
end
