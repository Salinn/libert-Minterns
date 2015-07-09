class Major < ActiveRecord::Base
  searchkick
  
  has_many :users
end
