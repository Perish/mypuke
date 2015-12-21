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
  has_one :custome
  has_one :about
  has_many :activities

  validates :name, :summary, :content, :main_url,  presence: true

  def sandom_products
  	products.sample(3)
  end

  def activity_huodong
    activities.where(status: 1)
  end

  def com_top
    sliders.top.limit(1).first
  end

  def com_carousel
    sliders.carousel.limit(4)
  end

  def spreads
    arr = []
    acts = activity_huodong.to_a
    arr += acts if !acts.blank?
    prs = products.where(scroll: 0).to_a
    arr += prs if !prs.blank?
    arr
  end

  def product_mini_num(product)
    mn = products.map(&:num).min
    return product.id if mn == product.num
    return mn - 1
  end
end
