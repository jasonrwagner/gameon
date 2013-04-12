class Tournament < ActiveRecord::Base
  attr_accessible :name, :number_of_teams

  has_many :teams

  def teams_in_play
  	@teams_in_play = Tournament.last.number_of_teams
  end

  def teams_in_play_list
  	@teams_in_play_list = Tournament.find_by_id(29).teams
  end




end
