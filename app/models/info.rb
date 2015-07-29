class Info < ActiveRecord::Base
  
  INFO_STYLE = { "1" => "公司动态", "2" => "行业动态" }.freeze

  default_scope { order(created_at: "desc") }

  belongs_to :company
  
  validates :name, :content, :style, presence: true
  validates :style, inclusion: { in: INFO_STYLE.keys.map(&:to_i) }

  scope :cinfos, -> { where(style: 1) }
  scope :iinfos, -> { where(style: 2) }

  def info_type 
  	INFO_STYLE[style.to_s]
  end
  class << self
	  def lastest_cinfos
	  	cinfos.limit(6)
	  end

	  def lastest_iinfos
	  	iinfos.limit(6)
	  end
  end

end
