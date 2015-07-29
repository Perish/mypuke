class Slider < ActiveRecord::Base
  mount_uploader :pic, ImageUploader

  SLIDER_TYPE = { "0" => "轮播图", "1" => "顶部图片" }.freeze

  # slider  => style { 0 => 轮播图 , 1 => 顶部图片}

  default_scope { order("created_at desc") }
  scope :carousel, -> { where(style: 0) }
  scope :top, -> {where(style: 1)}

  belongs_to :company

  validates :name, :style, presence: true
  validates :style, inclusion: { in: SLIDER_TYPE.keys.map(&:to_i) }

  def slider_type
  	SLIDER_TYPE[style.to_s]
  end

end
