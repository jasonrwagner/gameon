class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
  end

  def new
  	@tournament = Tournament.new
  end

  def create
  	@tournament = Tournament.new(params[:name])
	    if @tournament.save
  	    flash[:sucess] = "Made a new tournament"
  	    redirect_to @tournament
	    else
  	    render :new
	    end
  end
end


