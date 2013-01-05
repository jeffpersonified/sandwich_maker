class Sandwich < ActiveRecord::Base
  attr_accessible :type, :user_id
  belongs_to :user
end
