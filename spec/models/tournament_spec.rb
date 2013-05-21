require 'spec_helper'

describe Tournament do
  
  before(:each) do
    @attr = { 
      :name => "Example Tournament",
      :number_of_teams => "9"
    }
  end


  it "should create a new tournament" do
  	Tournament.create!(@attr)
  end

  it "has a number_of_teams" do
  	number_of_teams = Tournament.new(@attr.merge(:number_of_teams => "9"))
  	number_of_teams.should be_valid
  end




end



