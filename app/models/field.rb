class Field < ActiveRecord::Base
  attr_accessible :label
  
  has_many :details, :dependent => :destroy
  has_many :items, :through => :details
end
