class WinningPhoto < ActiveRecord::Base
  belongs_to :photo_challenge
  belongs_to :photo

  validates :photo_challenge_id, :photo_id, presence: true
end
