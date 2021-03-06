class Tournament < ActiveRecord::Base
  attr_accessible :name, :status

  include Authority::Abilities


   attr_protected :id

  has_many :matches
  has_many :tournamentships
  has_many :teams, :through => :tournamentships

  accepts_nested_attributes_for :teams


 def self.getsomething(tournament, teams)

 	teamIds = Array.new 

 	teams.each do |team|

 		teamIds << team.id
 	end

 	  matches = teamIds.product(teamIds).select{|t| t[0] != t[1]}.uniq {|t| t[0].ord * t[1].ord}

 	@team = createMatches(tournament, matches)
  
  	
 end


def self.createMatches(tournament,teamList)
	
 	teamList.each do |team|
        @match = tournament.matches.build
        team1 = team[0]
        team2 = team[1]
        hometeam = Team.find(team1)
        awayteam = Team.find(team2)

        @match.name = hometeam.name + " " + "Vs" + " " + awayteam.name
        @match.hometeamid = hometeam.id
        @match.hometeamname = hometeam.name
        @match.awayteamid = awayteam.id
        @match.awayteamname = awayteam.name


        @match.teams << hometeam
        @match.teams << awayteam

        @match.save


    end

end

def self.getCompletedMatches(tournament)

  leagueTable = Array.new
  matches = tournament.matches
 
  teams = tournament.teams

  teams.each do |team|
    puts team.name
    wins = 0
    loss = 0
##to be refactored, use match.result.nil? check first to make sure match has been played
    matches.each do |match|
      if [match.hometeamid, match.awayteamid].include?  team.id

        if match.result == team.id
          wins += 1
          # puts "Winning Team" + " " + team.name
        elsif match.result.nil?

        else 
          loss += 1
        end

      end

    end


    leagueTable << {"teamname" => team.name, "wins" => wins, "losses" => loss}

  end
  

   leagueTable.each do |entry|
    puts entry
    end

    return leagueTable

end

end
