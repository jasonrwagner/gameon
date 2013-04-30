class RoundRobinController < ApplicationController

  def populate
  	 @tournament = Tournament.find(params[:tournament_id])
  	 @round_robin_teams = @tournament.teams.all
  	 @current_round_robin_teams = @round_robin_teams.shuffle

  end
end
