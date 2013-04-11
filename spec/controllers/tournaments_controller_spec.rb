require 'spec_helper'



describe TournamentsController do

  render_views
  
  describe "list all tournaments" do

	  describe "GET 'index'" do

      before(:each) do
        @tournament = FactoryGirl.create(:tournament)
      end

	    it "should list all tournaments" do
		    get :index
		    response.should be_success
#		  assigns(:tournaments).should_not be_nil 
		  end
	  end
  end

  describe "add a tournament" do

	  describe "GET 'new'" do

      before(:each) do
        @tournament = FactoryGirl.create(:tournament)
      end

	    it "redirects to tournaments new" do
	  	  get :new
		    response.should be_success
	  	  #response.should redirect_to(new_tournament_path)
	  	  response.should render_template('new')
	    end

      describe "adding a new tournament" do

        it "has a field for tournament name" do
          get :new
          response.should have_selector("input[name='tournament[name]'][type='text']")
        end

        it "has a field for number of teams" do
          get :new
          response.should have_selector("input[name='tournament[number_of_teams]'][type='text']")
        end
      end
	  end
  end

  describe "show individual tournaments" do

    before(:each) do
      @tournament = FactoryGirl.create(:tournament)
      Tournament.stub!(:find, @tournament.id).and_return(@tournament)
    end

#    it "shows a tournament" do
#      get :show, :id => @tournament
#      response.should be_success      
#    end

#    it "has a field to add team name" do
#      get :show, :id => @tournament
#      response.should redirect_to(teams_path)
#    end


  end
end
