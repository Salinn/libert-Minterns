class Event < ActiveRecord::Base
  has_one :gallery
  has_many :comments
  has_many :rsvps
  
  after_create :create_gallery

  validates :name, length: { minimum: 4 }
  validates :location, length: { minimum: 4 }
  validates :cost, presence: true
  validates :description, length: { minimum: 10 }
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :end_date, presence: true
  validates :end_time, presence: true
  
  def create_gallery
    Gallery.create!(name: self.name, event_id: self.id)
  end
end
