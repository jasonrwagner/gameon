class RoundRobin < ActiveRecord::Base
  attr_accessible :teams_in_play

  belongs_to :tournament
  has_many :teams, :through => :tournament#check out has_many_through

  validates :teams_in_play, :presence => true

  serialize :teams_in_play

 # def teams_in_play
 # 	@teams_in_play = RoundRobin.last
 # end

  
end
