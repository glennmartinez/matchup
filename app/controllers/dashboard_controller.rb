class DashboardController < ApplicationController

def index
	
	@user = User.find(current_user.id)

	@teams = @user.teams

	# @matches = @teams.matches

	# @tournaments = @teams.tournaments
end

def landing

	if user_signed_in?
		redirect_to dashboard_index_url
	end

end


end
