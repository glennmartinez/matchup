class Team < ActiveRecord::Base
  attr_accessible :description, :name, :status

  attr_protected :id


  has_many :matchships
  has_many :matches, :through => :matchships


  has_many :tournamentships
  has_many :tournaments, :through => :tournamentships

  has_many :teamships
  has_many :users, :through => :teamships
  

end

