require 'spec_helper'

describe Tournament do
  
  before(:each) do
    @attr = { 
      :name => "Example Tournament"
      #:number_of_teams => "9"
    }
  end


  it "should create a new tournament" do
  	Tournament.create!(@attr)
  end

end



