class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :rating
  belongs_to :question

  after_create :create_rating

  def create_rating
    rating = Rating.create!(faq_id: self.question.faq.id)
    self.update(rating_id: rating.id)
  end
end
