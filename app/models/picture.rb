class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :imageable, polymorphic: true
  validates  :image, presence: true
 
end
