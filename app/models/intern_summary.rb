class InternSummary < ActiveRecord::Base
  belongs_to :user
  
  validates_uniqueness_of :user_id
  acts_as_taggable

  validates :title, length: { minimum: 4 }
  validates :content, length: { minimum: 10 }
end
