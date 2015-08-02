class FaqSection < ActiveRecord::Base
  has_many :faqs

  validates :name, length: { minimum: 4 }
end
