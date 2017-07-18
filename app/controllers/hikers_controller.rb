class HikersController < ApplicationController
  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(hiker_params)
    if @hiker.save
      session[:hiker_id] = @hiker.id
      redirect_to adventures_path, flash[:notice] => "You're signed up!"
    else
      render "new"
    end
  end

  def show
    @hiker = Hiker.find(params[:id])
    @adventures = @hiker.adventures
  end

  private
    def hiker_params
      params.require(:hiker).permit(:name, :email, :password, :password_confirmation)
    end
end
