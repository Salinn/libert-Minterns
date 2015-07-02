class PhotoChallenge < ActiveRecord::Base
  has_many :photos
  belongs_to :year
  
  has_one :winning_photo
end
