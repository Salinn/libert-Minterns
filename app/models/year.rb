class Year < ActiveRecord::Base
  validates :name, length: { is: 4 }
end
