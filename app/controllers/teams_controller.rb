class TeamsController < ApplicationController

  def index
  	@team = Team.all
  end

  def show
  	@team = Team.find(params[:id])
  end

  def new
    @team = Team.new	
  end

  def create
  	@team = Team.new(params[:id])
	if @team.save
  	  flash[:success] = "Added Team"
  	  redirect_to @team
	else
  	  render :new
	end
  end
end
