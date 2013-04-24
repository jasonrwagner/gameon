class TeamsController < ApplicationController

  def index
    @tournament = Tournament.find(params[:tournament_id])   
  	@teams_count = @tournament.number_of_teams_in_play
    @teams_in_play_list = @tournament.teams.all
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
