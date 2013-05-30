class MatchshipsController < ApplicationController



def index

	@matchips = Matchship.all 
	
end

def new
	
	@matchship = Matchship.new

	@match = Match.find(params[:match_id])

	@match.matchships.build

end

def create
	
	@match = Match.find(params[:match_id])

	@matchship = @match.matchships.build(params[:matchship])
    params[:teams_attributes].each do |team|

    	@team = Team.find(team[:id])
    	@matchship.teams << @team
    	@team.matchships << @matchship
   	end

	redirect_to [@match, @matchship]

end


def update
	

end


end
