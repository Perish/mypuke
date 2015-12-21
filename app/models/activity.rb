class Activity < ActiveRecord::Base
  mount_uploader :pic, ImageUploader
	# status 0 不显示, 1 显示

	belongs_to :company

	validates :pic, :desc, presence: true

	def status_name
		case status
		when 0
			"不发布"
		when 1
			"发布"
		end
	end
end
