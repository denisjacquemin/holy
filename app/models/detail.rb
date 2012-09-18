class Detail < ActiveRecord::Base
  attr_accessible :field_id, :item_id
  
  belongs_to :item
  belongs_to :field
end
