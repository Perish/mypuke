class Message < ActiveRecord::Base
	default_scope { order("created_at desc") }
	belongs_to :company
	validates :email, :name, :tel, :content, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :tel, format: { with: /\A(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}\z/ }
	
end
