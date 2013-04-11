class TeamsController < ApplicationController

  def index
    @tournament = Tournament.find(params[:tournament_id])    
  	@teams = @tournament.teams
  end

  def show
    @tournament = Tournament.find(params[:tournament_id])    
  	@team = Team.find(params[:id])
  end

  def new
    @tournament = Tournament.find(params[:tournament_id])
    @team = Team.new	
  end



  def create
    @tournament = Tournament.find(params[:tournament_id])
  	@team = @tournament.teams.new(params[:team])
	  if @team.save
  	  flash[:success] = "Added Team"
  	  redirect_to tournament_teams_path
	  else
  	  render :new
	  end
  end
end
