class Matchships < ActiveRecord::Base
  attr_accessible :match_id, :team_id


  belongs_to :match
  belongs_to :team
end
