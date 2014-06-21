class DashboardController < ApplicationController

def index
	
	@user = User.find(current_user.id)

	@teams = @user.teams

	# @matches = @teams.matches

	# @tournaments = @teams.tournaments
end


end
