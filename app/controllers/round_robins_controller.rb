class RoundRobinsController < ApplicationController

  before_filter :populate

  
  def populate
     @tournament = Tournament.find(params[:tournament_id])
     @round_robin_teams = @tournament.teams.all
     @current_round_robin_teams = @round_robin_teams.shuffle

  end  



  def index
  	 #@tournament = Tournament.find(params[:tournament_id])
  	 #@round_robin_teams = @tournament.teams.all
  	 #@current_round_robin_teams = @round_robin_teams.shuffle


  end

  def new
    @tournament = Tournament.find(params[:tournament_id])
    @round_robin_teams = @tournament.teams.all
    @round_robin = RoundRobin.new
  end

  def show
    #@tournament = Tournament.find(params[:tournament_id])    
    #@round_robin = RoundRobin.find(params[:id])
    #@current_round_robin_teams =  @current_round_robin_teams
    #@round_robin_teams = @round_robin.teams.all

  end


  def create
    @tournament = Tournament.find(params[:tournament_id])
    #populate
    @round_robin = RoundRobin.new(params[:round_robin])
    @round_robin.teams_in_play = @current_round_robin_teams
  
      if @round_robin.save
         #@current_round_robin_teams.save
        flash[:success] = "Here it is"
        redirect_to tournament_round_robin_path(@tournament, @round_robin)
      else
        render :new
      end
  end

end
