class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :rating
  belongs_to :question

  after_create :create_rating

  def create_rating
    self.update(rating_id: Rating.create!(faq_id: self.question.faq.id).id)
  end
end
