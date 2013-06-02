class Matchship < ActiveRecord::Base
  attr_accessible :match_id, :team_id

  attr_protected :id


  belongs_to :match 
  
  # belongs_to :team 


  has_many :teams

   accepts_nested_attributes_for :teams
  # accepts_nested_attributes_for :team

end
