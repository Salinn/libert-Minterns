class Faq < ActiveRecord::Base
  has_many :ratings
  has_many :questions
  has_many :users
  
  belongs_to :faq_section
  
  accepts_nested_attributes_for :questions
  
  after_save :create_rating_associaton
  
  def create_rating_associaton
    Rating.create!(faq_id: self.id)
  end
end
