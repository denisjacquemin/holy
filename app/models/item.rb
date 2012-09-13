class Item < ActiveRecord::Base
  attr_accessible :description, :title
  
  has_many :highlights
end
