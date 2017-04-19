class AdventuresController < ApplicationController
  def index
    @adventures = Adventure.all
  end

  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.new(params.require(:adventure).permit(:title))
    @adventure.save
    redirect_to hiker_adventure_path(current_hiker.id, @adventure.id)
  end

  def show
    # to show all the adventures of 1 hiker
    @adventures = Adventure.find(params[:id])
  end
end
