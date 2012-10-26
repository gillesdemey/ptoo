class Category < ActiveRecord::Base
  attr_accessible :name

  belongs_to :post

  def to_s
  	read_attribute :name
  end
end
