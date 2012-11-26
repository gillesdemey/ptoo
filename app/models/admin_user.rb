class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :full_name, :email, :password, :password_confirmation, :remember_me, :twitter, :image
  # attr_accessible :title, :body


  def to_s
    read_attribute :full_name
  end
end