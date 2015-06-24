class User < ActiveRecord::Base
  belongs_to :college
  belongs_to :major
  belongs_to :department
end
