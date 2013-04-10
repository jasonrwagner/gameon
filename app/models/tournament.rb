class Tournament < ActiveRecord::Base
  attr_accessible :name, :number_of_teams

  has_many :teams

  def teams_in_play
  	@teams_in_play = Tournament.last.number_of_teams
  end 


end
