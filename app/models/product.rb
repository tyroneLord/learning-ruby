class Product < ActiveRecord::Base
  default_scope :order => 'title'
  
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :image_url
  # validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates_numericality_of :price, :greater_than_or_equal_to => 0.01
  validates_uniqueness_of :title
  validates :image_url, :format => {
  :with => %r{\.(gif|jpg|png)$}i,
  :message => 'must be a URL for GIF, JPG or PNG image.'
  }

  
end
