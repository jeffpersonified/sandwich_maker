class Order < ActiveRecord::Base
  attr_accessible :instructions, :name, :options, :type

  validates :name, presence: true, length: { maximum: 45 }
  validates :type, presence: true
end



