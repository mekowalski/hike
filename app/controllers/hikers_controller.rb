class HikersController < ApplicationController
  def new
    @hiker = Hiker.new
  end

  def create
    @hiker = Hiker.new(params.require(:hiker).permit(:name, :email, :password, :password_confirmation))
    if @hiker.save
      session[:hiker_id] = @hiker.id
      redirect_to adventures_url, :notice => "You're signed up!"
    else
      render "new"
    end
  end

  def show
    #from the user's homepage i want to be able to click on a link that says
    #'view all your adventures' and it will SHOW all the treks a hiker has created and done
    @hiker = Hiker.find(params[:id])
    @treks = @hiker.treks
  end
end
