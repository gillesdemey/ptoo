class Author < ActiveRecord::Base
  attr_accessible :image, :name

  has_many :post

  def to_s
  	read_attribute(:name)
  end
end
