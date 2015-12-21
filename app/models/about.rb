class About < ActiveRecord::Base
	belongs_to :company

	validates :desc, presence: true
end
