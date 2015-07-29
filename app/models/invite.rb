class Invite < ActiveRecord::Base

	belongs_to :company

	default_scope { order(created_at: "desc")}

	validates :name, :content, presence: true

end
