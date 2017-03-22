class HikersController < ApplicationController
  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(params.require(:hiker).permit(:email, :password, :password_confirmation))
    @hiker.save
    redirect_to root_url, :notice => "Sign up!"
    # @hiker = Hiker.new(params[:hiker])
    # if @hiker.save
    #   redirect_to root_url, :notice => "Signed up!"
    # else
    #   render "new"
    # end
  end
end
