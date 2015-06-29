class Rating < ActiveRecord::Base
  belongs_to :faq
  
  has_many :vote_trakers, dependent: :destroy
  has_many :users, through: :vote_trakers
  before_validation :set_total
  before_validation :set_up_votes
  before_validation :set_down_votes
  
  def set_total
    self.total = self.total.presence || 0
  end
  
  def set_up_votes
    self.up_votes = self.up_votes.presence || 0
  end
  
  def set_down_votes
     self.down_votes = self.down_votes.presence || 0
  end
end
