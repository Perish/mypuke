class Product < ActiveRecord::Base
  mount_uploader :pic, ImageUploader

  default_scope { order(created_at: "desc") }

  belongs_to :company

  validates :name, :content, presence: true
  
end
