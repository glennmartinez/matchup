class Role < ActiveRecord::Base
  attr_accessible :name
  attr_protected :id


  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  
  scopify
   attr_accessible :title, :body, :users
end
