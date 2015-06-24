class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :rating
  belongs_to :question
end
