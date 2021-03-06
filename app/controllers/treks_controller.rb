class TreksController < ApplicationController
  def index
    @treks = Trek.all
  end

  def new
    @trek = Trek.new
    @trek.build_adventure
  end

  def create
    trek = current_hiker.treks.build(trek_params)
    trek.save
    redirect_to hiker_trek_path(current_hiker.id, trek.id)
  end

  def show
    @trek = Trek.find(params[:id])
  end

  private

  def trek_params
    params.require(:trek).permit(:name, :state, :elevation, :level, :adventure_id, :hiker_id, adventure_attributes: [:title])
  end
end
