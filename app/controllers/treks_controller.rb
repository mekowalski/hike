class TreksController < ApplicationController
  def index
    @treks = Trek.all
  end

  def new
    @trek = Trek.new
  end

  def create
    @trek = Trek.new(trek_params)
    @trek.save
    redirect_to hiker_trek_path(current_hiker.id, trek.id)
  end

  def show
    @trek = Trek.find(params[:id])
  end

  private

  def trek_params
    params.require(:trek).permit(:name, :state, :elevation, :level, :adventure_id, :hiker_id, adventures_attributes: [:title], adventure_ids: [])
  end
end
