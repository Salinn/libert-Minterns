class Faq < ActiveRecord::Base
  has_one :ratings
  has_one :questions
  has_many :users
  
  belongs_to :faq_section
  
  accepts_nested_attributes_for :questions
end
