class FieldGroup < ActiveRecord::Base
  attr_accessible :label
  
  has_many :fields
end
