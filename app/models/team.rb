class Team < ActiveRecord::Base
  attr_accessible :name

  belongs_to :tournament

  validates :name, :presence => true
end
