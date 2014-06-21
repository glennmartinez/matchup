class TournamentsController < ApplicationController
  # GET /tournaments
  # GET /tournaments.json
  def index
    @tournaments = Tournament.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tournaments }
    end
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    @tournament = Tournament.find(params[:id])

    @teams = @tournament.teams 
    @matches = @tournament.matches

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tournament }
    end
  end

  # GET /tournaments/new
  # GET /tournaments/new.json
  def new
    @tournament = Tournament.new
    # @tournament.teams.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tournament }
    end
  end

  # GET /tournaments/1/edit
  def edit
    @tournament = Tournament.find(params[:id])
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    @tournament = Tournament.new(params[:tournament])

    respond_to do |format|
      if @tournament.save
        format.html { redirect_to @tournament, notice: 'Tournament was successfully created.' }
        format.json { render json: @tournament, status: :created, location: @tournament }
      else
        format.html { render action: "new" }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tournaments/1
  # PUT /tournaments/1.json
  def update
    @tournament = Tournament.find(params[:id])

    respond_to do |format|
      if @tournament.update_attributes(params[:tournament])
        format.html { redirect_to @tournament, notice: 'Tournament was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy

    respond_to do |format|
      format.html { redirect_to tournaments_url }
      format.json { head :no_content }
    end
  end

  def getteams

    @teams = Team.all
    @tournament = Tournament.find(params[:tournament_id])
    
  end

  def addteam
    @team = Team.find(params[:team_id])
    @tournament = Tournament.find(params[:tournament_id])
    teamname = @team.name
    duplicateTeam = @tournament.teams.where(id: params[:team_id])

    if duplicateTeam.exists?
      redirect_to @tournament, :flash => { :error => "Team not added, it already exists in the Tournament" }
    else
      @tournament.teams << @team 
      redirect_to @tournament, notice: "Team #{teamname} was added to your Tournament"

    end
    
  end

  def generateleague
    @tournament = Tournament.find(params[:tournament_id])    
    @teams = @tournament.teams

    @matches = Tournament.getsomething(@tournament, @teams)

   

  end
end