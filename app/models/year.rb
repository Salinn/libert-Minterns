class Year < ActiveRecord::Base
  validates :name, length: { is: 6 }
end
