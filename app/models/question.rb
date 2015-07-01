class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :faq
  
  has_many :answers
end
