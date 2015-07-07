class Photo < ActiveRecord::Base
  # Images uploader using carrierwave
  mount_uploader :picture, ImageUploader
  
  belongs_to :gallery
  belongs_to :photo_challenge
  has_one :winning_photo
end
