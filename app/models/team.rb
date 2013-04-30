class Team < ActiveRecord::Base
  attr_accessible :name

  belongs_to :tournament
  belongs_to :round_robin

  validates :name, :presence => true
end
