class PhotoChallenge < ActiveRecord::Base
  has_many :photos
  belongs_to :year
  
  has_one :gallery
  has_one :winning_photo
  
  after_create :create_gallery
  after_create :create_winning_photo
  
  def create_gallery
    Gallery.create!(name: self.title, photo_challenge_id: self.id)
  end
  
  def create_winning_photo
    WinningPhoto.create!(photo_challenge_id: self.id)
  end
end
