class HikersController < ApplicationController
  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(params[:hiker])
    if @hiker.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
