class Tournamentship < ActiveRecord::Base
  attr_accessible :team_id, :tournament_id


  belongs_to :team
  belongs_to :tournament 

  
end
