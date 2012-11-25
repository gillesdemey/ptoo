class Post < ActiveRecord::Base
  attr_accessible :content, :admin_user_id, :title, :slug

  has_many :comment
  belongs_to :admin_user

	extend FriendlyId
	friendly_id :title, :use => :slugged

  def to_s
  	read_attribute :content
  end
end
