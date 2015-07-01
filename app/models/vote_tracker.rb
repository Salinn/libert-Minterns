class VoteTracker < ActiveRecord::Base
  belongs_to :rating
  belongs_to :user
  validates_uniqueness_of :rating, scope: :user
end
