class Post < ActiveRecord::Base
  attr_accessible :author_id, :content, :title, :category_id, :slug

  has_many :comment
  belongs_to :author
  belongs_to :category

  def to_s
  	read_attribute :content
  end
end
