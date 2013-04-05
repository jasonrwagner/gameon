require 'spec_helper'

describe Team do
  
  before(:each) do
    @attr = { 
      :name => "Example Team"
    }
  end


  it "should create a new team" do
  	Team.create!(@attr)
  end

  it "has a name" do
  	team = Team.name
  end

end
