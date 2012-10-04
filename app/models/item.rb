class Item < ActiveRecord::Base
  attr_accessible :description, :title, :address, :price, :highlights_attributes, :field_ids
  
  has_many :highlights
  accepts_nested_attributes_for :highlights, 
                                :allow_destroy => true,
                                :reject_if => proc { |attributes| attributes['content'].blank? }
                                
  has_many :details, :dependent => :destroy
  has_many :fields, :through => :details
end
