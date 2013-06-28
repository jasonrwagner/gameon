require 'spec_helper'

describe Match do

  before(:each) do
    @attr = { 
    	:team1 => "Orange",
    	:team2 => "Blue"
    }
  end


  it "has two teams" do
  	match = Match.create!
  	team1 = match.teams.create!(@attr)
  	team2 = match.teams.create!(@attr)
  	expect(match.teams).to eq([team1, team2])
  end
end
