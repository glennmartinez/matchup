class Team < ActiveRecord::Base
  attr_accessible :description, :name, :status

  attr_protected :id


  has_many :matchships
  has_many :matches, :through => :matchships
  

end
