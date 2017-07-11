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
    # first check if the select was used
    # params[adventure_attributes][name] blank
     # then we only care about adventure_id
    # if its fileld in
     # then don't care about adventure selection

    trek = current_hiker.treks.build(trek_params)
    trek.save
    redirect_to hiker_trek_path(current_hiker.id, trek.id)
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
