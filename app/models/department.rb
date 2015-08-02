class Department < ActiveRecord::Base
  validates :name, length: { minimum: 4 }
end
