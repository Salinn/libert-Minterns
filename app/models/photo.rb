class Photo < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :photo_challenge
  belongs_to :winning_photo
end
