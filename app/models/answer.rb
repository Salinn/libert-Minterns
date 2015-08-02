class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :rating
  belongs_to :question

  validates :content, length: { minimum: 10 }
  validates :user_id, presence: true
  validates :question_id, presence: true

  after_create :create_rating

  def create_rating
    rating = Rating.create!()
    self.update(rating_id: rating.id)
  end
end
