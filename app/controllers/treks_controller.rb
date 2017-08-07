class TreksController < ApplicationController
  def index
    @treks = Trek.all
    respond_to do |f|
      f.html
      f.json {render json: @treks}
    end
  end

  def new
    @trek = Trek.new(adventure_id: params[:adventure_id])
  end

  def create
    @adventure = Adventure.find_by_id(params[:adventure_id])
    @trek = @adventure.treks.build(trek_params)
    @trek.hiker = current_hiker
    if @trek.save
      render json: @trek
    else
      redirect_to new_adventure_trek_path
    end
  end

  def show
    @trek = Trek.find(params[:id])
    # respond_to do |f|
    #   f.html
    #   f.json {render json: @trek}
    # end
  end
  private

  def trek_params
    params.require(:trek).permit(:name, :state, :elevation, :level, :adventure_id)
  end
end
