class College < ActiveRecord::Base
  searchkick
  
  has_many :users
end
