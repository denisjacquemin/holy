class Image < ActiveRecord::Base
  acts_as_list
  
  attr_accessible :file, :name, :item_id
  mount_uploader :file, FileUploader
  
  belongs_to :item
  
  before_create :default_name
  
  default_scope order('position')
  
  def default_name
    self.name ||= File.basename(file.filename, '.*').titleize if file
  end
end
