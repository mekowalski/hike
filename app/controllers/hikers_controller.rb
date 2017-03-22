class HikersController < ApplicationController
  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(params.require(:hiker).permit(:name, :email, :password, :password_confirmation))
    if @hiker.save
      redirect_to root_url, :notice => "Sign up!"
    else
      render "new"
    end
  end
end
