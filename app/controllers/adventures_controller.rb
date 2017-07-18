class AdventuresController < ApplicationController
  before_action :login_required

  def index
    @adventures = current_hiker.adventures
    respond_to do |f|
      f.html
      f.json {render json: @adventures}
    end
  end

  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = Adventure.new(adventure_params)
    @adventure.save
    redirect_to adventures_path
  end

  def show
    @adventure = Adventure.find(params[:id])
    respond_to do |f|
      f.html
      f.json {render json: @adventure}
    end
  end

  private
    def adventure_params
      params.require(:adventure).permit(:title)
    end
end
