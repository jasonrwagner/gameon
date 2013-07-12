class RoundRobinsController < ApplicationController

  before_filter :populate, :only => [:show, :index]

  
  def populate
     @tournament = Tournament.find(params[:tournament_id])
     @round_robin_teams = @tournament.teams.all
     @current_round_robin_teams = @round_robin_teams.shuffle
     @teams_in_play = @current_round_robin_teams

  end  

  def index
  	 #@tournament = Tournament.find(params[:tournament_id])
  	 #@round_robin_teams = @tournament.teams.all
  	 #@current_round_robin_teams = @round_robin_teams.shuffle


  end

  def new
    @tournament = Tournament.find(params[:tournament_id])
    @round_robin.teams_in_play = @tournament.teams.all
    @round_robin = RoundRobin.new
  end

  def show

    @tournament = Tournament.find(params[:tournament_id])    
    @round_robin = RoundRobin.find(params[:id])
    @current_round_robin_teams =  @round_robin.teams_in_play.map {|team| Team.find(team.to_i) }
    #@round_robin_teams = @round_robin.teams.all
    @round_robin_schedule = @round_robin.schedule(@tournament.id)
    puts params[:number_of_teams]
  

  end



  def create
    puts "hello"
    puts params[:teams_in_play]
    puts params[:round_robin]
    puts params[:number_of_teams]
    @tournament = Tournament.find(params[:tournament_id])
    #populate
    @round_robin = RoundRobin.new(params[:round_robin])
    @round_robin.teams_in_play = params[:teams_in_play]
    #@round_robin = @round_robin.teams_in_play  
    @round_robin.save
    puts "Hello"
    #@current_round_robin_teams.save
  #  flash[:success] = "Here it is"
    redirect_to tournament_round_robin_path(@tournament, @round_robin)
    #  else
    #    render :new
    #  end
  #end
#  def create
#    @tournament = Tournament.find(params[:tournament_id])
#     populate
#    @round_robin = RoundRobin.new(params[:round_robin])
#    @teams_in_play = @round_robin.(params[:teams_in_play])
#    @round_robin.teams_in_play = @current_round_robin_teams
#    @teams_in_play = @current_round_robin_teams 
#    @teams_in_play = RoundRobin.new(params[:teams_in_play]) 
#      if @round_robin.save
#         @current_round_robin_teams.save
#        flash[:success] = "Here it is"
#        redirect_to tournament_round_robin_path(@tournament, @round_robin)
#      else
#        render :new
#      end
  end

end
