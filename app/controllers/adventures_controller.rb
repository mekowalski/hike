class AdventuresController < ApplicationController
  def index
    @hikers = Hiker.all
  end

  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.new(params.require(:adventure).permit(:hiker_id, :trek_id))
    @adventure.save
    redirect_to adventure_path(@adventure)
  end
end
