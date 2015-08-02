class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :title, length: { minimum: 4 }
  validates :content, length: { minimum: 10 }
  validates :user_id, presence: true
  validates :event_id, presence: true
end
