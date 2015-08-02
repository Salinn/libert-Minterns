class Question < ActiveRecord::Base
  belongs_to :user, touch: true
  belongs_to :faq, touch: true
  
  has_many :answers

  validates :title, length: {minimum: 4}
  validates :content, length: {minimum: 6}
  validates :user_id, :faq_id, presence: true
end
