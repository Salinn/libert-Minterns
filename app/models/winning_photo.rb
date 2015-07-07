class WinningPhoto < ActiveRecord::Base
  belongs_to :photo_challenge
  belongs_to :photo
end
