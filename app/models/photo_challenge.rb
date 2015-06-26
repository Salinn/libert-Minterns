class PhotoChallenge < ActiveRecord::Base
  has_many :photos
  belongs_to :year
end
