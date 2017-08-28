class SessionsController < ApplicationController
  def new
  end

  def create
    hiker = Hiker.find_by(email: params[:email])
    if hiker && hiker.authenticate(params[:password])
      session[:hiker_id] = hiker.id
      redirect_to adventures_path, flash[:notice] => "You're signed up!"
    else
      hiker.nil? ? (flash[:error] = 'User not found') : (flash[:error] = 'Invalid password')
      render "new"
    end
  end

  def destroy
    session.delete(:hiker_id)
    redirect_to root_url :notice => "Signed out!"
  end
end
