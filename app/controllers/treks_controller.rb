class TreksController < ApplicationController
  def new
    @trek = Trek.new
  end

  def create
    @trek = Trek.new(params.require(:trek).permit(:name, :state, :elevation, :level))
    @trek.save
    redirect_to trek_path(@trek)
  end

  def show
    @trek = Trek.find(params[:id])
  end
end
