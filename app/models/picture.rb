class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :firearm
  validates :firearm_id, :image, :title, presence: true
 
end
