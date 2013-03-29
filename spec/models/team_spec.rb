require 'spec_helper'

describe Team do
  
  before(:each) do
    @attr = { 
      :name => "Example Team"
    }
  end

   it "should create a new instance given valid attributes" do
  	Team.create!(@attr)
  end
end
