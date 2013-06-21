require 'spec_helper'


describe TeamsController do

	render_views

	before(:each) do
      @tournament = FactoryGirl.create(:tournament)
      @team = FactoryGirl.create(:team)
    end

	describe "GET 'index'" do

	  it "should route to index from tournament_id" do
	  	get :new,  :tournament_id => @tournament.id, :id => @team.id
	  	response.should be_success 
	  end

	  describe "list teams in current tournament" do

	    it "should list all teams assigned to a tournament" do
		  get :index, :tournament_id => @tournament.id
		  response.should be_success
		end

	  end
	end

	

	describe "GET 'show'" do


	  describe "show individual team" do
	  	
	  	it "should route to show from tournament_id" do
	  	  get :show,  :tournament_id => @tournament.id, :id => @team.id 
	  	  response.should be_success
	  	end
	  end

	  it "should list an individual team from current tournament_id" do
	    get :show,  :tournament_id => @tournament.id, :id => @team.id
	    response.should contain(@team.name)
	  end
	end

	describe "GET 'new'" do

	  it "should route to new from tournament_id" do
	  	get :new,  :tournament_id => @tournament.id, :id => @team.id
	  	response.should be_success 
	  end

	end
end
