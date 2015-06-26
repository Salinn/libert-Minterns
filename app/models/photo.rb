class Photo < ActiveRecord::Base
  # Images uploader using carrierwave
  mount_uploader :picture, ImageUploader
  
  belongs_to :gallery
  belongs_to :photo_challenge
  belongs_to :winning_photo
end
