class Tournament < ActiveRecord::Base
  attr_accessible :name, :number_of_teams

  has_many :teams
  has_many :round_robins



  def number_of_teams_in_play
  	@number_of_teams_in_play = Tournament.last.number_of_teams
  end

end
