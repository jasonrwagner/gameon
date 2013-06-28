require 'spec_helper'



describe TournamentsController do

  render_views
      
  before(:each) do
    @tournament = FactoryGirl.create(:tournament)
  end
  
  describe "list all tournaments" do

	  describe "GET 'index'" do

	    it "should list all tournaments" do
		    get :index
		    response.should be_success 
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

  describe "show individual tournaments" do

    it "shows current tournament" do
      get :show, :id => @tournament.id
      response.should be_success      
    end


  end
end
