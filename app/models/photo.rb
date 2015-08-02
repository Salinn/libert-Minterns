class Photo < ActiveRecord::Base
  # Images uploader using carrierwave
  mount_uploader :picture, ImageUploader
  
  belongs_to :gallery
  belongs_to :photo_challenge
  has_one :winning_photo

  validates :picture, presence: true
  #validates :comment, length: { minimum: 4}
end
