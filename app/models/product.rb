class Product < ActiveRecord::Base
  mount_uploader :pic, ImageUploader

  	# :factory, :string  # 酒厂
  	# :weight, :integer  # 净含量
  	# :origin, :string  # 产地
  	# :alco_level, :integer  # 酒精度
  	# :standard, :string  # 规格
  	# :box, :string  # 箱规
  	# :flavor, :string  # 香型
  	# :material, :string  # 原料 :price, 价格
    # detail_qrcode 二维码旁边的描述



  default_scope { order(created_at: "desc") }

  belongs_to :company
  has_many :product_pics, dependent: :destroy

  validates :name, :content, :price, :factory, :weight, :origin, :alco_level, :standard,
  			:box, :detail_qrcode, :flavor, :material, presence: true


  
end
