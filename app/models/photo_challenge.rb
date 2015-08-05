class PhotoChallenge < ActiveRecord::Base
  has_many :photos
  belongs_to :year
  
  has_one :gallery
  has_one :winning_photo

  validates :title, length: { minimum: 4}
  validates :title, length: { minimum: 6}
  #validates :year_id, presence: true
  
  after_create :create_gallery
  after_create :create_winning_photo
  
  def create_gallery
    Gallery.create!(name: self.title, photo_challenge_id: self.id)
  end
  
  def create_winning_photo
    WinningPhoto.create!(photo_challenge_id: self.id)
  end
end
