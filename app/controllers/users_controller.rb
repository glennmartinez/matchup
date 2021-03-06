class UsersController < ApplicationController

authorize_actions_for User, :except =>  [:index, :show, :create]

def index

	@users = User.all
	
end

def show
	@user = User.find(params[:id])

end


def edit
	@user = User.find(params[:id])


end

def update
	@user = User.find(params[:id])


    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Match was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
end

end