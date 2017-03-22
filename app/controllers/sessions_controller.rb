class SessionsController < ApplicationController
  def new
  end

  def create
    hiker = Hiker.find_by(email: params[:email])
    if hiker && hiker.authenticate(params[:password])
      session[:hiker_id] = hiker.id
      redirect_to root_url :notice => "You're signed in!"
    else
      render "new"
    end
    # auth = request.env['omniauth.auth']
    # hiker = Hiker.find_by_provider_and_uid(auth['provider'], auth['uid']) || Hiker.create_with_omniauth(auth)
    # session[:hiker_id] = hiker.id
    # redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session.delete(:hiker_id)
    redirect_to root_url :notice => "Signed out!"
  end
end
