class Gallery < ActiveRecord::Base
  belongs_to :event
  belongs_to :photo_challenge
  has_many :photos

  validates :name, length: { minimum: 4 }
end
