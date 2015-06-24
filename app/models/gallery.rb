class Gallery < ActiveRecord::Base
  belongs_to :event
  belongs_to :photo_challenge
end
