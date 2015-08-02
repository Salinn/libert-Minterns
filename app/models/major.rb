class Major < ActiveRecord::Base
  has_many :users

  validates :name, length: { minimum: 4 }
end
