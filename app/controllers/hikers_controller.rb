class HikersController < ApplicationController
  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(params.require(:hiker).permit(:name, :email, :password, :password_confirmation))
    if @hiker.save
      session[:hiker_id] = hiker.id
      redirect_to root_url, :notice => "You're signed up!"
    else
      render "new"
    end
  end
end
