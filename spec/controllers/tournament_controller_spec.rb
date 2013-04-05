require 'spec_helper'

describe TournamentsController do

	describe "GET 'index'" do

	  describe "list all tournaments" do

	    it "should list all tournaments" do
		  get :index
		  response.should be_success
		  assigns(:tournaments).should_not be_nil 
		end


	  end
	end

	describe "GET 'new'" do

	  it "should retrnn success" do
	  	get :new
	  	response.should be_success

	  end
	end

#	describe "POST 'create'" do
#
#	  before(:each) do
#	  	@attr = {:team_name => "Team One"}
#	  end

#	    it "should create a new tournamnet" do
#	  	  post :create, :tournament => @attr
#	  	  response.should be_success
#	    end
#	end



end
