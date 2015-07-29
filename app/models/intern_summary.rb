class InternSummary < ActiveRecord::Base
  belongs_to :user
  
  validates_uniqueness_of :user_id
  acts_as_taggable 
end
