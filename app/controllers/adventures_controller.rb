class AdventuresController < ApplicationController
  def index
    @adventures = Adventure.all
    respond_to do |f|
      f.html
      f.json {render json: @adventures}
    end
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
    @adventure = Adventure.find(params[:id])
    respond_to do |f|
      f.html
      f.json {render json: @adventure}
    end
  end
end
