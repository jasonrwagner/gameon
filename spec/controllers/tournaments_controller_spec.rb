require 'spec_helper'

describe TournamentsController do
  
  describe "list my tournaments" do

	describe "GET 'index'" do

	    it "should list all tournaments" do
		  get :index
		  response.should be_success
		  assigns(:tournaments).should_not be_nil 
		end


	end
  end

  describe "add a tournament" do

	describe "GET 'new'" do

	  it "redirects to tournaments new" do

	  	get :new
	  	response.should redirect_to(tournaments_path)
	  end
	end
  end
end
