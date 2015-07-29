class Contact < ActiveRecord::Base
	belongs_to :company

	validates :content, presence: true
end
