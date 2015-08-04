class Company < ActiveRecord::Base
  mount_uploader :pic, ImageUploader
  belongs_to :user 
  has_many :products, dependent: :destroy
  has_many :infos, dependent: :destroy
  has_one :contact, dependent: :destroy
  has_many :invites, dependent: :destroy
  has_many :awards, dependent: :destroy
  has_many :sliders, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :name, :summary, :content, :main_url,  presence: true

  def sandom_products
  	products.sample(3)
  end

  def com_top
    sliders.top.limit(1).first
  end

  def com_carousel
    sliders.carousel.limit(4)
  end
end
