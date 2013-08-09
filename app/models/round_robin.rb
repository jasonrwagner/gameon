class RoundRobin < ActiveRecord::Base
  attr_accessible :teams_in_play

  belongs_to :tournament
  has_many :teams, :through => :tournament#check out has_many_through
  
  validates :teams_in_play, :presence => true

  serialize :teams_in_play

 # def teams_in_play
 # 	@teams_in_play = RoundRobin.last
 # end

  def schedule(tournament_id)

   # @round_robin = RoundRobin.params[:id]
    #scheduled_teams.teams_in_play = params [:teams_in_play].to_a
    
    number_of_teams = Tournament.find(tournament_id).number_of_teams
    teams = Tournament.find(tournament_id).teams
    #teams = Tournament.find(tournament_id), RoundRobin.find(id)
    puts "#{number_of_teams}num_of_teams_model"
    puts "#{teams_in_play}teams_in_play_model"
    puts "#{teams}teams_model"



    row1 = (1..number_of_teams).map

    
    row2 = (number_of_teams.downto(1)).map 

    pairings = teams_in_play.permutation(2).to_a
      #puts pairings.inspect


    result = {:row1 => row1, :row2 => row2, :pairings => pairings, :teams => teams}


  end
  
 


end



