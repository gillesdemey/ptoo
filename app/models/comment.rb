class Comment < ActiveRecord::Base
  attr_accessible :author, :content, :post_id

  belongs_to :post

  def to_s
  	read_attribute :content
  end
end
