class TeamsController < ApplicationController

  def index
    @tournament = Tournament.find(params[:tournament_id])   
  	@teams_count = Tournament.find(params[:tournament_id]).teams_in_play
    @teams_in_play_list = Tournament.find(params[:tournament_id]).teams_in_play_list
   # @teams = Team.all
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
