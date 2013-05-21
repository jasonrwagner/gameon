class RoundRobin < ActiveRecord::Base
  attr_accessible :teams_in_play

  belongs_to :tournament
  has_many :teams, :through => :tournament#check out has_many_through



  
end
