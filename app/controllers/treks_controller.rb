class TreksController < ApplicationController
  def index
    @treks = Trek.all
    respond_to do |f|
      f.html
      f.json {render json: @treks}
    end
  end

  def new
    @trek = Trek.new
    @trek.build_adventure
  end

  def create
    trek = current_hiker.treks.build(trek_params)
    trek.save
    render json: trek
  end

  def show
    @trek = Trek.find(params[:id])
    respond_to do |f|
      f.html
      f.json {render json: @trek}
    end
  end
  private

  def trek_params
    params.require(:trek).permit(:name, :state, :elevation, :level, :hiker_id, :adventure_selection, :adventure_name)
  end
end
