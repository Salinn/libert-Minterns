class Faq < ActiveRecord::Base
  belongs_to :rating
  belongs_to :question
  belongs_to :user
  belongs_to :faq_section
end
