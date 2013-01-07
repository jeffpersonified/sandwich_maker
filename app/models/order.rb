class Order < ActiveRecord::Base
  self.inheritance_column = nil 
  # fixes issue using 'type' as a column 
  # name; 'type' invokes single table inheritance

  attr_accessible :instructions, :name, :options, :type

  validates :name, presence: true, length: { maximum: 45 }
  validates :type, presence: true
end



