class HikersController < ApplicationController
  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(params.require(:hiker).permit(:name, :email, :password, :password_confirmation))
    if @hiker.save
      session[:hiker_id] = @hiker.id
      raise params.inspect
      
      redirect_to hiker_adventures_path(current_hiker.id), :notice => "You're signed up!"
    else
      render "new"
    end
  end

  def show
    @hiker = Hiker.find(params[:id])
    @adventures = @hiker.adventures
  end
end
