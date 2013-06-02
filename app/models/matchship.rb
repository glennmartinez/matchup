class Matchship < ActiveRecord::Base
  attr_accessible :match_id, :team_id

  attr_protected :id


  belongs_to :match 
  
  belongs_to :team 



end
