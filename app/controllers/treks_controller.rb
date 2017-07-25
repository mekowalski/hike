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

  def create #create is returning url /adventures/8/treks/4, /adventures/9/treks/4
    #not sure why!!!? adv id is incrementing, not trek id
    @trek = Trek.new(trek_params)
    @trek.hiker = current_hiker
    @trek.save
    render json: @trek
    # redirect_to adventure_trek_path #not working, no route matches, missing required keys[:id]
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
    params.require(:trek).permit(:name, :state, :elevation, :level, :adventure_id, :adventure_selection, :adventure_name)
  end
end
