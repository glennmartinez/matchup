class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  include Authority::UserAbilities

  include Authority::Abilities

  attr_protected :id
  validates_uniqueness_of :user_id, :scope => [:role_id]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :validatable -enable this if we want option to sign in via device also
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :authentications
  has_many :roles 
  has_many :teamships
  has_many :teams , :through => :teamships
  accepts_nested_attributes_for :roles

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nickname ,:avatar , :steamid , :roles, :authentications, :user_id
  # attr_accessible :title, :body
end


