class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :validatable -enable this if we want option to sign in via device also
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :authentications
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nickname ,:avatar , :steamid 
  # attr_accessible :title, :body
end
