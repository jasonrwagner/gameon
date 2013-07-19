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
    teams = Tournament.find(tournament_id), RoundRobin.find(id)
    puts "#{number_of_teams}help"
    puts "#{teams}"



    row1 = (1..number_of_teams).map do |home_team|
        puts home_team

    end

    row2 = (1..number_of_teams).map do |away_team|
        puts away_team
    end 

    a = teams_in_play.permutation(2).to_a
      puts a.inspect
    
  end
  
 


end



