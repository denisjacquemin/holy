class Item < ActiveRecord::Base
  attr_accessible :description, :title, :address, :price, :quote, :highlights_attributes, :field_ids, :images_attributes
  
  has_many :highlights
  accepts_nested_attributes_for :highlights, 
                                :allow_destroy => true,
                                :reject_if => proc { |attributes| attributes['content'].blank? }
                                
  has_many :details, :dependent => :destroy
  has_many :fields, :through => :details
  
  has_many :images
  accepts_nested_attributes_for :images, 
                                :allow_destroy => true,
                                :reject_if => proc { |attributes| attributes['name'].blank? }
                               
  validates_uniqueness_of :title
                                
  extend FriendlyId
  friendly_id :friendly_url, use: [:slugged, :history]
  
  def friendly_url
    "#{self.title}"
  end
end
