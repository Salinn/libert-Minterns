class Event < ActiveRecord::Base
  has_one :gallery
  has_many :comments
  has_many :rsvps
  
  after_create :create_gallery
  
  def create_gallery
    Gallery.create!(name: self.name, event_id: self.id)
  end
end
