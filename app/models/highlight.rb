class Highlight < ActiveRecord::Base
  attr_accessible :content, :item_id, :sort
  belongs_to :item
end
