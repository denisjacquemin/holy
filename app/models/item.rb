class Item < ActiveRecord::Base
  attr_accessible :description, :title, :highlights_attributes
  
  has_many :highlights
  accepts_nested_attributes_for :highlights, 
                                :allow_destroy => true,
                                :reject_if => proc { |attributes| attributes['content'].blank? }
end
