class Faq < ActiveRecord::Base
  has_one :rating
  has_one :question
  has_many :users
  
  belongs_to :faq_section, touch: true
  
  accepts_nested_attributes_for :question

  validates :faq_section_id, presence: true
  
  after_save :create_rating_associaton
  
  def create_rating_associaton
    Rating.create!(faq_id: self.id)
  end
end
