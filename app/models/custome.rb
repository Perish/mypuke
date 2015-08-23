class Custome < ActiveRecord::Base
	validates :content, presence: true

	belongs_to :company
end
