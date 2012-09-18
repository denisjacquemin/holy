class Field < ActiveRecord::Base
  attr_accessible :label, :field_group_id
  
  has_many :details, :dependent => :destroy
  has_many :items, :through => :details
  
  belongs_to :field_group
end
