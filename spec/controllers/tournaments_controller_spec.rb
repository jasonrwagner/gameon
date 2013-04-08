require 'spec_helper'

describe TournamentsController do
  
  describe "list all tournaments" do

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
		response.should be_success
	  	#response.should redirect_to(new_tournament_path)
	  	response.should render_template('new')
	  end
	end
  end

  describe "show individual tournaments" do

    before(:each) do
      @tournament = FactoryGirl.create(:tournament)
    end

    it "shows a tournament" do
      get :show, :id => @tournament
      response.should be_success      
    end


  end
end
