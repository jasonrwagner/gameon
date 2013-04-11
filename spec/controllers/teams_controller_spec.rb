require 'spec_helper'


describe TeamsController do

	describe "GET 'index'" do

	  describe "list teams" do
	    it "should list all teams" do
		  get :index 
		  response.should be_success
		end
	  end
	end

	describe "GET 'show'" do

      before(:each) do
      	@tournament = FactoryGirl.create(:tournament)
        @team = FactoryGirl.create(:team)
      end
#      before do
#        @team = Team.create(name: "Team One") 
#        visit team_path(@team)
#      end

	  describe "show individual team" do
	  	it "displays a team" do
	  	  get :show, :id => @team 
	  	  response.should be_success
	  	end
	  end
	end

	describe "GET 'new'" do

	  it "is successful" do
	  	get :new
	  end	  
	end
end
