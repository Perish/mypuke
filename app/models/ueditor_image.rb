class UeditorImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end