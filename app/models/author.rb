class Author < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :image, :name

  has_many :post

  def to_s
  	read_attribute(:name)
  end
end
