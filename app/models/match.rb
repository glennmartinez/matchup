class Match < ActiveRecord::Base
  attr_accessible :date, :name, :hometeamid, :hometeamname , :awayteamid, :awayteamname

  attr_protected :id
  
  belongs_to :tournament

  has_many :matchships
  has_many :teams , :through => :matchships
  


  accepts_nested_attributes_for :teams
end
